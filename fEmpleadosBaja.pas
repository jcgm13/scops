unit fEmpleadosBaja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinOffice2010Black, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxPC,
  Data.DB, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxStyles, cxCheckBox, cxVGrid, cxDBVGrid, cxInplaceContainer, cxCalendar,
  cxRadioGroup, cxDBLookupComboBox, cxCurrencyEdit, cxGroupBox, Vcl.Menus, cxButtons, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  cxImageComboBox, dxSkinDevExpressStyle, StrUtils, cxMaskEdit, cxDropDownEdit, cxMemo, cxLabel,
  dxSkinBlue, dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinOffice2013LightGray;

type
  TfrmEmpleadosBaja = class(TForm)
    Panel1: TPanel;
    vGridElementos: TcxDBVerticalGrid;
    vGridElementosDBEditorRow7: TcxDBEditorRow;
    Panel2: TPanel;
    xempleado_id: TcxDBTextEdit;
    xNombres: TcxDBTextEdit;
    xapellido_paterno: TcxDBTextEdit;
    xapellido_materno: TcxDBTextEdit;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ActionList1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    actExpandir: TAction;
    actContraer: TAction;
    vGridElementosDBEditorRow191: TcxDBEditorRow;
    vGridElementosDBEditorRow192: TcxDBEditorRow;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    lblBaja: TcxLabel;
    procedure actExpandirExecute(Sender: TObject);
    procedure actContraerExecute(Sender: TObject);
    procedure actCerrarExecute(Sender: TObject);
    procedure actGuardarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure xNombresKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function Validate : Boolean;
  public
    { Public declarations }
    ModoRegistro : integer;
  end;

var
  frmEmpleadosBaja: TfrmEmpleadosBaja;

implementation

{$R *.dfm}

uses dMain, fPrincipal;

procedure TfrmEmpleadosBaja.actCerrarExecute(Sender: TObject);
begin
     if dmMain.dsEmpleadosEdit.DataSet.State in [dsInsert, dsEdit] then
        dmMain.dsEmpleadosEdit.DataSet.Cancel;
     ModalResult := mrCancel;
end;

procedure TfrmEmpleadosBaja.actContraerExecute(Sender: TObject);
begin
     vGridElementos.FullCollapse;
end;

procedure TfrmEmpleadosBaja.actExpandirExecute(Sender: TObject);
begin
     vGridElementos.FullExpand;
end;

procedure TfrmEmpleadosBaja.actGuardarExecute(Sender: TObject);
begin
     if dmMain.dsEmpleadosEdit.DataSet.State in [dsInsert, dsEdit] then
        if Validate then
           begin
                dmMain.dsEmpleadosEdit.DataSet.Post;
                ModalResult := mrOk;
           end;
end;

procedure TfrmEmpleadosBaja.FormCreate(Sender: TObject);
begin
     dmMain.qryEmpleadosEdit.Open;
     vGridElementos.FullExpand;
end;

procedure TfrmEmpleadosBaja.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then
        if dmMain.dsEmpleadosEdit.DataSet.State = dsBrowse then
           actCerrar.Execute;
end;

procedure TfrmEmpleadosBaja.FormShow(Sender: TObject);
begin
     Caption := 'Baja Empleados';

     dmMain.dsEmpleadosEdit.DataSet.FieldByName('activo').AsString := '0';

     lblBaja.Visible    := dmMain.dsEmpleadosEdit.DataSet.FieldByName('servicio_id').AsString <> ' SP01';

     actGuardar.Enabled                     := (dmMain.dsEmpleadosEdit.DataSet.State in [dsInsert, dsEdit]) and
                                               (dmMain.dsEmpleadosEdit.DataSet.FieldByName('servicio_id').AsString = ' SP01');
     xNombres.Enabled                       := False;
     xapellido_paterno.Enabled              := False;
     xapellido_materno.Enabled              := False;
     vGridElementos.OptionsData.Editing     := True;

     vGridElementos.LookAndFeel.NativeStyle := dmMain.dsEmpleadosEdit.DataSet.State in [dsBrowse];
end;

function TfrmEmpleadosBaja.Validate: Boolean;
var
   msg : string;
begin
     {
     if Trim(xNombres.Text) = '' then
        msg := '- Debe capturar el Nombre';
     if Trim(xapellido_paterno.Text) = '' then
        msg := msg + ifthen(Trim(msg)<>'',#13#10+'- Debe capturar el Apellido Paterno','- Debe capturar el Apellido Paterno');
     }

     Result := Trim(msg)='';

     if Trim(msg)<>'' then
        MessageDlg(msg,mtError,[mbOK],0);
end;

procedure TfrmEmpleadosBaja.xNombresKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

end.

unit fEmpleadosReingreso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinOffice2010Black, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxPC,
  Data.DB, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxStyles, cxCheckBox, cxVGrid, cxDBVGrid, cxInplaceContainer, cxCalendar,
  cxRadioGroup, cxDBLookupComboBox, cxCurrencyEdit, cxGroupBox, Vcl.Menus, cxButtons, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  cxImageComboBox, dxSkinDevExpressStyle, StrUtils, cxMaskEdit, cxDropDownEdit, cxMemo, cxLabel, System.Actions, dxBevel,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinOffice2016Colorful, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinOffice2013DarkGray;

type
  TfrmEmpleadosReingreso = class(TForm)
    Panel1: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ActionList1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    actExpandir: TAction;
    actContraer: TAction;
    Label1: TcxLabel;
    Label2: TcxLabel;
    lblNombre: TcxLabel;
    lblId: TcxLabel;
    C: TcxLabel;
    lblServicio: TcxLabel;
    dxBevel1: TdxBevel;
    xfecha_reingreso: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    xobservaciones: TcxMemo;
    cxGridBitacora: TcxGrid;
    cxGridBitacoraDBBandedTableViewBitacora: TcxGridDBBandedTableView;
    cxGridBitacoraDBBandedTableViewBitacoraColumn1: TcxGridDBBandedColumn;
    cxGridBitacoraDBBandedTableViewBitacoraColumn2: TcxGridDBBandedColumn;
    cxGridBitacoraDBBandedTableViewBitacoraColumn3: TcxGridDBBandedColumn;
    cxGridBitacoraLevel1: TcxGridLevel;
    procedure actCerrarExecute(Sender: TObject);
    procedure actGuardarExecute(Sender: TObject);
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
  frmEmpleadosReingreso: TfrmEmpleadosReingreso;

implementation

{$R *.dfm}

uses dMain, fPrincipal, uGlobales;

procedure TfrmEmpleadosReingreso.actCerrarExecute(Sender: TObject);
begin
     ModalResult := mrCancel;
end;

procedure TfrmEmpleadosReingreso.actGuardarExecute(Sender: TObject);
begin
     if Validate then
        begin
             dmMain.ReingresoEmpleado(_Globales.Empresa, StrToInt(lblId.Caption), xfecha_reingreso.Date, xobservaciones.Text);
             ModalResult := mrOk;
        end;
end;

procedure TfrmEmpleadosReingreso.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

procedure TfrmEmpleadosReingreso.FormShow(Sender: TObject);
begin
     Caption := 'Reingreso Empleados';
     xfecha_reingreso.Date := Now;
     cxGridBitacoraDBBandedTableViewBitacora.DataController.DataSource := dmMain.dsBitacoraEmpleado;
end;

function TfrmEmpleadosReingreso.Validate: Boolean;
var
   msg : string;
begin
     msg := '';
     if Trim(xfecha_reingreso.Text) = '' then
        msg := '- Debe capturar la fecha de reingreso';
     if Trim(xobservaciones.Text) = '' then
        msg := msg + ifthen(Trim(msg)<>'',#13#10,'') + '- Debe capturar las observaciones del reingreso';

     Result := Trim(msg)='';

     if Trim(msg)<>'' then
        MessageDlg(msg,mtError,[mbOK],0);
end;

procedure TfrmEmpleadosReingreso.xNombresKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

end.

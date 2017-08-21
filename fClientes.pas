unit fClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxSkinsCore, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit, cxDBLookupComboBox,
  cxCalendar, cxCheckBox, cxImageComboBox, cxRadioGroup, cxTextEdit, cxCurrencyEdit, cxContainer, Vcl.Menus, Data.DB, Vcl.ActnList,
  Vcl.StdCtrls, cxButtons, cxGroupBox, cxDBEdit, Vcl.ExtCtrls, cxVGrid, cxDBVGrid, cxInplaceContainer, cxHyperLinkEdit, StrUtils,
  cxMaskEdit, cxDropDownEdit, cxMemo, cxLabel, dxSkinscxPCPainter, dxBarBuiltInMenu, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxPC, dxSkinOffice2016Colorful, System.Actions, dxSkinOffice2013DarkGray;

type
  TfrmClientes = class(TForm)
    Panel2: TPanel;
    xcliente_id: TcxDBTextEdit;
    xdescripcion: TcxDBTextEdit;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ActionList1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    actExpandir: TAction;
    actContraer: TAction;
    cxDBImageComboBox1: TcxDBImageComboBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    vGridClientes: TcxDBVerticalGrid;
    vGridClientesCategoryRow1: TcxCategoryRow;
    vGridClientesDBEditorRow5: TcxDBEditorRow;
    vGridClientesDBEditorRow1: TcxDBEditorRow;
    vGridClientesDBEditorRow4: TcxDBEditorRow;
    vGridClientesDBEditorRow2: TcxDBEditorRow;
    vGridClientesDBEditorRow3: TcxDBEditorRow;
    vGridClientesDBEditorRow6: TcxDBEditorRow;
    vGridClientesDBEditorRow7: TcxDBEditorRow;
    vGridClientesDBEditorRow8: TcxDBEditorRow;
    vGridClientesDBEditorRow9: TcxDBEditorRow;
    vGridClientesDBEditorRow10: TcxDBEditorRow;
    vGridClientesDBEditorRow11: TcxDBEditorRow;
    vGridClientesDBEditorRow12: TcxDBEditorRow;
    vGridClientesDBEditorRow13: TcxDBEditorRow;
    vGridClientesCategoryRow2: TcxCategoryRow;
    vGridClientesDBEditorRow14: TcxDBEditorRow;
    vGridClientesDBEditorRow15: TcxDBEditorRow;
    vGridClientesDBEditorRow18: TcxDBEditorRow;
    vGridClientesDBEditorRow17: TcxDBEditorRow;
    vGridClientesCategoryRow3: TcxCategoryRow;
    vGridClientesDBEditorRow19: TcxDBEditorRow;
    vGridClientesDBEditorRow20: TcxDBEditorRow;
    vGridClientesDBEditorRow21: TcxDBEditorRow;
    vGridClientesDBEditorRow23: TcxDBEditorRow;
    vGridClientesCategoryRow4: TcxCategoryRow;
    vGridClientesDBEditorRow16: TcxDBEditorRow;
    vGridClientesDBEditorRow22: TcxDBEditorRow;
    vGridClientesDBEditorRow24: TcxDBEditorRow;
    vGridClientesDBEditorRow25: TcxDBEditorRow;
    vGridClientesCategoryRow5: TcxCategoryRow;
    vGridClientesDBEditorRow26: TcxDBEditorRow;
    vGridClientesDBEditorRow27: TcxDBEditorRow;
    vGridClientesDBEditorRow28: TcxDBEditorRow;
    vGridClientesDBEditorRow29: TcxDBEditorRow;
    vGridClientesDBEditorRow32: TcxDBEditorRow;
    vGridClientesDBEditorRow31: TcxDBEditorRow;
    vGridClientesDBEditorRow30: TcxDBEditorRow;
    vGridClientesCategoryRow6: TcxCategoryRow;
    vGridClientesDBEditorRow33: TcxDBEditorRow;
    vGridClientesDBEditorRow34: TcxDBEditorRow;
    vGridClientesDBEditorRow35: TcxDBEditorRow;
    vGridClientesDBEditorRow36: TcxDBEditorRow;
    vGridClientesDBEditorRow45: TcxDBEditorRow;
    vGridClientesDBEditorRow44: TcxDBEditorRow;
    vGridClientesDBEditorRow43: TcxDBEditorRow;
    vGridClientesDBEditorRow42: TcxDBEditorRow;
    vGridClientesDBEditorRow41: TcxDBEditorRow;
    vGridClientesDBEditorRow40: TcxDBEditorRow;
    vGridClientesDBEditorRow39: TcxDBEditorRow;
    vGridClientesDBEditorRow38: TcxDBEditorRow;
    vGridClientesDBEditorRow37: TcxDBEditorRow;
    vGridClientesDBEditorRow46: TcxDBEditorRow;
    actAgregarServicio: TAction;
    actModificarServicio: TAction;
    actEliminarServicio: TAction;
    actConsultarServicio: TAction;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    pnl1: TPanel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton15: TcxButton;
    procedure actGuardarExecute(Sender: TObject);
    procedure xdescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure actCerrarExecute(Sender: TObject);
    procedure actExpandirExecute(Sender: TObject);
    procedure actContraerExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxDBImageComboBox1Enter(Sender: TObject);
    procedure cxPageControl1PageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
  private
    { Private declarations }
    function Validate : Boolean;
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses dMain, fPrincipal, uGlobales;

procedure TfrmClientes.actCerrarExecute(Sender: TObject);
begin
     if dmMain.dsClientesEdit.DataSet.State in [dsInsert, dsEdit] then
        dmMain.dsClientesEdit.DataSet.Cancel;
     ModalResult := mrCancel;
end;

procedure TfrmClientes.actContraerExecute(Sender: TObject);
begin
     vGridClientes.FullCollapse;
end;

procedure TfrmClientes.actExpandirExecute(Sender: TObject);
begin
     vGridClientes.FullExpand;
end;

procedure TfrmClientes.actGuardarExecute(Sender: TObject);
begin
     if dmMain.dsClientesEdit.DataSet.State in [dsInsert, dsEdit] then
        if Validate then
           begin
                dmMain.dsClientesEdit.DataSet.Post;
                ModalResult := mrOk;
           end;
end;

procedure TfrmClientes.cxDBImageComboBox1Enter(Sender: TObject);
begin
     SelectNext(ActiveControl,True,True)
end;

procedure TfrmClientes.cxPageControl1PageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
     actExpandir.Visible := NewPage.PageIndex = 0;
     actContraer.Visible := NewPage.PageIndex = 0;
end;

procedure TfrmClientes.FormCreate(Sender: TObject);
begin
     dmMain.qryClientesEdit.Open;
     vGridClientes.FullExpand;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
     if dmMain.dsClientesEdit.DataSet.State = dsInsert then
        Caption := 'Clientes (nuevo)';
     if dmMain.dsClientesEdit.DataSet.State = dsEdit then
        Caption := 'Clientes (modificar)';
     if dmMain.dsClientesEdit.DataSet.State = dsBrowse then
        Caption := 'Clientes (consultar)';

     if dmMain.dsClientesEdit.DataSet.State in [dsEdit,dsBrowse] then
        dmMain.CargaServiciosCliente(_Globales.Empresa,xcliente_id.Text);

     actGuardar.Enabled                := dmMain.dsClientesEdit.DataSet.State in [dsInsert, dsEdit];
     actGuardar.Visible                := dmMain.dsClientesEdit.DataSet.State in [dsInsert, dsEdit];
     xcliente_id.Enabled               := dmMain.dsClientesEdit.DataSet.State in [dsInsert];
     xdescripcion.Enabled              := dmMain.dsClientesEdit.DataSet.State in [dsInsert, dsEdit];
     vGridClientes.OptionsData.Editing := dmMain.dsClientesEdit.DataSet.State in [dsInsert, dsEdit];

     vGridClientes.LookAndFeel.NativeStyle := dmMain.dsClientesEdit.DataSet.State in [dsBrowse];
end;

function TfrmClientes.Validate: Boolean;
var
   msg : string;
begin
     msg := '';
     if Trim(xcliente_id.Text) = '' then
        msg := msg + ifthen(Trim(msg)<>'',#13#10+'- Debe capturar la clave del Cliente','- Debe capturar la clave del Cliente')
     else
         if dmMain.dsClientesEdit.State = dsInsert then
            if dmMain.ExisteClienteId(_Globales.Empresa, xcliente_id.Text) then
               msg := msg + ifthen(Trim(msg)<>'',#13#10+'- La clave del cliente ya existe','- La clave del cliente ya existe');
     if Trim(xdescripcion.Text) = '' then
        msg := msg + ifthen(Trim(msg)<>'',#13#10+'- Debe capturar la Descripción','- Debe capturar la Descripción');

     Result := Trim(msg)='';

     if Trim(msg)<>'' then
        MessageDlg(msg,mtError,[mbOK],0);
end;

procedure TfrmClientes.xdescripcionKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

end.

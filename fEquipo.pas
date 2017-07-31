unit fEquipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinDevExpressStyle, cxControls, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit,
  cxTextEdit, cxLabel, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Vcl.ActnList, db, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxMemo, dxSkinBlue, dxSkinOffice2007Silver, dxSkinOffice2010Silver,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, System.Actions;

type
  TfrmEquipo = class(TForm)
    ActionList1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    Panel1: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Label1: TcxLabel;
    xequipo_id: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel20: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxLabel192: TcxLabel;
    cxLabel72: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxLabel15: TcxLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxLabel16: TcxLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxLabel84: TcxLabel;
    cxDBMemo2: TcxDBMemo;
    xActivo: TcxDBImageComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actGuardarExecute(Sender: TObject);
    procedure actCerrarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitarControles(habilitar : Boolean);
  public
    { Public declarations }
  end;

var
  frmEquipo: TfrmEquipo;

implementation

uses
  dMain, fPrincipal, uGlobales;

{$R *.dfm}

procedure TfrmEquipo.actCerrarExecute(Sender: TObject);
begin
     if dmMain.dsEquipoEdit.DataSet.State in [dsInsert, dsEdit] then
        dmMain.dsEquipoEdit.DataSet.Cancel;
     ModalResult := mrCancel;
end;

procedure TfrmEquipo.actGuardarExecute(Sender: TObject);
begin
     if dmMain.dsEquipoEdit.DataSet.State in [dsInsert, dsEdit] then
        begin
             dmMain.dsEquipoEdit.DataSet.Post;
             ModalResult := mrOk;
        end;
end;

procedure TfrmEquipo.FormCreate(Sender: TObject);
begin
     dmMain.qryEquipoEdit.Open;
end;

procedure TfrmEquipo.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

procedure TfrmEquipo.FormShow(Sender: TObject);
begin
     if dmMain.dsEquipoEdit.DataSet.State = dsInsert then
        Caption := 'Equipo (nuevo)';
     if dmMain.dsEquipoEdit.DataSet.State = dsEdit then
        Caption := 'Equipo (modificar)';
     if dmMain.dsEquipoEdit.DataSet.State = dsBrowse then
        Caption := 'Equipo (consultar)';

     HabilitarControles(dmMain.dsEquipoEdit.DataSet.State in [dsInsert, dsEdit]);

     xActivo.Enabled := dmMain.dsEquipoEdit.DataSet.State = dsEdit;

     actGuardar.Enabled := dmMain.dsEquipoEdit.DataSet.State in [dsInsert, dsEdit];
     actGuardar.Visible := dmMain.dsEquipoEdit.DataSet.State in [dsInsert, dsEdit];
end;

procedure TfrmEquipo.HabilitarControles(habilitar: Boolean);
var
   c : Integer;
begin
     for c := 0 to Self.ControlCount - 1 do
         if not(Self.Controls[c] is TcxLabel) and (Self.Controls[c].Tag = 0) then
            Self.Controls[c].Enabled := habilitar;
end;

end.

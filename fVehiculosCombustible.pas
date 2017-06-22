unit fVehiculosCombustible;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinDevExpressStyle, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Vcl.ActnList, cxControls,
  cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxImageComboBox, cxCurrencyEdit, db;

type
  TfrmVehiculosCombustible = class(TForm)
    ActionList1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    Panel1: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edMarca: TcxTextEdit;
    edModelo: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    edColor: TcxTextEdit;
    xvehiculo: TcxDBTextEdit;
    cxLabel100: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel185: TcxLabel;
    cxDBDateEdit23: TcxDBDateEdit;
    cxLabel62: TcxLabel;
    cxCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxTextEdit1: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure actCerrarExecute(Sender: TObject);
    procedure actGuardarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FVehiculoId: integer;
    procedure SetVehiculoId(const Value: integer);
    procedure HabilitarControles(habilitar : Boolean);
    { Private declarations }
  public
    { Public declarations }
    property VehiculoId : integer read FVehiculoId write SetVehiculoId;
  end;

var
  frmVehiculosCombustible: TfrmVehiculosCombustible;

implementation

uses
  dMain, fPrincipal, uGlobales, fVehiculosReparaciones;

{$R *.dfm}

procedure TfrmVehiculosCombustible.actCerrarExecute(Sender: TObject);
begin
     if dmMain.dsVehiculosCombustibleEdit.DataSet.State in [dsInsert, dsEdit] then
        dmMain.dsVehiculosCombustibleEdit.DataSet.Cancel;
     ModalResult := mrCancel;
end;

procedure TfrmVehiculosCombustible.actGuardarExecute(Sender: TObject);
begin
     if dmMain.dsVehiculosCombustibleEdit.DataSet.State in [dsInsert, dsEdit] then
        begin
             dmMain.dsVehiculosCombustibleEdit.DataSet.Post;
             ModalResult := mrOk;
        end;
end;

procedure TfrmVehiculosCombustible.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     frmVehiculosCombustible := Nil;
end;

procedure TfrmVehiculosCombustible.FormCreate(Sender: TObject);
begin
     dmMain.qryVehiculosCombustibleEdit.Open;
end;

procedure TfrmVehiculosCombustible.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

procedure TfrmVehiculosCombustible.FormShow(Sender: TObject);
var
   infov : TInfoVehiculo;
begin
     infov := dmMain.CargaInfoVehiculo(_Globales.Empresa,FVehiculoId);
     edMarca.Text  := infov.Marca;
     edModelo.Text := infov.Modelo;
     edColor.Text  := infov.Color;

     if dmMain.dsVehiculosCombustibleEdit.DataSet.State = dsInsert then
        Caption := 'Combustible (nuevo)';
     if dmMain.dsVehiculosCombustibleEdit.DataSet.State = dsEdit then
        Caption := 'Combustible (modificar)';
     if dmMain.dsVehiculosCombustibleEdit.DataSet.State = dsBrowse then
        Caption := 'Combustible (consultar)';

     HabilitarControles(dmMain.dsVehiculosCombustibleEdit.DataSet.State in [dsInsert, dsEdit]);

     actGuardar.Enabled := dmMain.dsVehiculosCombustibleEdit.DataSet.State in [dsInsert, dsEdit];
     actGuardar.Visible := dmMain.dsVehiculosCombustibleEdit.DataSet.State in [dsInsert, dsEdit];
end;

procedure TfrmVehiculosCombustible.HabilitarControles(habilitar: Boolean);
var
   c : Integer;
begin
     for c := 0 to Self.ControlCount - 1 do
         if not(Self.Controls[c] is TcxLabel) and (Self.Controls[c].Tag = 0) then
            Self.Controls[c].Enabled := habilitar;
end;

procedure TfrmVehiculosCombustible.SetVehiculoId(const Value: integer);
begin
     FVehiculoId := Value;
end;

end.

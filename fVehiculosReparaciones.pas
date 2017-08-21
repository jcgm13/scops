unit fVehiculosReparaciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Vcl.ActnList, cxControls, cxContainer, cxEdit, cxDBEdit,
  cxTextEdit, cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar, cxImageComboBox, cxCurrencyEdit, db, cxMemo,
  dxSkinOffice2016Colorful, System.Actions, dxSkinOffice2013DarkGray;

type
  TfrmVehiculosReparaciones = class(TForm)
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
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxTextEdit1: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxLabel7: TcxLabel;
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
  frmVehiculosReparaciones: TfrmVehiculosReparaciones;

implementation

uses
  dMain, fPrincipal, uGlobales;

{$R *.dfm}

procedure TfrmVehiculosReparaciones.actCerrarExecute(Sender: TObject);
begin
     if dmMain.dsVehiculosReparacionesEdit.DataSet.State in [dsInsert, dsEdit] then
        dmMain.dsVehiculosReparacionesEdit.DataSet.Cancel;
     ModalResult := mrCancel;
end;

procedure TfrmVehiculosReparaciones.actGuardarExecute(Sender: TObject);
begin
     if dmMain.dsVehiculosReparacionesEdit.DataSet.State in [dsInsert, dsEdit] then
        begin
             dmMain.dsVehiculosReparacionesEdit.DataSet.Post;
             ModalResult := mrOk;
        end;
end;

procedure TfrmVehiculosReparaciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     frmVehiculosReparaciones := Nil;
end;

procedure TfrmVehiculosReparaciones.FormCreate(Sender: TObject);
begin
     dmMain.qryVehiculosReparacionesEdit.Open;
end;

procedure TfrmVehiculosReparaciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

procedure TfrmVehiculosReparaciones.FormShow(Sender: TObject);
var
   infov : TInfoVehiculo;
begin
     infov := dmMain.CargaInfoVehiculo(_Globales.Empresa,FVehiculoId);
     edMarca.Text  := infov.Marca;
     edModelo.Text := infov.Modelo;
     edColor.Text  := infov.Color;

     if dmMain.dsVehiculosReparacionesEdit.DataSet.State = dsInsert then
        Caption := 'Reparación (nuevo)';
     if dmMain.dsVehiculosReparacionesEdit.DataSet.State = dsEdit then
        Caption := 'Reparación (modificar)';
     if dmMain.dsVehiculosReparacionesEdit.DataSet.State = dsBrowse then
        Caption := 'Reparación (consultar)';

     HabilitarControles(dmMain.dsVehiculosReparacionesEdit.DataSet.State in [dsInsert, dsEdit]);

     actGuardar.Enabled := dmMain.dsVehiculosReparacionesEdit.DataSet.State in [dsInsert, dsEdit];
     actGuardar.Visible := dmMain.dsVehiculosReparacionesEdit.DataSet.State in [dsInsert, dsEdit];
end;

procedure TfrmVehiculosReparaciones.HabilitarControles(habilitar: Boolean);
var
   c : Integer;
begin
     for c := 0 to Self.ControlCount - 1 do
         if not(Self.Controls[c] is TcxLabel) and (Self.Controls[c].Tag = 0) then
            Self.Controls[c].Enabled := habilitar;
end;

procedure TfrmVehiculosReparaciones.SetVehiculoId(const Value: integer);
begin
     FVehiculoId := Value;
end;

end.

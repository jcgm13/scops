unit fEmpleadosBaja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,  Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxSkinsCore, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinscxPCPainter, dxBarBuiltInMenu,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxPC, Data.DB, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxStyles, cxCheckBox,
  cxVGrid, cxDBVGrid, cxInplaceContainer, cxCalendar, cxRadioGroup, cxDBLookupComboBox, cxCurrencyEdit, cxGroupBox, Vcl.Menus,
  cxButtons, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, cxImageComboBox, StrUtils, cxMaskEdit, cxDropDownEdit, cxMemo, cxLabel,
  System.Actions, dxBevel, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinOffice2016Colorful, dxSkinOffice2013DarkGray;

type
  TfrmEmpleadosBaja = class(TForm)
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
    xfecha_baja: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    xmotivobaja: TcxImageComboBox;
    cxLabel3: TcxLabel;
    xobservaciones: TcxMemo;
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
  frmEmpleadosBaja: TfrmEmpleadosBaja;

implementation

{$R *.dfm}

uses dMain, fPrincipal, uGlobales;

procedure TfrmEmpleadosBaja.actCerrarExecute(Sender: TObject);
begin
     ModalResult := mrCancel;
end;

procedure TfrmEmpleadosBaja.actGuardarExecute(Sender: TObject);
begin
     if Validate then
        begin
             dmMain.BajaEmpleado(_Globales.Empresa, StrToInt(lblId.Caption), xfecha_baja.Date, xobservaciones.Text);
             ModalResult := mrOk;
        end;
end;

procedure TfrmEmpleadosBaja.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

procedure TfrmEmpleadosBaja.FormShow(Sender: TObject);
begin
     Caption := 'Baja Empleados';
     xfecha_baja.Date := Now;
end;

function TfrmEmpleadosBaja.Validate: Boolean;
var
   msg : string;
begin
     msg := '';
     if Trim(xfecha_baja.Text) = '' then
        msg := '- Debe capturar la fecha de baja';
     if Trim(xmotivobaja.Text) = '' then
        msg := msg + ifthen(Trim(msg)<>'',#13#10,'') + '- Debe indicar el motivo de baja';
     if Trim(xobservaciones.Text) = '' then
        msg := msg + ifthen(Trim(msg)<>'',#13#10,'') + '- Debe capturar las observaciones de la baja';

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

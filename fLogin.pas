unit fLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, Vcl.ActnList, Vcl.StdCtrls, cxButtons, cxTextEdit, Vcl.ExtCtrls, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, System.Actions;

type
  TfrmLogin = class(TForm)
    ActionList1: TActionList;
    actAceptar: TAction;
    actCerrar: TAction;
    Panel1: TPanel;
    Panel2: TPanel;
    lblError: TLabel;
    xUsuario: TcxTextEdit;
    xPassword: TcxTextEdit;
    cbEmpresas: TcxLookupComboBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Panel3: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Bevel1: TBevel;
    lblVersion: TcxLabel;
    procedure actCerrarExecute(Sender: TObject);
    procedure actAceptarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure xUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses fPrincipal, dMain, uGlobales;

procedure TfrmLogin.actCerrarExecute(Sender: TObject);
begin
     ModalResult := mrCancel;
end;

procedure TfrmLogin.actAceptarExecute(Sender: TObject);
begin
     if Trim(cbEmpresas.Text) = '' then
        begin
             MessageDlg('Debe seleccionar la empresa de trabajo', mtError, [mbOK], 0);
             cbEmpresas.SetFocus;
             Exit;
        end;

     if dmMain.ValidaUsuario(xUsuario.Text, xPassword.Text) then
        begin
             _Globales.Usuario := xUsuario.Text;
             _Globales.Empresa := cbEmpresas.EditValue;
             _Globales.EmpresaDescripcion := cbEmpresas.Text;
             ModalResult := mrOk;
        end
     else
         begin
              lblError.Visible := True;
              xUsuario.SetFocus;
         end;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
     lblVersion.Caption := 'versión ' + _VERSION;
end;

procedure TfrmLogin.xUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
     if lblError.Visible then
        lblError.Visible := False;
end;

end.

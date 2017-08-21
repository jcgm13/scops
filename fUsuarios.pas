unit fUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2016Colorful, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxDBEdit, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, System.StrUtils, db;

type
  TfrmUsuarios = class(TForm)
    actlst1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    pnl1: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    xusuario: TcxDBTextEdit;
    xpassword: TcxDBTextEdit;
    Label1: TcxLabel;
    Label2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure actCerrarExecute(Sender: TObject);
    procedure actGuardarExecute(Sender: TObject);
  private
    { Private declarations }
    function Validate : Boolean;
    procedure HabilitarControles(habilitar : Boolean);
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

uses
  dMain, fPrincipal;

{$R *.dfm}

procedure TfrmUsuarios.actCerrarExecute(Sender: TObject);
begin
     if dmMain.dsUsuariosEdit.DataSet.State in [dsInsert, dsEdit] then
        dmMain.dsUsuariosEdit.DataSet.Cancel;
     ModalResult := mrCancel;
end;

procedure TfrmUsuarios.actGuardarExecute(Sender: TObject);
begin
     if Validate then
        if dmMain.dsUsuariosEdit.DataSet.State in [dsInsert, dsEdit] then
           begin
                dmMain.dsUsuariosEdit.DataSet.Post;
                ModalResult := mrOk;
           end;
end;

procedure TfrmUsuarios.FormCreate(Sender: TObject);
begin
     dmMain.qryUsuariosEdit.Open;
end;

procedure TfrmUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

procedure TfrmUsuarios.FormShow(Sender: TObject);
begin
     if dmMain.dsUsuariosEdit.DataSet.State = dsInsert then
        Caption := 'Usuarios (nuevo)';
     if dmMain.dsUsuariosEdit.DataSet.State = dsEdit then
        Caption := 'Usuarios (modificar)';
     if dmMain.dsUsuariosEdit.DataSet.State = dsBrowse then
        Caption := 'Usuarios (consultar)';

     actGuardar.Enabled := dmMain.dsUsuariosEdit.DataSet.State in [dsInsert, dsEdit];
     actGuardar.Visible := dmMain.dsUsuariosEdit.DataSet.State in [dsInsert, dsEdit];

     HabilitarControles(dmMain.dsUsuariosEdit.DataSet.State in [dsInsert, dsEdit]);
     xusuario.Enabled := dmMain.dsUsuariosEdit.DataSet.State in [dsInsert];
end;

procedure TfrmUsuarios.HabilitarControles(habilitar: Boolean);
var
   i : Integer;
begin
     for i := 0 to ControlCount - 1 do
         if (Controls[i].Tag = 0) and (not(Controls[i] is TcxLabel)) then
            Controls[i].Enabled := habilitar;
end;

function TfrmUsuarios.Validate: Boolean;
var
   msg : string;
begin
     if Trim(xusuario.Text) = '' then
        msg := '- Debe capturar el Usuario';
     if Trim(xpassword.Text) = '' then
        msg := msg + ifthen(Trim(msg)<>'',#13#10+'- Debe capturar la Contraseña','- Debe capturar la Contraseña');

     Result := Trim(msg)='';

     if Trim(msg)<>'' then
        MessageDlg(msg,mtError,[mbOK],0)
     else
         if dmMain.dsUsuariosEdit.DataSet.State = dsInsert then
            begin
                 msg := Trim(xusuario.Text);
                 if dmMain.ExisteUsuario(msg) then
                    begin
                         msg := 'El usuario ' + msg + #13 + #10 + 'ya se encuentra registrado en el sistema';
                         MessageDlg(msg,mtError,[mbOK],0);
                         Result := False;
                    end;
            end;
end;

end.

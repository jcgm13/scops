unit fServiciosFunciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxSpinEdit, cxTimeEdit, cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxLabel, math, StrUtils, db, dxSkinOffice2016Colorful, System.Actions,
  dxSkinOffice2013DarkGray;

type
  TfrmServiciosFunciones = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ActionList1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    cbTipo: TcxDBLookupComboBox;
    cbHorario: TcxDBLookupComboBox;
    chkTodos: TcxCheckBox;
    teTodosE: TcxTimeEdit;
    teTodosS: TcxTimeEdit;
    chk1: TcxDBCheckBox;
    chk2: TcxDBCheckBox;
    chk4: TcxDBCheckBox;
    chk3: TcxDBCheckBox;
    chk5: TcxDBCheckBox;
    chk7: TcxDBCheckBox;
    chk6: TcxDBCheckBox;
    teLunesE: TcxDBTimeEdit;
    teLunesS: TcxDBTimeEdit;
    teMartesE: TcxDBTimeEdit;
    teMartesS: TcxDBTimeEdit;
    teJuevesE: TcxDBTimeEdit;
    teJuevesS: TcxDBTimeEdit;
    teMiercolesE: TcxDBTimeEdit;
    teMiercolesS: TcxDBTimeEdit;
    teViernesE: TcxDBTimeEdit;
    teViernesS: TcxDBTimeEdit;
    teDomingoE: TcxDBTimeEdit;
    teDomingoS: TcxDBTimeEdit;
    teSabadoE: TcxDBTimeEdit;
    teSabadoS: TcxDBTimeEdit;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Label4: TcxLabel;
    Shape1: TShape;
    procedure FormCreate(Sender: TObject);
    procedure actCerrarExecute(Sender: TObject);
    procedure actGuardarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure chk4Click(Sender: TObject);
    procedure chk5Click(Sender: TObject);
    procedure chk6Click(Sender: TObject);
    procedure chk7Click(Sender: TObject);
    procedure chkTodosClick(Sender: TObject);
    procedure teTodosEPropertiesEditValueChanged(Sender: TObject);
    procedure teTodosSPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    cargado : Boolean;
    function Validate : Boolean;
    procedure EvaluaChecks;
    procedure HabilitaControles(valor : Boolean);
  public
    { Public declarations }
  end;

var
  frmServiciosFunciones: TfrmServiciosFunciones;

implementation

{$R *.dfm}

uses fPrincipal, dMain;

procedure TfrmServiciosFunciones.actCerrarExecute(Sender: TObject);
begin
     dmMain.dsServiciosFuncionesEdit.DataSet.Cancel;
     ModalResult := mrCancel;
end;

procedure TfrmServiciosFunciones.actGuardarExecute(Sender: TObject);
var
   i, n : Integer;
   servicio : string;
   empresa, funcion : Integer;
begin
     if not Validate then
        Exit
     else
         begin
              try
                 try
                   n := dmMain.dsHorarios.DataSet.FieldByName('empleados_requeridos').AsInteger;
                   servicio := dmMain.dsServiciosFuncionesEdit.DataSet.FieldByName('servicio_id').AsString;
                   empresa := dmMain.dsServiciosFuncionesEdit.DataSet.FieldByName('empresa_id').AsInteger;
                   funcion := dmMain.dsServiciosFuncionesEdit.DataSet.FieldByName('funcion_id').AsInteger;

                   dmMain.ZConnection1.StartTransaction;
                   dmMain.dsServiciosFuncionesEdit.DataSet.Post;

                   dmMain.qryServiciosFuncionesEmpleadosEdit.Active := True;
                   for i := 0 to n-1 do
                       with dmMain.dsServiciosFuncionesEmpleadosEdit.DataSet do
                            if not dmMain.ExisteServicioFuncion(servicio, empresa, funcion, i+1) then
                               begin
                                    Append;
                                    FieldByName('servicio_id').AsString    := servicio;
                                    FieldByName('empresa_id').AsInteger    := empresa;
                                    FieldByName('funcion_id').AsInteger    := funcion;
                                    FieldByName('asignacion_id').AsInteger := i+1;
                                    FieldByName('empleado_id').Value       := Null;
                                    Post;
                               end;

                   dmMain.ZConnection1.Commit;
                   ModalResult := mrOk;
                 Except
                      On E:exception do
                         begin
                              dmMain.ZConnection1.Rollback;
                              raise Exception.Create('Error en TfrmServiciosFunciones.actGuardarExecute. ' + E.Message);
                         end;
                 end;
              finally
                     dmMain.ZConnection1.AutoCommit := True;
              end;
         end;
end;

procedure TfrmServiciosFunciones.chk1Click(Sender: TObject);
begin
     if cargado then
        begin
             teLunesE.Enabled := chk1.Checked;
             teLunesS.Enabled := chk1.Checked;
        end;
end;

procedure TfrmServiciosFunciones.chk2Click(Sender: TObject);
begin
     if cargado then
        begin
             teMartesE.Enabled := chk2.Checked;
             teMartesS.Enabled := chk2.Checked;
        end;
end;

procedure TfrmServiciosFunciones.chk3Click(Sender: TObject);
begin
     if cargado then
        begin
             teMiercolesE.Enabled := chk3.Checked;
             teMiercolesS.Enabled := chk3.Checked;
        end;
end;

procedure TfrmServiciosFunciones.chk4Click(Sender: TObject);
begin
     if cargado then
        begin
             teJuevesE.Enabled := chk4.Checked;
             teJuevesS.Enabled := chk4.Checked;
        end;
end;

procedure TfrmServiciosFunciones.chk5Click(Sender: TObject);
begin
     if cargado then
        begin
             teViernesE.Enabled := chk5.Checked;
             teViernesS.Enabled := chk5.Checked;
        end;
end;

procedure TfrmServiciosFunciones.chk6Click(Sender: TObject);
begin
     if cargado then
        begin
             teSabadoE.Enabled := chk6.Checked;
             teSabadoS.Enabled := chk6.Checked;
        end;
end;

procedure TfrmServiciosFunciones.chk7Click(Sender: TObject);
begin
     if cargado then
        begin
             teDomingoE.Enabled := chk7.Checked;
             teDomingoS.Enabled := chk7.Checked;
        end;
end;

procedure TfrmServiciosFunciones.chkTodosClick(Sender: TObject);
begin
     if cargado then
        begin
             dmMain.FuncionesMarcarTodos(chkTodos.Checked);
             EvaluaChecks;
        end;
end;

procedure TfrmServiciosFunciones.EvaluaChecks;
begin
     teLunesE.Enabled     := chk1.Checked;
     teLunesS.Enabled     := chk1.Checked;
     teMartesE.Enabled    := chk2.Checked;
     teMartesS.Enabled    := chk2.Checked;
     teMiercolesE.Enabled := chk3.Checked;
     teMiercolesS.Enabled := chk3.Checked;
     teJuevesE.Enabled    := chk4.Checked;
     teJuevesS.Enabled    := chk4.Checked;
     teViernesE.Enabled   := chk5.Checked;
     teViernesS.Enabled   := chk5.Checked;
     teSabadoE.Enabled    := chk6.Checked;
     teSabadoS.Enabled    := chk6.Checked;
     teDomingoE.Enabled   := chk7.Checked;
     teDomingoS.Enabled   := chk7.Checked;
end;

procedure TfrmServiciosFunciones.FormCreate(Sender: TObject);
begin
     cargado := False;
     cbHorario.Properties.ListSource := dmMain.dsHorarios;
     cbTipo.Properties.ListSource    := dmMain.dsTiposFuncion;
end;

procedure TfrmServiciosFunciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

procedure TfrmServiciosFunciones.FormShow(Sender: TObject);
begin
     if dmMain.dsServiciosFuncionesEdit.DataSet.State = dsInsert then
        Caption := 'Servicios Funciones (nuevo)';
     if dmMain.dsServiciosFuncionesEdit.DataSet.State = dsEdit then
        Caption := 'Servicios Funciones (modificar)';
     if dmMain.dsServiciosFuncionesEdit.DataSet.State = dsBrowse then
        Caption := 'Servicios Funciones (consultar)';

     actGuardar.Enabled := dmMain.dsServiciosFuncionesEdit.DataSet.State <> dsBrowse;
     actGuardar.Visible := dmMain.dsServiciosFuncionesEdit.DataSet.State <> dsBrowse;

     if dmMain.dsServiciosFuncionesEdit.DataSet.State = dsBrowse then
        begin
             chkTodos.Visible := False;
             teTodosE.Visible := False;
             teTodosS.Visible := False;
             HabilitaControles(False);
        end
     else
         begin
              chkTodos.Checked := False;
              EvaluaChecks;
              HabilitaControles(True);
         end;
     cargado := True;
end;

procedure TfrmServiciosFunciones.HabilitaControles(valor: Boolean);
begin
     cbTipo.Enabled       := valor;
     cbHorario.Enabled    := valor;
     chk1.Enabled         := valor;
     chk2.Enabled         := valor;
     chk3.Enabled         := valor;
     chk4.Enabled         := valor;
     chk5.Enabled         := valor;
     chk6.Enabled         := valor;
     chk7.Enabled         := valor;
     teLunesE.Enabled     := valor;
     teLunesS.Enabled     := valor;
     teMartesE.Enabled    := valor;
     teMartesS.Enabled    := valor;
     teMiercolesE.Enabled := valor;
     teMiercolesS.Enabled := valor;
     teJuevesE.Enabled    := valor;
     teJuevesS.Enabled    := valor;
     teViernesE.Enabled   := valor;
     teViernesS.Enabled   := valor;
     teSabadoE.Enabled    := valor;
     teSabadoS.Enabled    := valor;
     teDomingoE.Enabled   := valor;
     teDomingoS.Enabled   := valor;
end;

procedure TfrmServiciosFunciones.teTodosEPropertiesEditValueChanged(
  Sender: TObject);
begin
     if cargado and chkTodos.Checked then
        begin
             if chk1.Checked then teLunesE.EditValue := teTodosE.EditValue;
             if chk2.Checked then teMartesE.EditValue := teTodosE.EditValue;
             if chk3.Checked then teMiercolesE.EditValue := teTodosE.EditValue;
             if chk4.Checked then teJuevesE.EditValue := teTodosE.EditValue;
             if chk5.Checked then teViernesE.EditValue := teTodosE.EditValue;
             if chk6.Checked then teSabadoE.EditValue := teTodosE.EditValue;
             if chk7.Checked then teDomingoE.EditValue := teTodosE.EditValue;
        end;
end;

procedure TfrmServiciosFunciones.teTodosSPropertiesEditValueChanged(
  Sender: TObject);
begin
     if cargado and chkTodos.Checked then
        begin
             if chk1.Checked then teLunesS.EditValue := teTodosS.EditValue;
             if chk2.Checked then teMartesS.EditValue := teTodosS.EditValue;
             if chk3.Checked then teMiercolesS.EditValue := teTodosS.EditValue;
             if chk4.Checked then teJuevesS.EditValue := teTodosS.EditValue;
             if chk5.Checked then teViernesS.EditValue := teTodosS.EditValue;
             if chk6.Checked then teSabadoS.EditValue := teTodosS.EditValue;
             if chk7.Checked then teDomingoS.EditValue := teTodosS.EditValue;
        end;
end;

function TfrmServiciosFunciones.Validate: Boolean;
var
   msg : string;
begin
     Result := True;
     msg := '';

     if Trim(cbTipo.Text) = '' then
        msg := msg + '- Debe indicar el tipo de Empleado' + #13 + #10;

     if Trim(cbHorario.Text) = '' then
        msg := msg + '- Debe indicar el Horario' + #13 + #10;

     if (not chk1.Checked)
        and (not chk2.Checked)
        and (not chk3.Checked)
        and (not chk4.Checked)
        and (not chk5.Checked)
        and (not chk6.Checked)
        and (not chk7.Checked) then
        msg := msg + '- Debe seleccionar al menos un día' + #13 + #10
     else
         begin
              msg := msg + IfThen((Trim(teLunesE.Text)='') and (chk1.Checked),'- Debe indicar la hora de Entrada del Lunes'+#13+#10,'');
              msg := msg + IfThen((Trim(teMartesE.Text)='') and (chk2.Checked),'- Debe indicar la hora de Entrada del Martes'+#13+#10,'');
              msg := msg + IfThen((Trim(teMiercolesE.Text)='') and (chk3.Checked),'- Debe indicar la hora de Entrada del Miércoles'+#13+#10,'');
              msg := msg + IfThen((Trim(teJuevesE.Text)='') and (chk4.Checked),'- Debe indicar la hora de Entrada del Jueves'+#13+#10,'');
              msg := msg + IfThen((Trim(teViernesE.Text)='') and (chk5.Checked),'- Debe indicar la hora de Entrada del Viernes'+#13+#10,'');
              msg := msg + IfThen((Trim(teSabadoE.Text)='') and (chk6.Checked),'- Debe indicar la hora de Entrada del Sábado'+#13+#10,'');
              msg := msg + IfThen((Trim(teDomingoE.Text)='') and (chk7.Checked),'- Debe indicar la hora de Entrada del Domingo'+#13+#10,'');

              msg := msg + IfThen((Trim(teLunesS.Text)='') and (chk1.Checked),'- Debe indicar la hora de Salida del Lunes'+#13+#10,'');
              msg := msg + IfThen((Trim(teMartesS.Text)='') and (chk2.Checked),'- Debe indicar la hora de Salida del Martes'+#13+#10,'');
              msg := msg + IfThen((Trim(teMiercolesS.Text)='') and (chk3.Checked),'- Debe indicar la hora de Salida del Miércoles'+#13+#10,'');
              msg := msg + IfThen((Trim(teJuevesS.Text)='') and (chk4.Checked),'- Debe indicar la hora de Salida del Jueves'+#13+#10,'');
              msg := msg + IfThen((Trim(teViernesS.Text)='') and (chk5.Checked),'- Debe indicar la hora de Salida del Viernes'+#13+#10,'');
              msg := msg + IfThen((Trim(teSabadoS.Text)='') and (chk6.Checked),'- Debe indicar la hora de Salida del Sábado'+#13+#10,'');
              msg := msg + IfThen((Trim(teDomingoS.Text)='') and (chk7.Checked),'- Debe indicar la hora de Salida del Domingo'+#13+#10,'');
         end;

     if Trim(msg) <> '' then
        begin
             Result := False;
             MessageDlg(msg,mtError,[mbOK],0);
        end;
end;

end.

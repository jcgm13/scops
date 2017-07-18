unit fAsistenciaEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinDevExpressStyle, Vcl.Menus, cxMemo, cxDBEdit,
  Vcl.ActnList, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxSpinEdit, cxTimeEdit, cxMaskEdit, cxButtonEdit, cxTextEdit, cxLabel, cxCurrencyEdit, dxSkinBlue, dxSkinOffice2007Silver,
  dxSkinOffice2010Silver, dxSkinOffice2013LightGray, cxCheckBox;

type
  TfrmAsistenciaEdit = class(TForm)
    Empleado: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Panel1: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ActionList1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    edEntrada: TcxTimeEdit;
    cxLabel5: TcxLabel;
    edSalida: TcxTimeEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edServicio: TcxTextEdit;
    edFuncion: TcxTextEdit;
    edEmpleado: TcxButtonEdit;
    edObservaciones: TcxMemo;
    cxLabel8: TcxLabel;
    edHorasExtra: TcxCurrencyEdit;
    chkDescansa: TcxCheckBox;
    procedure actCerrarExecute(Sender: TObject);
    procedure actGuardarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edEmpleadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    EmpleadoNuevo : Integer;
  public
    { Public declarations }
  end;

var
  frmAsistenciaEdit: TfrmAsistenciaEdit;

implementation

uses
  uGlobales, dMain, fSeleccionEmpleados, fPrincipal;

{$R *.dfm}

procedure TfrmAsistenciaEdit.actCerrarExecute(Sender: TObject);
begin
     ModalResult := mrCancel;
end;

procedure TfrmAsistenciaEdit.actGuardarExecute(Sender: TObject);
var
   cad, vdescansa : String;
begin
     cad := stringReplace(edHorasExtra.Text,',','',[rfReplaceAll]);
     if trim(cad) = '' then
        cad := '0';
     if chkDescansa.Checked then
        vdescansa := 'S'
     else
         vdescansa := 'N';
     dmMain.ActualizarAsistencia(
                                 _Globales.Empresa,
                                 dmMain.dsAsistenciaDetalle.DataSet.FieldByName('anio').AsInteger,
                                 dmMain.dsAsistenciaDetalle.DataSet.FieldByName('mes').AsInteger,
                                 dmMain.dsAsistenciaDetalle.DataSet.FieldByName('dia').AsInteger,
                                 edEntrada.Time,
                                 edSalida.Time,
                                 StrToInt(cad),
                                 vdescansa,
                                 dmMain.dsAsistenciaDetalle.DataSet.FieldByName('empleado_id').AsInteger,
                                 EmpleadoNuevo,
                                 edObservaciones.Text
                                );
     ModalResult := mrOk;
end;

procedure TfrmAsistenciaEdit.edEmpleadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
     try
        frmSeleccionEmpleados := TfrmSeleccionEmpleados.Create(Nil);
        if frmSeleccionEmpleados.ShowModal = mrOk then
           begin
                EmpleadoNuevo := EmpleadoSeleccionado;
                edEmpleado.Text := NombreEmpleadoSeleccionado;
           end;
     finally
            FreeAndNil(frmSeleccionEmpleados);
     end;
end;

procedure TfrmAsistenciaEdit.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

procedure TfrmAsistenciaEdit.FormShow(Sender: TObject);
begin
     edEmpleado.Text := dmMain.dsAsistencia.DataSet.FieldByName('nombre_empleado').AsString;
     edServicio.Text := dmMain.dsAsistencia.DataSet.FieldByName('descripcion_servicio').AsString;
     edFuncion.Text  := dmMain.dsAsistencia.DataSet.FieldByName('descripcion_funcion').AsString;

     edEntrada.Time := dmMain.dsAsistencia.DataSet.FieldByName('horaentrada').AsDateTime;
     edSalida.Time := dmMain.dsAsistencia.DataSet.FieldByName('horasalida').AsDateTime;

     edHorasExtra.Value := dmMain.dsAsistencia.DataSet.FieldByName('horas_extra').AsInteger;

     edObservaciones.Clear;
     edObservaciones.Text := dmMain.dsAsistencia.DataSet.FieldByName('observaciones').AsString;

     EmpleadoNuevo := 0;
end;

end.

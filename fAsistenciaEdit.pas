unit fAsistenciaEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinDevExpressStyle, Vcl.Menus, cxMemo, cxDBEdit,
  Vcl.ActnList, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxSpinEdit, cxTimeEdit, cxMaskEdit, cxButtonEdit, cxTextEdit, cxLabel, cxCurrencyEdit, dxSkinBlue, dxSkinOffice2007Silver,
  dxSkinOffice2010Silver, dxSkinOffice2013LightGray, cxCheckBox, dxSkinOffice2016Colorful, System.Actions, dxBevel, cxGroupBox, cxRadioGroup, dxSkinOffice2013DarkGray;

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
    lblEntrada: TcxLabel;
    edSalida: TcxTimeEdit;
    lblSalida: TcxLabel;
    cxLabel7: TcxLabel;
    edServicio: TcxTextEdit;
    edFuncion: TcxTextEdit;
    edEmpleado: TcxButtonEdit;
    edObservaciones: TcxMemo;
    lblHorasExtra: TcxLabel;
    edHorasExtra: TcxCurrencyEdit;
    pnlFecha: TPanel;
    cxLabel3: TcxLabel;
    edAsignacion: TcxTextEdit;
    dxBevel1: TdxBevel;
    rgTipoRegistro: TcxRadioGroup;
    procedure actCerrarExecute(Sender: TObject);
    procedure actGuardarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edEmpleadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rgTipoRegistroPropertiesChange(Sender: TObject);
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
   cad : String;
begin
     cad := stringReplace(edHorasExtra.Text,',','',[rfReplaceAll]);
     if trim(cad) = '' then
        cad := '0';

     dmMain.RegistraAsistencia(
                               _Globales.Empresa,
                               dmMain.dsAsistencia.DataSet.FieldByName('anio').AsInteger,
                               dmMain.dsAsistencia.DataSet.FieldByName('mes').AsInteger,
                               dmMain.dsAsistencia.DataSet.FieldByName('dia').AsInteger,
                               edEntrada.Time,
                               edSalida.Time,
                               StrToInt(cad),
                               rgTipoRegistro.ItemIndex,
                               dmMain.dsAsistencia.DataSet.FieldByName('empleado_id').AsInteger,
                               dmMain.dsAsistencia.DataSet.FieldByName('servicio_id').AsString,
                               dmMain.dsAsistencia.DataSet.FieldByName('funcion_id').AsInteger,
                               dmMain.dsAsistencia.DataSet.FieldByName('asignacion_id').AsInteger,
                               edObservaciones.Text,
                               EncodeDate(dmMain.dsAsistencia.DataSet.FieldByName('anio').AsInteger,
                                          dmMain.dsAsistencia.DataSet.FieldByName('mes').AsInteger,
                                          dmMain.dsAsistencia.DataSet.FieldByName('dia').AsInteger)
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
var
   vFechas : TInfoFuncion;
begin
     edEmpleado.Text          := dmMain.dsAsistencia.DataSet.FieldByName('nombre_empleado').AsString;
     edServicio.Text          := dmMain.dsAsistencia.DataSet.FieldByName('descripcion_servicio').AsString;
     edFuncion.Text           := dmMain.dsAsistencia.DataSet.FieldByName('descripcion_funcion').AsString;
     edAsignacion.Text        := dmMain.dsAsistencia.DataSet.FieldByName('asignacion_id').AsString;

     if dmMain.dsAsistencia.DataSet.FieldByName('hora_entrada').IsNull and
        dmMain.dsAsistencia.DataSet.FieldByName('hora_salida').IsNull then
        begin
             vFechas := dmMain.obtenerInfoFuncion(dmMain.dsAsistencia.DataSet.FieldByName('servicio_id').AsString,
                                                  dmMain.dsAsistencia.DataSet.FieldByName('empresa_id').AsInteger,
                                                  dmMain.dsAsistencia.DataSet.FieldByName('funcion_id').AsInteger,
                                                  DayOfWeek(Now)
                                                 );
             edEntrada.Time := vFechas.horaEntrada;
             edSalida.Time := vFechas.horaSalida;
        end
     else
         begin
              edEntrada.Time := dmMain.dsAsistencia.DataSet.FieldByName('hora_entrada').AsDateTime;
              edSalida.Time  := dmMain.dsAsistencia.DataSet.FieldByName('hora_salida').AsDateTime;
         end;

     edHorasExtra.Value       := dmMain.dsAsistencia.DataSet.FieldByName('horas_extra').AsInteger;
     rgTipoRegistro.ItemIndex := dmMain.dsAsistencia.DataSet.FieldByName('tipo_registro').AsInteger;

     edObservaciones.Clear;
     edObservaciones.Text     := dmMain.dsAsistencia.DataSet.FieldByName('observaciones').AsString;

     pnlFecha.Caption         := FormatDateTime('dddd dd "de" mmmm "del" yyyy',
                                                EncodeDate(dmMain.dsAsistencia.DataSet.FieldByName('anio').AsInteger,
                                                           dmMain.dsAsistencia.DataSet.FieldByName('mes').AsInteger,
                                                           dmMain.dsAsistencia.DataSet.FieldByName('dia').AsInteger));
end;

procedure TfrmAsistenciaEdit.rgTipoRegistroPropertiesChange(Sender: TObject);
begin
     edEntrada.Visible     := rgTipoRegistro.ItemIndex = 0;
     edSalida.Visible      := rgTipoRegistro.ItemIndex = 0;
     edHorasExtra.Visible  := rgTipoRegistro.ItemIndex = 0;
     lblEntrada.Visible    := rgTipoRegistro.ItemIndex = 0;
     lblSalida.Visible     := rgTipoRegistro.ItemIndex = 0;
     lblHorasExtra.Visible := rgTipoRegistro.ItemIndex = 0;
end;

end.

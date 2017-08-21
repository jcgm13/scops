program SCoPs;

uses
  Forms,
  dMain in 'dMain.pas' {dmMain: TDataModule},
  fPrincipal in 'fPrincipal.pas' {frmPrincipal},
  fEmpleadosReingreso in 'fEmpleadosReingreso.pas' {frmEmpleadosReingreso},
  fServicios in 'fServicios.pas' {frmServicios},
  fReportes in 'fReportes.pas' {frmReportes},
  fSplash in 'fSplash.pas' {frmSplash},
  fWaitForm in 'fWaitForm.pas' {frmWaitForm},
  fPermisos in 'fPermisos.pas' {frmPermisos},
  fLogin in 'fLogin.pas' {frmLogin},
  uGlobales in 'uGlobales.pas',
  fAsignarFoto in 'fAsignarFoto.pas' {frmAsignarFoto},
  VFrames in 'extras\VFrames.pas',
  VSample in 'extras\VSample.pas',
  Direct3D9 in 'extras\DirectX\Direct3D9.pas',
  DirectDraw in 'extras\DirectX\DirectDraw.pas',
  DirectShow9 in 'extras\DirectX\DirectShow9.pas',
  DirectSound in 'extras\DirectX\DirectSound.pas',
  DXTypes in 'extras\DirectX\DXTypes.pas',
  fVehiculos in 'fVehiculos.pas' {frmVehiculos},
  fClientes in 'fClientes.pas' {frmClientes},
  fEmpleados in 'fEmpleados.pas' {frmEmpleados},
  fServiciosFunciones in 'fServiciosFunciones.pas' {frmServiciosFunciones},
  fSeleccionEquipo in 'fSeleccionEquipo.pas' {frmSeleccionEquipo},
  fAsistenciaEdit in 'fAsistenciaEdit.pas' {frmAsistenciaEdit},
  fEquipo in 'fEquipo.pas' {frmEquipo},
  fVehiculosReparaciones in 'fVehiculosReparaciones.pas' {frmVehiculosReparaciones},
  fVehiculosCombustible in 'fVehiculosCombustible.pas' {frmVehiculosCombustible},
  fSeleccionEmpleados in 'fSeleccionEmpleados.pas' {frmSeleccionEmpleados},
  FMovtosAlmacen in 'FMovtosAlmacen.pas' {frmMovtosAlmacen},
  fEmpleadosBaja in 'fEmpleadosBaja.pas' {frmEmpleadosBaja},
  FDocsCliente in 'FDocsCliente.pas' {frmDocsCliente},
  FDocsEmpleado in 'FDocsEmpleado.pas' {frmDocsEmpleado},
  fUsuarios in 'fUsuarios.pas' {frmUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

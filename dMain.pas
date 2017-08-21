unit dMain;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, Datasnap.Provider, Datasnap.DBClient, DateUtils, Vcl.ActnList, Variants, dxmdaset, Math, StrUtils, dialogs;

type
    TInfoFuncion = record
       horaEntrada : TTime;
       horaSalida : TTime;
    end;

    TInfoVehiculo = record
       Marca  : String;
       Modelo : String;
       Color  : String;
    end;

  TdmMain = class(TDataModule)
    ZConnection1: TZConnection;
    qryEmpleados: TZQuery;
    dsEmpleados: TDataSource;
    cdsEmpleados: TClientDataSet;
    dspEmpleados: TDataSetProvider;
    dsClientes: TDataSource;
    cdsClientes: TClientDataSet;
    dspClientes: TDataSetProvider;
    qryClientes: TZQuery;
    qryEmpleadosEdit: TZQuery;
    qryEmpresas: TZQuery;
    qryOficinas: TZQuery;
    qryServiciosList: TZQuery;
    qryEstatusSP: TZQuery;
    qryPuestos: TZQuery;
    dsEmpresas: TDataSource;
    dsOficinas: TDataSource;
    dsServiciosList: TDataSource;
    dsEstatusSP: TDataSource;
    dsPuestos: TDataSource;
    qryBancos: TZQuery;
    dsBancos: TDataSource;
    qryEscolaridad: TZQuery;
    dsEscolaridad: TDataSource;
    qryAux: TZQuery;
    qryDetalleEmpleado: TZQuery;
    dsDetalleEmpleado: TDataSource;
    dsEmpleadosEdit: TDataSource;
    qryReporte: TZQuery;
    dsReporte: TDataSource;
    qryAux2: TZQuery;
    dsUsuarios: TDataSource;
    cdsUsuarios: TClientDataSet;
    dspUsuarios: TDataSetProvider;
    qryUsuarios: TZQuery;
    dsPermisos: TDataSource;
    qryPermisos: TZQuery;
    qryClientesEdit: TZQuery;
    dsClientesEdit: TDataSource;
    qryEmpleadosFotosEdit: TZQuery;
    dsEmpleadosFotosEdit: TDataSource;
    qryEmpleadosFotosEditempleado_id: TIntegerField;
    qryEmpleadosFotosEditfoto: TBlobField;
    qryPermisoscategoria: TWideStringField;
    qryPermisosdescripcion: TWideStringField;
    qryPermisosnombre: TWideStringField;
    qryPermisospermiso: TWideMemoField;
    qryPermisosusuario: TStringField;
    memPermisos: TdxMemData;
    dsServicios: TDataSource;
    cdsServicios: TClientDataSet;
    dspServicios: TDataSetProvider;
    qryServicios: TZQuery;
    qryServiciosEdit: TZQuery;
    dsServiciosEdit: TDataSource;
    qryClientesList: TZQuery;
    dsClientesList: TDataSource;
    dsVehiculos: TDataSource;
    cdsVehiculos: TClientDataSet;
    dspVehiculos: TDataSetProvider;
    qryVehiculos: TZQuery;
    qryVehiculosEdit: TZQuery;
    dsVehiculosEdit: TDataSource;
    qryHorarios: TZQuery;
    dsHorarios: TDataSource;
    qryTiposFuncion: TZQuery;
    dsTiposFuncion: TDataSource;
    dsServiciosFunciones: TDataSource;
    cdsServiciosFunciones: TClientDataSet;
    dspServiciosFunciones: TDataSetProvider;
    qryServiciosFunciones: TZQuery;
    qryServiciosFuncionesEdit: TZQuery;
    dsServiciosFuncionesEdit: TDataSource;
    dsServiciosFuncionesEmpleados: TDataSource;
    cdsServiciosFuncionesEmpleados: TClientDataSet;
    dspServiciosFuncionesEmpleados: TDataSetProvider;
    qryServiciosFuncionesEmpleados: TZQuery;
    qryServiciosFuncionesEmpleadosEdit: TZQuery;
    dsServiciosFuncionesEmpleadosEdit: TDataSource;
    dsEmpleadosList: TDataSource;
    dspEmpleadosList: TDataSetProvider;
    cdsEmpleadosList: TClientDataSet;
    qryEmpleadosList: TZQuery;
    dsServiciosPreasignacionSemanal: TDataSource;
    cdsServiciosPreasignacionSemanal: TClientDataSet;
    dspServiciosPreasignacionSemanal: TDataSetProvider;
    qryServiciosPreasignacionSemanal: TZQuery;
    qryEmpleadosCursosEdit: TZQuery;
    dsEmpleadosCursosEdit: TDataSource;
    qryTiposCurso: TZQuery;
    dsTiposCurso: TDataSource;
    qryEmpleadosSocioEconomicoEdit: TZQuery;
    dsEmpleadosSocioEconomicoEdit: TDataSource;
    dsAsistencia: TDataSource;
    cdsAsistencia: TClientDataSet;
    dspAsistencia: TDataSetProvider;
    qryAsistencia: TZQuery;
    dsAsistenciaDetalle: TDataSource;
    cdsAsistenciaDetalle: TClientDataSet;
    dspAsistenciaDetalle: TDataSetProvider;
    qryAsistenciaDetalle: TZQuery;
    dsEquipo: TDataSource;
    cdsEquipo: TClientDataSet;
    dspEquipo: TDataSetProvider;
    qryEquipo: TZQuery;
    qryEquipoEdit: TZQuery;
    dsEquipoEdit: TDataSource;
    dsVehiculosCombustible: TDataSource;
    cdsVehiculosCombustible: TClientDataSet;
    dspVehiculosCombustible: TDataSetProvider;
    qryVehiculosCombustible: TZQuery;
    qryVehiculosCombustibleEdit: TZQuery;
    dsVehiculosCombustibleEdit: TDataSource;
    dsVehiculosReparaciones: TDataSource;
    cdsVehiculosReparaciones: TClientDataSet;
    dspVehiculosReparaciones: TDataSetProvider;
    qryVehiculosReparaciones: TZQuery;
    qryVehiculosReparacionesEdit: TZQuery;
    dsVehiculosReparacionesEdit: TDataSource;
    dsEquipoList: TDataSource;
    dspEquipoList: TDataSetProvider;
    cdsEquipoList: TClientDataSet;
    qryEquipoList: TZQuery;
    dsServiciosEquipo: TDataSource;
    cdsServiciosEquipo: TClientDataSet;
    dspServiciosEquipo: TDataSetProvider;
    qryServiciosEquipo: TZQuery;
    qryServiciosCliente: TZQuery;
    dspServiciosCliente: TDataSetProvider;
    cdsServiciosCliente: TClientDataSet;
    dsServiciosCliente: TDataSource;
    dsMovtosAlmacen: TDataSource;
    cdsMovtosAlmacen: TClientDataSet;
    dspMovtosAlmacen: TDataSetProvider;
    qryMovtosAlmacen: TZQuery;
    dsMovtosAlmacenEdit: TDataSource;
    qryMovtosAlmacenEdit: TZQuery;
    qryBitacoraEmpleado: TZQuery;
    dsBitacoraEmpleado: TDataSource;
    memAsistencia: TdxMemData;
    qryUsuariosEdit: TZQuery;
    dsUsuariosEdit: TDataSource;
    procedure qryEmpleadosEditCalcFields(DataSet: TDataSet);
    procedure qryEmpleadosEditNewRecord(DataSet: TDataSet);
    procedure qryEmpleadosEditBeforePost(DataSet: TDataSet);
    procedure qryClientesEditNewRecord(DataSet: TDataSet);
    procedure qryServiciosEditNewRecord(DataSet: TDataSet);
    procedure qryVehiculosEditNewRecord(DataSet: TDataSet);
    procedure qryServiciosFuncionesEditNewRecord(DataSet: TDataSet);
    procedure qryEmpleadosCursosEditNewRecord(DataSet: TDataSet);
    procedure qryEmpleadosCursosEditBeforePost(DataSet: TDataSet);
    procedure qryEquipoEditNewRecord(DataSet: TDataSet);
    procedure qryVehiculosCombustibleEditNewRecord(DataSet: TDataSet);
    procedure qryVehiculosReparacionesEditNewRecord(DataSet: TDataSet);
    procedure qryClientesEditAfterPost(DataSet: TDataSet);
    procedure qryMovtosAlmacenEditNewRecord(DataSet: TDataSet);
    procedure qryEmpleadosEditAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    modoInsercion : Boolean;
    function nextEmpleado(empresaId : Integer) : Integer;
  public
    { Public declarations }
    // EMPLEADOS
    procedure CargaEmpleados(empresaId, Estatus : Integer);
    procedure CargaEmpleadosListado(empresaId : Integer);
    procedure CargaDetalleEmpleado(empresaId, empleado : integer);
    procedure CargaFotoEmpleado(empresaId, empleado : integer);
    procedure InactivaUsuario(empresaId, empleado : Integer);
    procedure ReingresoEmpleado(empresaId, empleadoId : Integer; fechaReingreso : TDateTime; observaciones : string);
    function ExisteEmpleado(nombre : string) : Boolean;
    procedure RegistraHistorialEmpleado(empresaId, empleadoid : Integer; fecha: TDateTime; descripcion, observaciones : string);
    procedure BajaEmpleado(empresaId, empleadoId : Integer; fechaBaja : TDateTime; observaciones : string);
    procedure CargaBitacoraEmpleado(empresaId, empleadoId : Integer);

    // CLIENTES
    procedure CargaClientes(empresaId, Estatus : Integer);
    function ExisteClienteId(empresaId : Integer; id : string) : Boolean;
    procedure InactivarCliente(empresaId : Integer; id :string);
    procedure CargaServiciosCliente(empresaId : Integer; id : string);

    // SERVICIOS
    procedure CargaServicios(empresaId, estatus : Integer);
    function ExisteServicioId(empresaId : Integer; id : string) : Boolean;
    procedure CopiarInfoCliente(empresaId : Integer; clienteId : string);
    procedure InactivarServicio(empresaId : Integer; id :string);
    procedure CargaFunciones(empresaId : Integer; id : string);
    procedure CargaFuncionesEmpleados(empresaId : Integer; id : string);
    procedure FuncionesMarcarTodos(valor : Boolean);
    procedure FuncionesAsignaTiemposTodos(te, ts: TTime);
    function getNextServicioFuncionId(empresaId : Integer; id : string) : Integer;
    procedure AsignaEmpleadoFuncion(empresaId : Integer; servicioId :string; empleado, funcionId, asignacionId : integer);
    procedure QuitaAsignacionEmpleadoFuncion(empresaId : Integer; servicioId :string; empleado, funcionId, asignacionId : integer);
    procedure EliminarFuncion(empresaId : Integer; servicioId : String; funcionId : Integer);
    procedure CargaEquipoServicio(empresaId : Integer; servicioId : String);
    procedure AsignaEquipoServicio(empresaId : Integer; servicioId : String; EquipoId : Integer);
    function ExisteServicioFuncion(servicioId : string; empresaId, funcionId, asignacionId : Integer) : Boolean;


    // VEHICULOS
    procedure CargaVehiculos(empresaId, estatus : Integer);
    function getNextVehiculoId(empresaId : Integer) : Integer;
    procedure InactivarVehiculo(empresaId, id : Integer);
    function CargaInfoVehiculo(empresaId, id : Integer) : TInfoVehiculo;
    function getNextVehiculoCombustibleId(empresaId, vehiculoId : Integer) : Integer;
    procedure CargaVehiculosCombustible(empresaId, vehiculoId : Integer);
    function getNextVehiculoReparacionId(empresaId, vehiculoId : Integer) : Integer;
    procedure CargaVehiculosReparaciones(empresaId, vehiculoId : Integer);

    // EQUIPO
    procedure CargaEquipo(empresaId, estatus : Integer);
    function getNextEquipoId(empresaId : Integer) : Integer;
    procedure InactivarEquipo(empresaId, id : Integer);
    procedure CargaEquipoListado(empresaId : Integer; Servicio, Descripcion : string);
    procedure MovimientoEquipo(empresaId : Integer; Servicio : string; EquipoId : Integer; signo : String);
    procedure EliminarEquipo(empresaId : Integer; servicio : string; equipoId : Integer);

    // MOVIMIENTOS ALMACEN
    procedure CargaMovimientosAlmacen(empresaId : Integer; fecha_ini, fecha_fin :TDateTime; estatus1, estatus2 : string);
    function getNextMovtoAlmacenId(empresaId : Integer) : Integer;

    // ASISTENCIA
    procedure CargaAsistencia(empresaId : Integer; anio, mes, dia: Integer; tipo: string);
    procedure ConsultaAsistencia(empresaId : Integer; fechaIni, fechaFin : TDateTime);
    procedure CargaAsistenciaDetalle(empresaId, anio, mes, dia : Integer);
    procedure RegistraAsistencia(empresa_id, anio, mes, dia: Integer; hora_entrada, hora_salida: TDateTime; horas_extra, tipo_registro : Integer;
                                 empleado_id : Integer; servicio_id : string; funcion_id, asignacion_id : Integer; observaciones: String; fecha : TDateTime);
    function obtenerInfoFuncion(servicioId : string; empresaId, funcionId, diaSemana : Integer) : TInfoFuncion;

    // USUARIOS
    procedure CargaUsuarios;
    function ExisteUsuario(nombre: string): Boolean;

    // PERMISOS
    procedure CargaPermisos(usuario : string);
    procedure GuardaPermisos;
    function ValidaUsuario(nombre, password : string) : boolean;

    // V A R I O S
    procedure CargaDatasetsAuxiliares;
    procedure CargaReporte(tipoReporte, id : Integer; cve : string);

    // Acciones
    procedure RegistraAcciones(actlst : TActionList);
    procedure CargaPermisosAcciones(actlst : TActionList; usuario : string);
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses uGlobales;

{$R *.dfm}

{ TDataModule2 }

procedure TdmMain.CargaPermisos(usuario: string);
var
   xSQL : string;
begin
     try
        dsPermisos.DataSet.DisableControls;
        memPermisos.Close;
        memPermisos.Open;

        xSQL := 'SELECT acciones.*, ' +
                '       CASE WHEN permisos.permiso IS NULL THEN ''N'' ELSE ''S'' END permiso, ' +
                '       :usuario usuario ' +
                'FROM acciones ' +
                'LEFT JOIN ( ' +
				        '           SELECT nombre, ' +
								'	                 ''S'' permiso ' +
					      '           FROM acciones_permisos ' +
	              '           WHERE usuario = :usuario ' +
					      '          ) permisos ON permisos.nombre = acciones.nombre ' +
                ' ORDER BY categoria,	descripcion';
        qryPermisos.Close;
        qryPermisos.SQL.Clear;
        qryPermisos.SQL.Add(xSQL);
        qryPermisos.ParamByName('usuario').AsString := usuario;
        qryPermisos.Open;

        memPermisos.LoadFromDataSet(qryPermisos);
        memPermisos.Open;
        memPermisos.First;
     finally
            dsPermisos.DataSet.EnableControls;
     end;
end;

procedure TdmMain.CargaPermisosAcciones(actlst: TActionList; usuario : string);
var
   i : Integer;
   xSQL : string;
begin
     xSQL := 'SELECT * FROM acciones_permisos WHERE usuario = :usuario';
     qryAux.Close;
     qryAux.SQL.Clear;
     qryAux.SQL.Add(xSQL);
     qryAux.ParamByName('usuario').AsString := usuario;
     qryAux.Open;

     for i := 0 to actlst.ActionCount-1 do
         (actlst.Actions[i] as TAction).Enabled := qryAux.Locate('nombre',(actlst.Actions[i] as TAction).Name,[]);
end;

procedure TdmMain.RegistraAsistencia(empresa_id, anio, mes, dia: Integer; hora_entrada, hora_salida: TDateTime; horas_extra, tipo_registro : Integer;
                                     empleado_id : Integer; servicio_id : string; funcion_id, asignacion_id : Integer; observaciones: String; fecha : TDateTime);
var
   xSQL : string;
begin
     // Primero se elimina el registro de la asistencia
     xSQL := 'DELETE FROM asistencia ' +
             ' WHERE empresa_id = :empresa_id ' +
             '       AND anio = :anio ' +
             '       AND mes = :mes ' +
             '       AND dia = :dia ' +
             '       AND empleado_id = :empleado_id';
     qryAux.Close;
     qryAux.SQL.Clear;
     qryAux.SQL.Add(xSQL);
     qryAux.ParamByName('empresa_id').AsInteger     := empresa_id;
     qryAux.ParamByName('anio').AsInteger           := anio;
     qryAux.ParamByName('mes').AsInteger            := mes;
     qryAux.ParamByName('dia').AsInteger            := dia;
     qryAux.ParamByName('empleado_id').AsInteger    := empleado_id;
     qryAux.ExecSQL;

     // Se inserta el registro de la asistencia
     xSQL := 'INSERT INTO asistencia (empresa_id, anio, mes, dia, empleado_id, servicio_id, funcion_id, asignacion_id, hora_entrada, hora_salida, observaciones, horas_extra, tipo_registro, fecha_asistencia) ' +
             ' VALUES(:empresa_id, :anio, :mes, :dia, :empleado_id, :servicio_id, :funcion_id, :asignacion_id, :hora_entrada, :hora_salida, :observaciones, :horas_extra, :tipo_registro, :fecha_asistencia)';
     qryAux.Close;
     qryAux.SQL.Clear;
     qryAux.SQL.Add(xSQL);
     qryAux.ParamByName('empresa_id').AsInteger     := empresa_id;
     qryAux.ParamByName('anio').AsInteger           := anio;
     qryAux.ParamByName('mes').AsInteger            := mes;
     qryAux.ParamByName('dia').AsInteger            := dia;
     qryAux.ParamByName('empleado_id').AsInteger    := empleado_id;
     qryAux.ParamByName('servicio_id').AsString     := servicio_id;
     qryAux.ParamByName('funcion_id').AsInteger     := funcion_id;
     qryAux.ParamByName('asignacion_id').AsInteger  := asignacion_id;
     if tipo_registro <> 0 then
        begin
             qryAux.ParamByName('hora_entrada').Value    := Null;
             qryAux.ParamByName('hora_salida').Value     := Null;
             qryAux.ParamByName('horas_extra').AsInteger := 0;
        end
     else
         begin
              qryAux.ParamByName('hora_entrada').AsDateTime  := hora_entrada;
              qryAux.ParamByName('hora_salida').AsDateTime   := hora_salida;
              qryAux.ParamByName('horas_extra').AsInteger    := horas_extra;
         end;
     qryAux.ParamByName('observaciones').AsString      := observaciones;
     qryAux.ParamByName('tipo_registro').AsInteger     := tipo_registro;
     qryAux.ParamByName('fecha_asistencia').AsDateTime := fecha;
     qryAux.ExecSQL;
end;

procedure TdmMain.AsignaEmpleadoFuncion(empresaId: Integer; servicioId: string; empleado, funcionId, asignacionId: integer);
var
   xSQL : string;
   empleadoAnterior : Integer;
begin
     try
        if not dsServiciosFuncionesEmpleados.DataSet.FieldByName('empleado_id').IsNull then
           empleadoAnterior := dsServiciosFuncionesEmpleados.DataSet.FieldByName('empleado_id').AsInteger
        else
            empleadoAnterior := 0;

        ZConnection1.StartTransaction;

        xSQL := 'UPDATE servicios_funciones_empleados SET empleado_id = :empleado_id ' +
                ' WHERE empresa_id = :empresa_id ' +
                '       AND servicio_id = :servicio_id ' +
                '       AND funcion_id = :funcion_id ' +
                '       AND asignacion_id = :asignacion_id';
        qryClientes.Close;
        qryClientes.SQL.Clear;
        qryClientes.SQL.Add(xSQL);
        qryClientes.ParamByName('empresa_id').AsInteger    := empresaId;
        qryClientes.ParamByName('servicio_id').AsString    := servicioId;
        qryClientes.ParamByName('empleado_id').AsInteger   := empleado;
        qryClientes.ParamByName('funcion_id').AsInteger    := funcionId;
        qryClientes.ParamByName('asignacion_id').AsInteger := asignacionId;
        qryClientes.ExecSQL;

        xSQL := 'UPDATE empleados SET servicio_id = :servicio_id ' +
                ' WHERE empresa_id = :empresa_id ' +
                '       AND empleado_id = :empleado_id';
        qryClientes.Close;
        qryClientes.SQL.Clear;
        qryClientes.SQL.Add(xSQL);
        qryClientes.ParamByName('empresa_id').AsInteger  := empresaId;
        qryClientes.ParamByName('servicio_id').AsString  := servicioId;
        qryClientes.ParamByName('empleado_id').AsInteger := empleado;
        qryClientes.ExecSQL;

        if empleadoAnterior > 0 then
           begin
                xSQL := 'UPDATE empleados SET servicio_id = :servicio_id ' +
                        ' WHERE empresa_id = :empresa_id ' +
                        '       AND empleado_id = :empleado_id';
                qryClientes.Close;
                qryClientes.SQL.Clear;
                qryClientes.SQL.Add(xSQL);
                qryClientes.ParamByName('empresa_id').AsInteger  := empresaId;
                qryClientes.ParamByName('servicio_id').Value     := Null;
                qryClientes.ParamByName('empleado_id').AsInteger := empleadoAnterior;
                qryClientes.ExecSQL;
           end;

        ZConnection1.Commit;
     except
           on E:Exception do
              begin
                   ZConnection1.Rollback;
                   raise Exception.Create('Ha ocurrido un error en TdmMain.AsignaEmpleadoFuncion. ' + E.Message);
              end;
     end;
end;

procedure TdmMain.AsignaEquipoServicio(empresaId: Integer; servicioId: String; EquipoId : Integer);
var
   xSQL : string;
begin
     try
        xSQL := 'INSERT INTO servicios_equipo ( ' +
                '    servicio_id, ' +
                '    empresa_id, ' +
                '    equipo_id, ' +
                '    cantidad ' +
                '  ) ' +
                ' VALUES ' +
                '    ( ' +
                '     :servicio_id, ' +
                '     :empresa_id, ' +
                '     :equipo_id, ' +
                '     1 ' +
                '    )';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('servicio_id').AsString := servicioId;
        qryAux.ParamByName('empresa_id').AsInteger := empresaId;
        qryAux.ParamByName('equipo_id').AsInteger  := equipoId;
        qryAux.ExecSQL;
     finally
            qryAux.Close;
     end;
end;

procedure TdmMain.BajaEmpleado(empresaId, empleadoId: Integer; fechaBaja: TDateTime; observaciones: string);
var
   xSQL : string;
begin
     try
        // Se le quita el servicio asignado al empleado y se pone con estatus BAJA
        xSQL := 'UPDATE empleados SET activo = ''0'', servicio_id = NULL ' +
                ' WHERE empresa_id = :empresa ' +
                '       AND empleado_id = :empleado';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('empresa').AsInteger  := empresaId;
        qryAux.ParamByName('empleado').AsInteger := empleadoId;
        qryAux.ExecSQL;

        // Se elimina el registro de los servicios a este empleado
        xSQL := 'UPDATE servicios_funciones_empleados ' +
                ' SET empleado_id = NULL ' +
                ' WHERE empresa_id = :empresa ' +
                '       AND empleado_id = :empleado';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('empresa').AsInteger  := empresaId;
        qryAux.ParamByName('empleado').AsInteger := empleadoId;
        qryAux.ExecSQL;

        // Se guarda el registro en la bitácora
        RegistraHistorialEmpleado(empresaId, empleadoId, fechaBaja, 'BAJA', observaciones);
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.InactivaUsuario. ' + E.Message);
     end;
end;

procedure TdmMain.CargaAsistencia(empresaId: Integer; anio, mes, dia: Integer; tipo: string);
var
   xSQL : string;
begin
     try
        cdsAsistencia.DisableControls;
        dspAsistencia.DataSet := qryAsistencia;
        cdsAsistencia.Active := False;

        xSQL := 'SELECT * FROM ' +
                '( ' +
                ' SELECT serv.empresa_id, ' +
                '       serv.cliente_id, ' +
                '       serv.cliente_descripcion, ' +
                '       sfe.servicio_id, ' +
                '       serv.descripcion AS descripcion_servicio, ' +
                '       sfe.asignacion_id, ' +
                '       sfe.funcion_id, ' +
                '       sfe.asignacion_id, ' +
                '       tipos_funciones.descripcion AS descripcion_funcion, ' +
                '       CASE WHEN asist.empleado_id IS NULL THEN sfe.empleado_id ELSE asist.empleado_id END empleado_id, ' +
                '       CASE WHEN asist.empleado_id IS NULL THEN COALESCE( TRIM( empleados.nombres || '' '' || empleados.apellido_paterno || '' '' || empleados.apellido_materno ), '' *** N O  A S I G N A D O ***'' ) ELSE asist.nombre_empleado END AS nombre_empleado, ' +
                '       tipo_registro, ' +
                '       CASE WHEN asist.empleado_id IS NULL THEN NULL ELSE asist.hora_entrada END AS hora_entrada, ' +
                '       CASE WHEN asist.empleado_id IS NULL THEN NULL ELSE asist.hora_salida END AS hora_salida, ' +
                '       CASE WHEN asist.empleado_id IS NULL THEN NULL ELSE asist.horas_extra END AS horas_extra, ' +
                '       CASE WHEN asist.empleado_id IS NULL THEN NULL ELSE asist.observaciones END AS observaciones, ' +
                '       :anio AS anio, ' +
                '       :mes AS mes, ' +
                '       :dia AS dia, ' +
                '       asist.fecha_asistencia, ' +
                '       tipo_nomina ' +
                ' FROM servicios_funciones_empleados sfe ' +
                ' LEFT JOIN ( ' +
                '            SELECT servicios.*, ' +
                '                   clientes.descripcion AS cliente_descripcion ' +
                '            FROM servicios ' +
                '            LEFT JOIN clientes ON clientes.empresa_id = servicios.empresa_id AND clientes.cliente_id = servicios.cliente_id ' +
                '            WHERE servicios.empresa_id = :empresa ' +
                '                  AND NOT (servicios.servicio_id is NULL) ' +
                '           ) serv ON serv.empresa_id = sfe.empresa_id AND serv.servicio_id = sfe.servicio_id ' +
                ' LEFT JOIN tipos_funciones ON tipos_funciones.id_tipo_funcion = sfe.funcion_id ' +
                ' LEFT JOIN empleados ON empleados.empresa_id = sfe.empresa_id AND empleados.empleado_id = sfe.empleado_id ' +
                ' LEFT JOIN ( ' +
                '            SELECT asistencia.*, ' +
                '                   TRIM( empleados.nombres || '' '' || empleados.apellido_paterno || '' '' || empleados.apellido_materno ) AS nombre_empleado ' +
                '            FROM asistencia ' +
                '            LEFT JOIN empleados ON empleados.empleado_id = asistencia.empleado_id ' +
                '            WHERE asistencia.empresa_id = :empresa ' +
                '                  AND anio = :anio ' +
                '                  AND mes = :mes ' +
                '                  AND dia = :dia ' +
                '           ) asist ON asist.empresa_id = sfe.empresa_id ' +
                '                      AND asist.servicio_id = sfe.servicio_id ' +
                '                      AND asist.funcion_id = sfe.funcion_id ' +
                '                      AND asist.asignacion_id = sfe.asignacion_id ' +
                '                      AND asist.empleado_id = sfe.empleado_id ' +
                ' WHERE serv.activo = 1 ' +
                ' ORDER BY serv.cliente_id, serv.servicio_id, nombre_empleado ' +
                ') asist ' +
                ' WHERE (tipo_nomina = :tipo) OR (:tipo = ''T'')';
        qryAsistencia.Close;
        qryAsistencia.SQL.Clear;
        qryAsistencia.SQL.Add(xSQL);
        qryAsistencia.ParamByName('empresa').AsInteger := empresaId;
        qryAsistencia.ParamByName('anio').AsInteger    := anio;
        qryAsistencia.ParamByName('mes').AsInteger     := mes;
        qryAsistencia.ParamByName('dia').AsInteger     := dia;
        qryAsistencia.ParamByName('tipo').Value        := tipo;
        cdsAsistencia.Active := True;
     finally
            cdsAsistencia.EnableControls;
     end;
end;

procedure TdmMain.CargaClientes(empresaId, Estatus : Integer);
var
   xSQL : string;
begin
     try
        cdsClientes.DisableControls;
        cdsClientes.Active := False;
        xSQL := 'SELECT * ' +
                ' FROM clientes ' +
                ' WHERE empresa_id = :empresaId ' +
                '       AND activo = :activo ' +
                ' ORDER BY cliente_id DESC';
        qryClientes.Close;
        qryClientes.SQL.Clear;
        qryClientes.SQL.Add(xSQL);
        qryClientes.ParamByName('empresaId').AsInteger := empresaId;
        qryClientes.ParamByName('activo').AsInteger := Estatus;
        qryClientes.Open;
        cdsClientes.Active := True;
     finally
            cdsClientes.EnableControls;
     end;
end;

procedure TdmMain.CargaDatasetsAuxiliares;
begin
     dmMain.qryEmpresas.Close;
     dmMain.qryEmpresas.Open;

     dmMain.qryOficinas.Close;
     dmMain.qryOficinas.Open;

     dmMain.qryServiciosList.Close;
     dmMain.qryServiciosList.Open;

     dmMain.qryEstatusSP.Close;
     dmMain.qryEstatusSP.Open;

     dmMain.qryPuestos.Close;
     dmMain.qryPuestos.Open;

     dmMain.qryBancos.Close;
     dmMain.qryBancos.Open;

     dmMain.qryEscolaridad.Close;
     dmMain.qryEscolaridad.Open;

     dmMain.qryClientesList.Close;
     dmMain.qryClientesList.Open;

     dmMain.qryHorarios.Close;
     dmMain.qryHorarios.Open;

     dmMain.qryTiposFuncion.Close;
     dmMain.qryTiposFuncion.Open;

     dmMain.qryTiposCurso.Close;
     dmMain.qryTiposCurso.Open;
end;

procedure TdmMain.CargaAsistenciaDetalle(empresaId, anio, mes, dia: Integer);
var
   xSQL : string;
begin
     try
        cdsAsistenciaDetalle.DisableControls;
        cdsAsistenciaDetalle.Active := False;
        xSQL := 'SELECT asistencia.*, ' +
                '       CONCAT(TRIM(empleados.apellido_paterno),'' '',TRIM(empleados.apellido_materno),'' '',TRIM(empleados.nombres)) AS nombre_empleado, ' +
                '       servicios.descripcion AS descripcion_servicio, ' +
                '       tipos_funciones.descripcion AS descripcion_tipo_funcion ' +
                ' FROM asistencia ' +
                ' LEFT JOIN empleados ON empleados.empresa_id = asistencia.empresa_id AND empleados.empleado_id = asistencia.empleado_id ' +
                ' LEFT JOIN servicios ON servicios.empresa_id = asistencia.empresa_id AND servicios.servicio_id = asistencia.servicio_id ' +
                ' LEFT JOIN tipos_funciones ON tipos_funciones.id_tipo_funcion = asistencia.funcion_id ' +
                ' WHERE asistencia.empresa_id = :empresa_id ' +
                '       AND anio = :anio ' +
                '       AND mes = :mes ' +
                '       AND dia = :dia ' +
                ' ORDER BY servicio_id, empleado_id';
        qryAsistenciaDetalle.Close;
        qryAsistenciaDetalle.SQL.Clear;
        qryAsistenciaDetalle.SQL.Add(xSQL);
        qryAsistenciaDetalle.ParamByName('empresa_id').AsInteger := empresaId;
        qryAsistenciaDetalle.ParamByName('anio').AsInteger       := anio;
        qryAsistenciaDetalle.ParamByName('mes').AsInteger        := mes;
        qryAsistenciaDetalle.ParamByName('dia').AsInteger        := dia;
        cdsAsistenciaDetalle.Active := True;
     finally
            cdsAsistenciaDetalle.EnableControls;
     end;
end;

procedure TdmMain.CargaBitacoraEmpleado(empresaId, empleadoId: Integer);
var
   xSQL : string;
begin
     try
        xSQL := 'SELECT * ' +
                ' FROM bitacora_empleados ' +
                ' WHERE empresa_id = :empresa ' +
                '       AND empleado_id = :empleado ' +
                ' ORDER BY fecha DESC';
        qryBitacoraEmpleado.Close;
        qryBitacoraEmpleado.SQL.Clear;
        qryBitacoraEmpleado.SQL.Add(xSQL);
        qryBitacoraEmpleado.ParamByName('empresa').AsInteger := empresaId;
        qryBitacoraEmpleado.ParamByName('empleado').AsInteger := empleadoId;
        qryBitacoraEmpleado.Open;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.CargaBitacoraEmpleado. ' + E.Message);
     end;
end;

procedure TdmMain.CargaDetalleEmpleado(empresaId, empleado: integer);
var
   xSQL : string;
begin
     try
        xSQL := 'SELECT ' +
                '  e."nombres", ' +
                '  e."apellido_paterno", ' +
                '  e."apellido_materno", ' +
                '  e."rfc", ' +
                '  e."nss", ' +
                '  e."curp", ' +
                '  e."calle", ' +
                '  e."num_ext", ' +
                '  e."colonia", ' +
                '  e."domicilio_ciudad", ' +
                '  e."domicilio_estado", ' +
                '  e."codigo_postal", ' +
                '  e."telefono_domicilio", ' +
                '  e."telefono_celular", ' +
                '  e.activo, ' +
                '  e.motivo_baja, ' +
                '  e.comentarios_baja, ' +
                '  "foto" ' +
                'FROM empleados_fotos ef ' +
                'LEFT JOIN empleados e ON e."empleado_id" = ef."empleado_id" ' +
                'WHERE e.empresa_id = :empresaId ' +
                '      AND ef."empleado_id" = :empleado';
        qryDetalleEmpleado.Close;
        qryDetalleEmpleado.SQL.Clear;
        qryDetalleEmpleado.SQL.Add(xSQL);
        qryDetalleEmpleado.ParamByName('empresaId').AsInteger := empresaId;
        qryDetalleEmpleado.ParamByName('empleado').AsInteger := empleado;
        qryDetalleEmpleado.Open;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.CargaDetalleEmpleado. ' + E.Message);
     end;
end;

procedure TdmMain.CargaEmpleados(empresaId, Estatus : Integer);
var
   xSQL : string;
begin
     try
        cdsEmpleados.DisableControls;
        cdsEmpleados.Active := False;
        xSQL := 'SELECT ' +
                '   e.empleado_id, ' +
                '   e.activo, ' +
                '   TRIM( COALESCE( e.nombres, '''' ) ) || '' '' || TRIM( COALESCE( e.apellido_paterno, '''' ) ) || '' '' || TRIM( COALESCE( e.apellido_materno, '''' ) ) AS nombre_empleado, ' +
                '   estatus_sp.descripcion AS descripcion_estatus, ' +
                '   empresas."RazonSocial", ' +
                '   oficinas."Descripcion" AS descripcion_oficina, ' +
                '   COALESCE(servicios."descripcion",''S I N  A S I G N A C I Ó N'') AS descripcion_servicio, ' +
                '   e.rfc, ' +
                '   e.fecha_alta, ' +
                '   TRIM(COALESCE(e.calle,'''') || '' '' || COALESCE(e.num_ext,'''') || '' '' || COALESCE(e.colonia)) AS domicilio, ' +
                '   e.cuip, ' +
                '   e.nacimiento_fecha, ' +
                '   e.nss, ' +
                '   e.reingreso ' +
                ' FROM empleados e ' +
                ' LEFT JOIN estatus_sp ON estatus_sp.estatus_sp_id = e.estatus_sp_id ' +
                ' LEFT JOIN empresas ON empresas."Empresa" = e.empresa_id ' +
                ' LEFT JOIN oficinas ON oficinas."Oficina" = e.oficina_id ' +
                ' LEFT JOIN servicios ON servicios."servicio_id" = e."servicio_id" ' +
                ' WHERE e.empresa_id = :empresaId ' +
                '       AND e.activo = :estatus' +
                ' ORDER BY e.empleado_id DESC';
        qryEmpleados.Close;
        qryEmpleados.SQL.Clear;
        qryEmpleados.SQL.Add(xSQL);
        qryEmpleados.ParamByName('empresaId').AsInteger := empresaId;
        qryEmpleados.ParamByName('estatus').AsInteger   := Estatus;
        qryEmpleados.Open;
        cdsEmpleados.Active := True;
     finally
            cdsEmpleados.EnableControls;
     end;
end;

procedure TdmMain.CargaEmpleadosListado(empresaId: Integer);
var
   xSQL : string;
begin
     try
        cdsEmpleadosList.DisableControls;
        cdsEmpleadosList.Active := False;
        xSQL := 'SELECT ' +
                '  e.empleado_id, ' +
                '  CONCAT(TRIM(e.apellido_paterno),'' '',TRIM(e.apellido_materno),'' '',TRIM(e.nombres)) AS nombre_empleado ' +
                'FROM empleados e ' +
                'LEFT JOIN servicios_funciones_empleados sfe ON sfe.empresa_id = e.empresa_id AND sfe.empleado_id = e.empleado_id ' +
                'WHERE e.activo = ''1'' ' +
                '      AND sfe.servicio_id IS NULL ' +
                '      AND e.empresa_id = :empresa_id ' +
                'ORDER BY ' +
                '  nombres, ' +
                '  apellido_paterno, ' +
                '  apellido_materno';
        qryEmpleadosList.Close;
        qryEmpleadosList.SQL.Clear;
        qryEmpleadosList.SQL.Add(xSQL);
        qryEmpleadosList.ParamByName('empresa_id').AsInteger := empresaId;
        qryEmpleadosList.Open;
        cdsEmpleadosList.Active := True;
     finally
            cdsEmpleadosList.EnableControls;
     end;
end;

procedure TdmMain.CargaEquipo(empresaId, estatus: Integer);
var
   xSQL : string;
begin
     try
        cdsEquipo.DisableControls;
        cdsEquipo.Active := False;
        xSQL := 'SELECT ' +
                '      equipo_id, ' +
                '      tipo, ' +
                '      descripcion, ' +
                '      marca, ' +
                '      proveedor_nombre ' +
                ' FROM equipo ' +
                ' WHERE empresa_id = :empresa ' +
                '       AND activo = :estatus ' +
                ' ORDER BY equipo_id';
        qryEquipo.Close;
        qryEquipo.SQL.Clear;
        qryEquipo.SQL.Add(xSQL);
        qryEquipo.ParamByName('empresa').AsInteger := empresaId;
        qryEquipo.ParamByName('estatus').AsInteger := estatus;
        qryEquipo.Open;
        cdsEquipo.Active := True;
     finally
            cdsEquipo.EnableControls;
     end;
end;

procedure TdmMain.CargaEquipoListado(empresaId: Integer; Servicio, Descripcion : string);
var
   xSQL : string;
begin
     try
        cdsEquipoList.DisableControls;
        cdsEquipoList.Active := False;
        xSQL := 'SELECT ' +
                '   equipo_id, ' +
                '   tipo, ' +
                '   descripcion, ' +
                '   marca, ' +
                '   modelo ' +
                ' FROM equipo ' +
                ' WHERE activo = ''1'' ' +
                '       AND empresa_id = :empresa_id ' +
                '       AND descripcion LIKE ''%' + Descripcion + '''%' +
                '       AND equipo_id NOT IN ( ' +
                '                             SELECT equipo_id ' +
                '                             FROM servicios_equipo ' +
                '                             WHERE empresa_id = :empresa_id ' +
                '                                   AND servicio_id = :servicio ' +
                '                            )';
        qryEquipoList.Close;
        qryEquipoList.SQL.Clear;
        qryEquipoList.SQL.Add(xSQL);
        qryEquipoList.ParamByName('empresa_id').AsInteger := empresaId;
        qryEquipoList.ParamByName('servicio').AsString := Servicio;
        qryEquipoList.Open;
        cdsEquipoList.Active := True;
     finally
            cdsEquipoList.EnableControls;
     end;
end;

procedure TdmMain.CargaEquipoServicio(empresaId: Integer; servicioId: String);
begin
     try
        cdsServiciosEquipo.DisableControls;
        cdsServiciosEquipo.Active := False;
        qryServiciosEquipo.Close;
        qryServiciosEquipo.ParamByName('empresa_id').AsInteger := empresaId;
        qryServiciosEquipo.ParamByName('servicio_id').AsString := servicioId;
        qryServiciosEquipo.Open;
        cdsServiciosEquipo.Active := True;
     finally
            cdsServiciosEquipo.EnableControls;
     end;
end;

procedure TdmMain.CargaFotoEmpleado(empresaId, empleado: integer);
var
   xSQL : string;
begin
     try
        xSQL := 'SELECT ' +
                '  "foto" ' +
                'FROM empleados_fotos ef ' +
                'WHERE ef.empresa_id = :empresaId ' +
                '      AND ef."empleado_id" = :empleado';
        qryDetalleEmpleado.Close;
        qryDetalleEmpleado.SQL.Clear;
        qryDetalleEmpleado.SQL.Add(xSQL);
        qryDetalleEmpleado.ParamByName('empresaId').AsInteger := empresaId;
        qryDetalleEmpleado.ParamByName('empleado').AsInteger := empleado;
        qryDetalleEmpleado.Open;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.CargaFotoEmpleado. ' + E.Message);
     end;
end;

procedure TdmMain.CargaFunciones(empresaId: Integer; id: string);
begin
     try
        cdsServiciosFunciones.DisableControls;
        cdsServiciosFunciones.Active := False;
        qryServiciosFunciones.Close;
        qryServiciosFunciones.ParamByName('empresa_id').AsInteger := empresaId;
        qryServiciosFunciones.ParamByName('servicio_id').AsString := id;
        qryServiciosFunciones.Open;
        cdsServiciosFunciones.Active := True;
     finally
            cdsServiciosFunciones.EnableControls;
     end;
end;

procedure TdmMain.CargaFuncionesEmpleados(empresaId: Integer; id: string);
begin
     try
        cdsServiciosFuncionesEmpleados.DisableControls;
        cdsServiciosFuncionesEmpleados.Active := False;
        qryServiciosFuncionesEmpleados.Close;
        qryServiciosFuncionesEmpleados.ParamByName('empresa_id').AsInteger := empresaId;
        qryServiciosFuncionesEmpleados.ParamByName('servicio_id').AsString := id;
        qryServiciosFuncionesEmpleados.Open;
        cdsServiciosFuncionesEmpleados.Active := True;
     finally
            cdsServiciosFuncionesEmpleados.EnableControls;
     end;
end;

function TdmMain.CargaInfoVehiculo(empresaId, id: Integer): TInfoVehiculo;
var
   xSQL : string;
begin
     Result.Marca  := '';
     Result.Modelo := '';
     Result.Color  := '';
     try
       xSQL := 'SELECT marca, modelo, color ' +
               ' FROM vehiculos ' +
               ' WHERE empresa_id = :empresaId ' +
               '       AND vehiculo_id = :vehiculo';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empresaId').AsInteger := empresaId;
       qryAux2.ParamByName('vehiculo').AsInteger  := id;
       qryAux2.Open;
       if not qryAux2.IsEmpty then
          begin
               Result.Marca  := qryAux2.FieldByName('marca').AsString;
               Result.Modelo := qryAux2.FieldByName('modelo').AsString;
               Result.Color  := qryAux2.FieldByName('color').AsString;
          end;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.CargaInfoVehiculo. ' + E.Message);
     end;
end;

procedure TdmMain.CargaMovimientosAlmacen(empresaId: Integer; fecha_ini,
  fecha_fin: TDateTime; estatus1, estatus2 : string);
var
   xSQL : string;
begin
     try
        cdsMovtosAlmacen.DisableControls;
        cdsMovtosAlmacen.Active := False;
        xSQL := 'SELECT ' +
                '      id_movto_almacen, ' +
                '      CASE ' +
                '          WHEN tipo_movto = ''E'' THEN ''ENTRADA'' ' +
                '          ELSE ''SALIDA'' ' +
                '      END tipo_movto, ' +
                '      fecha_movto, ' +
                '      proveedor, ' +
                '      referencia, ' +
                '      ( ' +
                '          SELECT SUM( cantidad * costo ) ' +
                '          FROM movtos_almacen_detalle md ' +
                '          WHERE md.id_movto_almacen = ma.id_movto_almacen ' +
                '                AND md.empresa_id = ma.empresa_id ' +
                '      ) AS total ' +
                '  FROM movtos_almacen ma ' +
                '  WHERE empresa_id = :empresa_id ' +
                '        AND ( ' +
                '             estatus = :estatus1 ' +
                '             OR estatus = :estatus2 ' +
                '            ) ' +
                '        AND fecha_movto between :fini AND :ffin';
        qryMovtosAlmacen.Close;
        qryMovtosAlmacen.SQL.Clear;
        qryMovtosAlmacen.SQL.Add(xSQL);
        qryMovtosAlmacen.ParamByName('empresa_id').AsInteger := empresaId;
        qryMovtosAlmacen.ParamByName('fini').AsDateTime      := fecha_ini;
        qryMovtosAlmacen.ParamByName('ffin').AsDateTime      := fecha_fin;
        qryMovtosAlmacen.ParamByName('estatus1').AsString    := estatus1;
        qryMovtosAlmacen.ParamByName('estatus2').AsString    := estatus2;
        qryMovtosAlmacen.Open;
        cdsMovtosAlmacen.Active := True;
     finally
            cdsMovtosAlmacen.EnableControls;
     end;
end;

procedure TdmMain.CargaReporte(tipoReporte, id: Integer; cve : string);
var
   xSQL : string;
begin
     case tipoReporte of
        1 :
          begin
               xSQL := 'SELECT ' +
                       '   e."empleado_id", ' +
                       '   concat_ws( ' +
                       '     '' '', ' +
                       '     TRIM(e."nombres"), ' +
                       '     TRIM(e."apellido_paterno"), ' +
                       '     TRIM(e."apellido_materno") ' +
                       '   ) nombre, ' +
                       '   tp."Descripcion" descripcion_puesto, ' +
                       '   nss, ' +
                       '   tipo_sangre, ' +
                       '   foto ' +
                       ' FROM empleados e ' +
                       ' LEFT JOIN tipospuesto tp ON tp."Puesto" = e."puesto_id" ' +
                       ' LEFT JOIN empleados_fotos ef ON ef."empleado_id" = e."empleado_id" ' +
                       ' WHERE e."empleado_id" = :empleadoId';
               qryReporte.Close;
               qryReporte.SQL.Clear;
               qryReporte.SQL.Add(xSQL);
               qryReporte.ParamByName('empleadoId').AsInteger := id;
               qryReporte.Open;
          end;
        2 :
          begin
               xSQL := 'SELECT ' +
                       '      TRIM(nombres) AS nombres, ' +
                       '      TRIM(apellido_paterno) AS apellido_paterno, ' +
                       '      TRIM(apellido_materno) AS apellido_materno, ' +
                       '   CONCAT_WS('' '', calle, num_ext) AS domicilio, ' +
                       '   colonia, ' +
                       '   telefono_domicilio, ' +
                       '   codigo_postal, ' +
                       '   domicilio_ciudad, ' +
                       '   domicilio_estado, ' +
                       '   nss, ' +
                       '   curp, ' +
                       '   numero_cartilla, ' +
                       '   ife_folio, ' +
                       '   CASE WHEN estado_civil_id = 1 THEN ''SOLTERO'' ' +
                       '        WHEN estado_civil_id = 2 THEN ''CASADO'' ' +
                       '        WHEN estado_civil_id = 3 THEN ''VIUDO'' ' +
                       '        WHEN estado_civil_id = 4 THEN ''DIVORCIADO'' ' +
                       '        WHEN estado_civil_id = 5 THEN ''UNION LIBRE'' ' +
                       '   END estado_civil, ' +
                       '   rfc, ' +
                       '   nacimiento_ciudad, ' +
                       '   tiposestudios."Descripcion" AS escolaridad, ' +
                       '   tipospuesto."Descripcion" AS Puesto, ' +
                       '   to_char(fecha_alta,''DD/MM/YYYY'') AS fecha_alta, ' +
                       '   empleados."empleado_id", ' +
                       '   "RefTrabAnt1Empresa", ' +
                       '   "RefTrabAnt1Direccion", ' +
                       '   "RefTrabAnt1Ciudad", ' +
                       '   "RefTrabAnt1Telefono", ' +
                       '   "RefTrabAnt1Ramo", ' +
                       '   "RefTrabAnt1Puesto", ' +
                       '   "RefTrabAnt1Duracion", ' +
                       '   "RefTrabAnt1MotivoSeparacion", ' +
                       '   "RefTrabAnt1Observaciones", ' +
                       '   "RefTrabAnt2Empresa", ' +
                       '   "RefTrabAnt2Direccion", ' +
                       '   "RefTrabAnt2Ciudad", ' +
                       '   "RefTrabAnt2Telefono", ' +
                       '   "RefTrabAnt2Ramo", ' +
                       '   "RefTrabAnt2Puesto", ' +
                       '   "RefTrabAnt2Duracion", ' +
                       '   "RefTrabAnt2MotivoSeparacion", ' +
                       '   "RefTrabAnt2Observaciones", ' +
                       '   "RefPadreNombre", ' +
                       '   "RefPadreDireccion", ' +
                       '   "RefPadreTelefono", ' +
                       '   "RefMadreNombre", ' +
                       '   "RefMadreDireccion", ' +
                       '   "RefMadreTelefono", ' +
                       '  CONCAT_WS('' '',trim("Ref1Nombres"),trim("Ref1Paterno"),trim("Ref1Materno")) AS ref1_nombre, ' +
                       '  CONCAT_WS('' '',trim("Ref1Calle"),trim("Ref1NumExt"),trim("Ref1Colonia")) AS ref1_domicilio, ' +
                       '  "Ref1Telefono" AS ref1_telefono, ' +
                       '  "Ref1Parentesco" AS ref1_parentesco, ' +
                       '  CONCAT_WS('' '',trim("Ref2Nombres"),trim("Ref2Paterno"),trim("Ref2Materno")) AS ref2_nombre, ' +
                       '  CONCAT_WS('' '',trim("Ref2Calle"),trim("Ref2NumExt"),trim("Ref2Colonia")) AS ref2_domicilio, ' +
                       '  "Ref2Telefono" AS ref2_telefono, ' +
                       '  "Ref2Parentesco" AS ref2_parentesco, ' +
                       '  CONCAT_WS('' '',trim("Ref3Nombres"),trim("Ref3Paterno"),trim("Ref3Materno")) AS ref3_nombre, ' +
                       '  CONCAT_WS('' '',trim("Ref3Calle"),trim("Ref3NumExt"),trim("Ref3Colonia")) AS ref3_domicilio, ' +
                       '  "Ref3Telefono" AS ref3_telefono, ' +
                       '  "Ref3Parentesco" AS ref3_parentesco, ' +
                       '  CONCAT_WS('' '',trim("Ref4Nombres"),trim("Ref4Paterno"),trim("Ref4Materno")) AS ref4_nombre, ' +
                       '  CONCAT_WS('' '',trim("Ref4Calle"),trim("Ref4NumExt"),trim("Ref4Colonia")) AS ref4_domicilio, ' +
                       '  "Ref4Telefono" AS ref4_telefono, ' +
                       '  "Ref4Parentesco" AS ref4_parentesco, ' +
                       '   CASE WHEN licencia_conducir_folio <> NULL THEN ''SI'' ELSE ''NO'' END AS tiene_licencia, ' +
                       '   CASE WHEN licencia_conducir_folio <> NULL THEN '''' ELSE licencia_conducir_folio END AS licencia_folio, ' +
                       '   pasaporte, ' +
                       '   estatura, ' +
                       '   peso, ' +
                       '   color_piel, ' +
                       '   color_ojos, ' +
                       '   tipo_cabello, ' +
                       '   foto ' +
                       ' FROM empleados ' +
                       ' LEFT JOIN tiposestudios ON tiposestudios."Estudios" = empleados."escolaridad_id" ' +
                       ' LEFT JOIN tipospuesto ON tipospuesto."Puesto" = empleados."puesto_id" ' +
                       ' LEFT JOIN empleados_fotos ON empleados_fotos."empleado_id" = empleados.empleado_id ' +
                       ' WHERE empleados."empleado_id" = :empleadoId';
               qryReporte.Close;
               qryReporte.SQL.Clear;
               qryReporte.SQL.Add(xSQL);
               qryReporte.ParamByName('empleadoId').AsInteger := id;
               qryReporte.Open;
          end;
        4 :
          begin
               xSQL := 'SELECT clientes.*, ' +
                       '       CONCAT_WS('' '', DomCiudad, DATE_FORMAT(fechaini,''%d/%m/%Y'')) ciudad_fecha, ' +
                       '       CONCAT_WS('' '', DomCalle, DomNoExt, DomColonia) domicilio ' +
                       ' FROM clientes WHERE cliente_id = :clienteId';
               qryReporte.Close;
               qryReporte.SQL.Clear;
               qryReporte.SQL.Add(xSQL);
               qryReporte.ParamByName('clienteId').AsString := cve;
               qryReporte.Open;
          end;
     end;
end;

procedure TdmMain.CargaServicios(empresaId, estatus : Integer);
var
   xSQL : string;
begin
     try
        cdsServicios.DisableControls;
        cdsServicios.Active := False;
        xSQL := 'SELECT ' +
                '  servicio_id, ' +
                '  servicios.descripcion, ' +
                '  servicios.cliente_id, ' +
                '  clientes.descripcion AS cliente_descripcion, ' +
                '  servicios."RepSeg", ' +
                '  servicios."RepSegTD", ' +
                '  servicios."RepSegEmail" ' +
                'FROM servicios ' +
                'LEFT JOIN clientes ON clientes.cliente_id = servicios.cliente_id ' +
                'WHERE servicios.empresa_id = :empresaId ' +
                '      AND servicios."activo" = :estatus';
        qryServicios.Close;
        qryServicios.SQL.Clear;
        qryServicios.SQL.Add(xSQL);
        qryServicios.ParamByName('empresaId').AsInteger := empresaId;
        qryServicios.ParamByName('estatus').AsInteger := Estatus;
        qryServicios.Open;
        cdsServicios.Active := True;
     finally
            cdsServicios.EnableControls;
     end;
end;

procedure TdmMain.CargaServiciosCliente(empresaId: Integer; id: string);
begin
     try
        cdsServiciosCliente.DisableControls;
        cdsServiciosCliente.Active := False;
        qryServiciosCliente.Close;
        qryServiciosCliente.ParamByName('empresa_id').AsInteger := empresaId;
        qryServiciosCliente.ParamByName('cliente_id').AsString := id;
        qryServiciosCliente.Open;
        cdsServiciosCliente.Active := True;
     finally
            cdsServiciosCliente.EnableControls;
     end;
end;

procedure TdmMain.CargaUsuarios;
var
   xSQL : string;
begin
     try
        cdsUsuarios.DisableControls;
        cdsUsuarios.Active := False;
        xSQL := 'SELECT * FROM usuarios WHERE nombre <> ''ADMIN'' ORDER BY nombre';
        qryUsuarios.Close;
        qryUsuarios.SQL.Clear;
        qryUsuarios.SQL.Add(xSQL);
        qryUsuarios.Open;
        cdsUsuarios.Active := True;
     finally
            cdsUsuarios.EnableControls;
     end;
end;

procedure TdmMain.CargaVehiculos(empresaId, estatus : Integer);
var
   xSQL : string;
begin
     try
        cdsVehiculos.DisableControls;
        cdsVehiculos.Active := False;
        xSQL := 'SELECT ' +
                '  vehiculo_id, ' +
                '  Marca, ' +
                '  SubMarca, ' +
                '  Modelo, ' +
                '  Color, ' +
                '  Placas, ' +
                '  placas_origen ' +
                'FROM ' +
                '  vehiculos' +
                ' WHERE empresa_id = :empresa ' +
                ' AND activo = :estatus ' +
                ' ORDER BY vehiculo_id';
        qryVehiculos.Close;
        qryVehiculos.SQL.Clear;
        qryVehiculos.SQL.Add(xSQL);
        qryVehiculos.ParamByName('empresa').AsInteger := empresaId;
        qryVehiculos.ParamByName('estatus').AsInteger := estatus;
        qryVehiculos.Open;
        cdsVehiculos.Active := True;
     finally
            cdsVehiculos.EnableControls;
     end;
end;

procedure TdmMain.CargaVehiculosCombustible(empresaId, vehiculoId : Integer);
var
   xSQL : string;
begin
     try
        cdsVehiculosCombustible.DisableControls;
        cdsVehiculosCombustible.Active := False;
        xSQL := 'SELECT vc.*, ' +
                '       CASE WHEN tipo_combustible = 1 THEN ''MAGNA'' ' +
                '            WHEN tipo_combustible = 2 THEN ''PREMIUM'' ' +
                '            WHEN tipo_combustible = 3 THEN ''DIESEL'' ' +
                '            WHEN tipo_combustible = 4 THEN ''GAS'' ' +
                '            WHEN tipo_combustible = 5 THEN ''OTRO'' ' +
                '       END AS TipoCombustible ' +
                ' FROM vehiculos_combustible vc ' +
                ' WHERE empresa_id = :empresaId ' +
                '       AND vehiculo_id = :vehiculoId ' +
                ' ORDER BY fecha DESC';
        qryVehiculosCombustible.Close;
        qryVehiculosCombustible.SQL.Clear;
        qryVehiculosCombustible.SQL.Add(xSQL);
        qryVehiculosCombustible.ParamByName('empresaId').AsInteger := empresaId;
        qryVehiculosCombustible.ParamByName('vehiculoId').AsInteger := vehiculoId;
        qryVehiculosCombustible.Open;
        cdsVehiculosCombustible.Active := True;
     finally
            cdsVehiculosCombustible.EnableControls;
     end;
end;

procedure TdmMain.CargaVehiculosReparaciones(empresaId, vehiculoId: Integer);
var
   xSQL : string;
begin
     try
        cdsVehiculosReparaciones.DisableControls;
        cdsVehiculosReparaciones.Active := False;
        xSQL := 'SELECT vr.* ' +
                ' FROM vehiculos_reparaciones vr ' +
                ' WHERE empresa_id = :empresaId ' +
                '       AND vehiculo_id = :vehiculoId ' +
                ' ORDER BY fecha_entrada DESC';
        qryVehiculosReparaciones.Close;
        qryVehiculosReparaciones.SQL.Clear;
        qryVehiculosReparaciones.SQL.Add(xSQL);
        qryVehiculosReparaciones.ParamByName('empresaId').AsInteger := empresaId;
        qryVehiculosReparaciones.ParamByName('vehiculoId').AsInteger := vehiculoId;
        qryVehiculosReparaciones.Open;
        cdsVehiculosReparaciones.Active := True;
     finally
            cdsVehiculosReparaciones.EnableControls;
     end;
end;

procedure TdmMain.ConsultaAsistencia(empresaId: Integer; fechaIni, fechaFin: TDateTime);
var
   xSQL : string;
   i : Integer;
begin
     xSQL := '';
     for i := 0 to DaysBetween(fechaIni,fechaFin) do
         if Trim(xSQL) <> '' then
            xSQL := xSQL + ',0 AS "' + StringReplace(FormatDateTime('ddd dd',IncDay(fechaIni,i)),'. ','',[rfReplaceAll]) + '"'
         else
             xSQL := '0 AS "' + StringReplace(FormatDateTime('ddd dd',IncDay(fechaIni,i)),'. ','',[rfReplaceAll]) + '"';

     try
        cdsAsistencia.DisableControls;
        dspAsistencia.DataSet := memAsistencia;

        xSQL := 'SELECT DISTINCT cast(TRIM( empleados.nombres || '' '' || empleados.apellido_paterno || '' '' || empleados.apellido_materno ) as varchar(100)) AS nombre_empleado, ' +
                '       servicios.descripcion AS descripcion_servicio, ' + xSQL +
                ' FROM asistencia ' +
                ' LEFT JOIN empleados ON asistencia.empresa_id = empleados.empresa_id AND empleados.empleado_id = asistencia.empleado_id ' +
                ' LEFT JOIN servicios ON asistencia.empresa_id = servicios.empresa_id AND servicios.servicio_id = asistencia.servicio_id ' +
                ' WHERE asistencia.empresa_id = :empresa ' +
                '       AND asistencia.fecha_asistencia BETWEEN :fini AND :ffin ' +
                ' ORDER BY descripcion_servicio, nombre_empleado';
        qryAsistencia.Close;
        qryAsistencia.SQL.Clear;
        qryAsistencia.SQL.Add(xSQL);
        qryAsistencia.ParamByName('empresa').AsInteger := empresaId;
        qryAsistencia.ParamByName('fini').AsDate := fechaIni;
        qryAsistencia.ParamByName('ffin').AsDate := fechaFin;
        qryAsistencia.Open;

        memAsistencia.Close;
        memAsistencia.Open;
        memAsistencia.CreateFieldsFromDataSet(qryAsistencia);
        memAsistencia.LoadFromDataSet(qryAsistencia);

        xSQL := 'SELECT cast(TRIM( empleados.nombres || '' '' || empleados.apellido_paterno || '' '' || empleados.apellido_materno ) as varchar(100)) AS nombre_empleado, ' +
                '       servicios.descripcion AS descripcion_servicio, ' +
                '       CASE when to_char(fecha_asistencia,''D'') = ''1'' THEN ''dom''  || to_char(fecha_asistencia,''dd'') ' +
                '            when to_char(fecha_asistencia,''D'') = ''2'' THEN ''lun''  || to_char(fecha_asistencia,''dd'') ' +
                '            when to_char(fecha_asistencia,''D'') = ''3'' THEN ''mar''  || to_char(fecha_asistencia,''dd'') ' +
                '            when to_char(fecha_asistencia,''D'') = ''4'' THEN ''mié''  || to_char(fecha_asistencia,''dd'') ' +
                '            when to_char(fecha_asistencia,''D'') = ''5'' THEN ''jue''  || to_char(fecha_asistencia,''dd'') ' +
                '            when to_char(fecha_asistencia,''D'') = ''6'' THEN ''vie''  || to_char(fecha_asistencia,''dd'') ' +
                '            when to_char(fecha_asistencia,''D'') = ''7'' THEN ''sáb''  || to_char(fecha_asistencia,''dd'') ' +
                '       END AS dia, ' +
                '    dia, ' +
                '    CASE WHEN tipo_registro = 0 THEN '''' ' +
                '      WHEN tipo_registro = 1 THEN ''Descanso'' ' +
                '      WHEN tipo_registro = 2 THEN ''Falta'' ' +
                '    END AS tipo, ' +
                '    DATE_PART(''hour'', hora_salida - hora_entrada ) AS horas, ' +
                '    asistencia.observaciones ' +
                ' FROM asistencia ' +
                ' LEFT JOIN empleados ON asistencia.empresa_id = empleados.empresa_id AND empleados.empleado_id = asistencia.empleado_id ' +
                ' LEFT JOIN servicios ON asistencia.empresa_id = servicios.empresa_id AND servicios.servicio_id = asistencia.servicio_id ' +
                ' WHERE asistencia.empresa_id = :empresa ' +
                '       AND asistencia.fecha_asistencia BETWEEN :fini AND :ffin ' +
                ' ORDER BY fecha_asistencia, asistencia.servicio_id';
        qryAsistencia.Close;
        qryAsistencia.SQL.Clear;
        qryAsistencia.SQL.Add(xSQL);
        qryAsistencia.ParamByName('empresa').AsInteger := empresaId;
        qryAsistencia.ParamByName('fini').AsDate := fechaIni;
        qryAsistencia.ParamByName('ffin').AsDate := fechaFin;
        qryAsistencia.Open;
        qryAsistencia.First;
        while not qryAsistencia.Eof do
              begin
                   if memAsistencia.Locate('nombre_empleado;descripcion_servicio',VarArrayOf([qryAsistencia.FieldByName('nombre_empleado').AsString,qryAsistencia.FieldByName('descripcion_servicio').AsString]),[]) then
                      begin
                           memAsistencia.Edit;
                           memAsistencia.FieldByName(qryAsistencia.FieldByName('dia').AsString).AsInteger := qryAsistencia.FieldByName('horas').AsInteger;
                           memAsistencia.Post;
                      end;
                   qryAsistencia.Next;
              end;

        cdsAsistencia.Close;
        cdsAsistencia.Open;
        cdsAsistencia.Close;
        cdsAsistencia.Open;
     finally
            cdsAsistencia.EnableControls;
     end;
end;

procedure TdmMain.CopiarInfoCliente(empresaId : Integer; clienteId: string);
var
   xSQL : string;
begin
     try
       xSQL := 'SELECT "RepSeg", "RepSegTD", "RepSegTC", "RepSegEmail" FROM clientes ' +
               ' WHERE empresa_id = :empresaId ' +
               '       AND cliente_id = :cliente';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empresaId').AsInteger := empresaId;
       qryAux2.ParamByName('cliente').AsString := clienteId;
       qryAux2.Open;
       with dsServiciosEdit.DataSet do
            begin
                 FieldByName('RepSeg').AsString      := qryAux2.FieldByName('RepSeg').AsString;
                 FieldByName('RepSegTD').AsString    := qryAux2.FieldByName('RepSegTD').AsString;
                 FieldByName('RepSegTC').AsString    := qryAux2.FieldByName('RepSegTC').AsString;
                 FieldByName('RepSegEmail').AsString := qryAux2.FieldByName('RepSegEmail').AsString;
            end;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.CoparInfoCliente. ' + E.Message);
     end;
end;

procedure TdmMain.EliminarEquipo(empresaId: Integer; servicio: string; equipoId: Integer);
var
   xSQL : string;
begin
     try
        xSQL := 'DELETE FROM servicios_equipo ' +
                ' WHERE empresa_id = :empresa_id ' +
                '       AND servicio_id = :servicio_id ' +
                '       AND equipo_id = :equipo_id ';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('empresa_id').AsInteger := empresaId;
        qryAux.ParamByName('servicio_id').AsString := servicio;
        qryAux.ParamByName('equipo_id').AsInteger  := equipoId;
        qryAux.ExecSQL;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.EliminarEquipo. ' + E.Message);
     end;
end;

procedure TdmMain.EliminarFuncion(empresaId: Integer; servicioId: String; funcionId: Integer);
var
   xSQL : string;
begin
     try
        qryServiciosFuncionesEdit.Close;
        qryServiciosFuncionesEdit.ParamByName('empresa_id').AsInteger := empresaId;
        qryServiciosFuncionesEdit.ParamByName('servicio_id').AsString := servicioId;
        qryServiciosFuncionesEdit.ParamByName('funcion_id').AsInteger := funcionId;
        qryServiciosFuncionesEdit.Open;
        qryServiciosFuncionesEdit.Delete;

        xSQL := 'SELECT empleado_id ' +
                ' FROM servicios_funciones_empleados ' +
                ' WHERE empresa_id = :empresaId ' +
                '       AND servicio_id = :servicioId ' +
                '       AND funcion_id = :funcionId';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('empresaId').AsInteger := empresaId;
        qryAux.ParamByName('servicioId').AsString := servicioId;
        qryAux.ParamByName('funcionId').AsInteger := funcionId;
        qryAux.Open;
        qryAux.First;
        while not qryAux.Eof do
              begin
                   if not qryAux.FieldByName('empleado_id').IsNull then
                      begin
                           xSQL := 'UPDATE empleados ' +
                                   ' SET servicio_id = NULL ' +
                                   ' WHERE empresa_id = :empresaId ' +
                                   '       AND empleado_id = :empleadoId';
                           qryAux2.Close;
                           qryAux2.SQL.Clear;
                           qryAux2.SQL.Add(xSQL);
                           qryAux2.ParamByName('empresaId').AsInteger  := empresaId;
                           qryAux2.ParamByName('empleadoId').AsInteger := qryAux.FieldByName('empleado_id').AsInteger;
                           qryAux2.ExecSQL;
                      end;
                   qryAux.Next;
              end;

        xSQL := 'DELETE FROM servicios_funciones_empleados' +
                ' WHERE empresa_id = :empresaId ' +
                '       AND servicio_id = :servicioId ' +
                '       AND funcion_id = :funcionId';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('empresaId').AsInteger := empresaId;
        qryAux.ParamByName('servicioId').AsString := servicioId;
        qryAux.ParamByName('funcionId').AsInteger := funcionId;
        qryAux.ExecSQL;

        xSQL := 'DELETE FROM servicios_preasignacion_semanal' +
                ' WHERE empresa_id = :empresaId ' +
                '       AND servicio_id = :servicioId ' +
                '       AND funcion_id = :funcionId';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('empresaId').AsInteger := empresaId;
        qryAux.ParamByName('servicioId').AsString := servicioId;
        qryAux.ParamByName('funcionId').AsInteger := funcionId;
        qryAux.ExecSQL;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.ExisteClienteId. ' + E.Message);
     end;
end;

function TdmMain.ExisteClienteId(empresaId : Integer; id: string): Boolean;
var
   xSQL : string;
begin
     try
       xSQL := 'SELECT cliente_id FROM clientes ' +
               ' WHERE empresa_id = :empresaId ' +
               '       AND cliente_id = :cliente';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empresaId').AsInteger := empresaId;
       qryAux2.ParamByName('cliente').AsString    := id;
       qryAux2.Open;
       Result := not qryAux2.IsEmpty;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.ExisteClienteId. ' + E.Message);
     end;
end;

function TdmMain.ExisteEmpleado(nombre: string): Boolean;
var
   xSQL : string;
begin
     Result := False;
     try
       xSQL := 'SELECT empleado_id ' +
               ' FROM empleados ' +
               ' WHERE TRIM( TRIM(nombres) || '' '' || TRIM(apellido_paterno) || '' '' || TRIM(apellido_materno) ) = :empleado_nombre';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empleado_nombre').AsString := nombre;
       qryAux2.Open;
       Result := not qryAux2.IsEmpty;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.ExisteEmpleado. ' + E.Message);
     end;
end;

function TdmMain.ExisteServicioFuncion(servicioId: string; empresaId, funcionId, asignacionId: Integer): Boolean;
var
   xSQL : string;
begin
     try
       xSQL := 'SELECT funcion_id ' +
               ' FROM servicios_funciones_empleados ' +
               ' WHERE empresa_id = :empresa ' +
               '       AND servicio_id = :servicio ' +
               '       AND funcion_id = :funcion ' +
               '       AND asignacion_id = :asignacion';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('servicio').AsString    := servicioId;
       qryAux2.ParamByName('empresa').AsInteger    := empresaId;
       qryAux2.ParamByName('funcion').AsInteger    := funcionId;
       qryAux2.ParamByName('asignacion').AsInteger := asignacionId;
       qryAux2.Open;
       Result := not qryAux2.IsEmpty;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.ExisteServicioFuncion. ' + E.Message);
     end;
end;

function TdmMain.ExisteServicioId(empresaId : Integer; id: string): Boolean;
var
   xSQL : string;
begin
     try
       xSQL := 'SELECT servicio_id ' +
               ' FROM servicios ' +
               ' WHERE empresa_id = :empresaId ' +
               '       AND servicio_id = :servicio';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empresaId').AsInteger := empresaId;
       qryAux2.ParamByName('servicio').AsString   := id;
       qryAux2.Open;
       Result := not qryAux2.IsEmpty;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.ExisteServicioId. ' + E.Message);
     end;
end;

function TdmMain.ExisteUsuario(nombre: string): Boolean;
var
   xSQL : string;
begin
     Result := False;
     try
       xSQL := 'SELECT nombre ' +
               ' FROM usuarios ' +
               ' WHERE nombre = :nombre';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('nombre').AsString := nombre;
       qryAux2.Open;
       Result := not qryAux2.IsEmpty;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.ExisteUsuario. ' + E.Message);
     end;
end;

function TdmMain.getNextEquipoId(empresaId: Integer): Integer;
var
   xSQL : string;
begin
     Result := 1;
     try
       xSQL := 'SELECT COALESCE(MAX(equipo_id),0)+1 ' +
               ' FROM equipo ' +
               ' WHERE empresa_id = :empresaId ';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empresaId').AsInteger := empresaId;
       qryAux2.Open;
       result := qryAux2.Fields[0].AsInteger;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.getNextEquipoId. ' + E.Message);
     end;
end;

function TdmMain.getNextMovtoAlmacenId(empresaId: Integer): Integer;
var
   xSQL : string;
begin
     Result := 1;
     try
       xSQL := 'SELECT COALESCE(MAX(id_movto_almacen),0)+1 ' +
               ' FROM movtos_almacen ' +
               ' WHERE empresa_id = :empresaId ';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empresaId').AsInteger := empresaId;
       qryAux2.Open;
       result := qryAux2.Fields[0].AsInteger;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.getNextMovtoAlmacenId. ' + E.Message);
     end;
end;

function TdmMain.getNextServicioFuncionId(empresaId: Integer;
  id: string): Integer;
var
   xSQL : string;
begin
     Result := 1;
     try
       xSQL := 'SELECT COALESCE(MAX(funcion_id),0)+1 ' +
               ' FROM servicios_funciones ' +
               ' WHERE empresa_id = :empresaId ' +
               '       AND servicio_id = :servicioId';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empresaId').AsInteger := empresaId;
       qryAux2.ParamByName('servicioId').AsString := id;
       qryAux2.Open;
       result := qryAux2.Fields[0].AsInteger;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.getNextServicioFuncionId. ' + E.Message);
     end;
end;

function TdmMain.getNextVehiculoCombustibleId(empresaId, vehiculoId: Integer): Integer;
var
   xSQL : string;
begin
     Result := 1;
     try
       xSQL := 'SELECT COALESCE(MAX(combustible_id),0)+1 ' +
               ' FROM vehiculos_combustible ' +
               ' WHERE empresa_id = :empresaId ' +
               '       AND vehiculo_id = :vehiculoId';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empresaId').AsInteger  := empresaId;
       qryAux2.ParamByName('vehiculoId').AsInteger := vehiculoId;
       qryAux2.Open;
       result := qryAux2.Fields[0].AsInteger;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.getNextVehiculoCombustibleId. ' + E.Message);
     end;
end;

function TdmMain.getNextVehiculoId(empresaId : Integer) : Integer;
var
   xSQL : string;
begin
     Result := 1;
     try
       xSQL := 'SELECT COALESCE(MAX(vehiculo_id),0)+1 ' +
               ' FROM vehiculos ' +
               ' WHERE empresa_id = :empresaId ';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empresaId').AsInteger := empresaId;
       qryAux2.Open;
       result := qryAux2.Fields[0].AsInteger;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.getNextVehiculoId. ' + E.Message);
     end;
end;

function TdmMain.getNextVehiculoReparacionId(empresaId, vehiculoId: Integer): Integer;
var
   xSQL : string;
begin
     Result := 1;
     try
       xSQL := 'SELECT COALESCE(MAX(reparacion_id),0)+1 ' +
               ' FROM vehiculos_reparaciones ' +
               ' WHERE empresa_id = :empresaId ' +
               '       AND vehiculo_id = :vehiculoId';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empresaId').AsInteger  := empresaId;
       qryAux2.ParamByName('vehiculoId').AsInteger := vehiculoId;
       qryAux2.Open;
       result := qryAux2.Fields[0].AsInteger;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.getNextVehiculoReparacionId. ' + E.Message);
     end;
end;

procedure TdmMain.GuardaPermisos;
var
   xSQL : string;
begin
     try
        dsPermisos.DataSet.DisableControls;

        xSQL := 'DELETE FROM acciones_permisos WHERE usuario = :usuario';
        qryAux2.Close;
        qryAux2.SQL.Clear;
        qryAux2.SQL.Add(xSQL);
        qryAux2.ParamByName('usuario').AsString := dsPermisos.DataSet.FieldByName('usuario').AsString;
        qryAux2.ExecSQL;

        dsPermisos.DataSet.First;
        while not dsPermisos.DataSet.Eof do
              begin
                   if dsPermisos.DataSet.FieldByName('permiso').AsString = 'S' then
                      begin
                           xSQL := 'INSERT INTO acciones_permisos (usuario, nombre) VALUES(:usuario, :nombre)';
                           qryAux2.Close;
                           qryAux2.SQL.Clear;
                           qryAux2.SQL.Add(xSQL);
                           qryAux2.ParamByName('usuario').AsString := dsPermisos.DataSet.FieldByName('usuario').AsString;
                           qryAux2.ParamByName('nombre').AsString  := dsPermisos.DataSet.FieldByName('nombre').AsString;
                           qryAux2.ExecSQL;
                      end;

                   dsPermisos.DataSet.Next;
              end;
     finally
            dsPermisos.DataSet.EnableControls;
     end;
end;

procedure TdmMain.InactivarCliente(empresaId: Integer; id: string);
var
   xSQL : string;
begin
     try
       xSQL := 'UPDATE clientes ' +
               ' SET activo = 0 ' +
               ' WHERE empresa_id = :empresaId ' +
               '       AND cliente_id = :cliente';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empresaId').AsInteger := empresaId;
       qryAux2.ParamByName('cliente').AsString    := id;
       qryAux2.ExecSQL;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.InactivarCliente. ' + E.Message);
     end;
end;

procedure TdmMain.InactivarEquipo(empresaId, id: Integer);
var
   xSQL : string;
begin
     try
       xSQL := 'UPDATE equipo ' +
               ' SET activo = 0 ' +
               ' WHERE empresa_id = :empresaId ' +
               '       AND equipo_id = :equipo';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empresaId').AsInteger := empresaId;
       qryAux2.ParamByName('equipo').AsInteger    := id;
       qryAux2.ExecSQL;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.InactivarEquipo. ' + E.Message);
     end;
end;

procedure TdmMain.InactivarServicio(empresaId: Integer; id: string);
var
   xSQL : string;
begin
     try
        ZConnection1.StartTransaction;

        // Se da de baja el servicio
        xSQL := 'UPDATE servicios ' +
                ' SET activo = 0 ' +
                ' WHERE empresa_id = :empresaId ' +
                '       AND servicio_id = :servicio';
        qryAux2.Close;
        qryAux2.SQL.Clear;
        qryAux2.SQL.Add(xSQL);
        qryAux2.ParamByName('empresaId').AsInteger := empresaId;
        qryAux2.ParamByName('servicio').AsString    := id;
        qryAux2.ExecSQL;

        // Se liberan los empleados de este servicio
        xSQL := 'UPDATE empleados ' +
                ' SET servicio_id = NULL ' +
                ' WHERE empresa_id = :empresaId ' +
                '       AND empleado_id IN (SELECT empleado_id ' +
                '                           FROM servicios_funciones_empleados ' +
                '                           WHERE empresa_id = :empresaId AND ' +
                '                                 servicio_id = :servicio)';
        qryAux2.Close;
        qryAux2.SQL.Clear;
        qryAux2.SQL.Add(xSQL);
        qryAux2.ParamByName('empresaId').AsInteger     := empresaId;
        qryAux2.ParamByName('servicio').AsString       := id;
        qryAux2.ExecSQL;

        xSQL := 'UPDATE servicios_funciones_empleados ' +
                ' SET empleado_id = NULL ' +
                ' WHERE empresa_id = :empresaId ' +
                '       AND servicio_id = :servicio';
        qryAux2.Close;
        qryAux2.SQL.Clear;
        qryAux2.SQL.Add(xSQL);
        qryAux2.ParamByName('empresaId').AsInteger := empresaId;
        qryAux2.ParamByName('servicio').AsString    := id;
        qryAux2.ExecSQL;

        ZConnection1.Commit;
     except
           on E:Exception do
              begin
                   ZConnection1.Rollback;
                   raise Exception.Create('Ha ocurrido un error en TdmMain.InactivarServicio. ' + E.Message);
              end;
     end;
end;

procedure TdmMain.InactivarVehiculo(empresaId, id: Integer);
var
   xSQL : string;
begin
     try
       xSQL := 'UPDATE vehiculos ' +
               ' SET activo = 0 ' +
               ' WHERE empresa_id = :empresaId ' +
               '       AND vehiculo_id = :vehiculo';
       qryAux2.Close;
       qryAux2.SQL.Clear;
       qryAux2.SQL.Add(xSQL);
       qryAux2.ParamByName('empresaId').AsInteger := empresaId;
       qryAux2.ParamByName('vehiculo').AsInteger    := id;
       qryAux2.ExecSQL;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.InactivarVehiculo. ' + E.Message);
     end;
end;

procedure TdmMain.InactivaUsuario(empresaId, empleado: Integer);
var
   xSQL : string;
begin
     try
        xSQL := 'UPDATE empleados SET activo = ''0'' ' +
                ' WHERE empresa_id = :empresa ' +
                '       AND empleado_id = :empleado';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('empresaId').AsInteger := empresaId;
        qryAux.ParamByName('empleado').AsInteger  := empleado;
        qryAux.ExecSQL;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.InactivaUsuario. ' + E.Message);
     end;
end;

procedure TdmMain.MovimientoEquipo(empresaId: Integer; Servicio: string; EquipoId: Integer; signo: String);
var
   xSQL : string;
begin
     try
        xSQL := 'UPDATE servicios_equipo ' +
                ' SET cantidad = cantidad ' + signo + ' 1 ' +
                ' WHERE empresa_id = :empresa_id ' +
                '       AND servicio_id = :servicio_id ' +
                '       AND equipo_id = :equipo_id ';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('empresa_id').AsInteger := empresaId;
        qryAux.ParamByName('servicio_id').AsString := servicio;
        qryAux.ParamByName('equipo_id').AsInteger  := equipoId;
        qryAux.ExecSQL;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.MovimientoEquipo. ' + E.Message);
     end;
end;

procedure TdmMain.FuncionesAsignaTiemposTodos(te, ts: TTime);
begin
     with dsServiciosFuncionesEdit.DataSet do
          if State in [dsInsert, dsEdit] then
             begin
                  FieldByName('lunesent').AsDateTime     := te;
                  FieldByName('lunessal').AsDateTime     := ts;
                  FieldByName('martesent').AsDateTime    := te;
                  FieldByName('martessal').AsDateTime    := ts;
                  FieldByName('miercolesent').AsDateTime := te;
                  FieldByName('miercolessal').AsDateTime := ts;
                  FieldByName('juevesent').AsDateTime    := te;
                  FieldByName('juevessal').AsDateTime    := ts;
                  FieldByName('viernesent').AsDateTime   := te;
                  FieldByName('viernessal').AsDateTime   := ts;
                  FieldByName('sabadoent').AsDateTime    := te;
                  FieldByName('sabadosal').AsDateTime    := ts;
                  FieldByName('domingoent').AsDateTime   := te;
                  FieldByName('domingosal').AsDateTime   := ts;
             end;
end;

procedure TdmMain.FuncionesMarcarTodos(valor: Boolean);
begin
     with dsServiciosFuncionesEdit.DataSet do
          if State in [dsInsert, dsEdit] then
             begin
                  FieldByName('lunes').AsInteger     := IfThen(valor,1,0);
                  FieldByName('martes').AsInteger    := IfThen(valor,1,0);
                  FieldByName('miercoles').AsInteger := IfThen(valor,1,0);
                  FieldByName('jueves').AsInteger    := IfThen(valor,1,0);
                  FieldByName('viernes').AsInteger   := IfThen(valor,1,0);
                  FieldByName('sabado').AsInteger    := IfThen(valor,1,0);
                  FieldByName('domingo').AsInteger   := IfThen(valor,1,0);
             end;
end;

function TdmMain.nextEmpleado(empresaId : Integer): Integer;
var
   xSQL : string;
begin
     try
        xSQL := 'SELECT COALESCE(MAX(empleado_id),0)+1 ' +
                ' FROM empleados ' +
                ' WHERE empresa_id = :empresaId';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('empresaId').AsInteger := empresaId;
        qryAux.Open;
        Result := qryAux.Fields[0].AsInteger;
     finally
            qryAux.Close;
     end;
end;

function TdmMain.obtenerInfoFuncion(servicioId: string; empresaId, funcionId, diaSemana: Integer): TInfoFuncion;
var
   xSQL : string;
begin
     Result.horaEntrada := StrToTime('00:00:00');
     Result.horaSalida  := StrToTime('00:00:00');
     try
        xSQL := 'SELECT * ' +
                ' FROM servicios_funciones ' +
                ' WHERE servicio_id = :servicio ' +
                '       AND empresa_id = :empresa ' +
                '       AND funcion_id = :funcion';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('servicio').AsString := servicioId;
        qryAux.ParamByName('empresa').AsInteger := empresaId;
        qryAux.ParamByName('funcion').AsInteger := funcionId;
        qryAux.Open;
        case diaSemana of
             1 :
               begin
                    if qryAux.FieldByName('domingo').AsInteger = 1 then
                       begin
                            Result.horaEntrada := qryAux.FieldByName('domingoent').AsDateTime;
                            Result.horaSalida  := qryAux.FieldByName('domingosal').AsDateTime;
                       end;
               end;
             2 :
               begin
                    if qryAux.FieldByName('lunes').AsInteger = 1 then
                       begin
                            Result.horaEntrada := qryAux.FieldByName('lunesent').AsDateTime;
                            Result.horaSalida  := qryAux.FieldByName('lunessal').AsDateTime;
                       end;
               end;
             3 :
               begin
                    if qryAux.FieldByName('martes').AsInteger = 1 then
                       begin
                            Result.horaEntrada := qryAux.FieldByName('martesent').AsDateTime;
                            Result.horaSalida  := qryAux.FieldByName('martessal').AsDateTime;
                       end;
               end;
             4 :
               begin
                    if qryAux.FieldByName('miercoles').AsInteger = 1 then
                       begin
                            Result.horaEntrada := qryAux.FieldByName('miercolesent').AsDateTime;
                            Result.horaSalida  := qryAux.FieldByName('miercolessal').AsDateTime;
                       end;
               end;
             5 :
               begin
                    if qryAux.FieldByName('jueves').AsInteger = 1 then
                       begin
                            Result.horaEntrada := qryAux.FieldByName('juevesent').AsDateTime;
                            Result.horaSalida  := qryAux.FieldByName('juevessal').AsDateTime;
                       end;
               end;
             6 :
               begin
                    if qryAux.FieldByName('viernes').AsInteger = 1 then
                       begin
                            Result.horaEntrada := qryAux.FieldByName('viernesent').AsDateTime;
                            Result.horaSalida  := qryAux.FieldByName('viernessal').AsDateTime;
                       end;
               end;
             7 :
               begin
                    if qryAux.FieldByName('sabado').AsInteger = 1 then
                       begin
                            Result.horaEntrada := qryAux.FieldByName('sabadoent').AsDateTime;
                            Result.horaSalida  := qryAux.FieldByName('sabadosal').AsDateTime;
                       end;
               end;
        end;
     finally
            qryEmpleados.Close;
     end;
end;

procedure TdmMain.qryClientesEditAfterPost(DataSet: TDataSet);
begin
     // Se actualiza el listado de clientes auxiliares
     dmMain.qryClientesList.Close;
     dmMain.qryClientesList.Open;
end;

procedure TdmMain.qryClientesEditNewRecord(DataSet: TDataSet);
begin
     DataSet.FieldByName('empresa_id').AsInteger  := _Globales.Empresa;
     DataSet.FieldByName('activo').AsInteger      := 1;
     DataSet.FieldByName('facturacion').AsInteger := 0;
     DataSet.FieldByName('contrato').AsInteger    := 0;
end;

procedure TdmMain.qryEmpleadosCursosEditBeforePost(DataSet: TDataSet);
begin
     if DataSet.State = dsInsert then
        DataSet.FieldByName('empleado_id').AsInteger := dsEmpleadosEdit.DataSet.FieldByName('empleado_id').AsInteger;
end;

procedure TdmMain.qryEmpleadosCursosEditNewRecord(DataSet: TDataSet);
begin
     with DataSet do
          begin
               FieldByName('empresa_id').AsInteger       := _Globales.Empresa;
               FieldByName('empleado_id').AsInteger      := dsEmpleadosEdit.DataSet.FieldByName('empleado_id').AsInteger;
          end;
end;

procedure TdmMain.qryEmpleadosEditAfterPost(DataSet: TDataSet);
begin
     if modoInsercion then
        begin
             RegistraHistorialEmpleado(DataSet.FieldByName('empresa_id').AsInteger,
                                       DataSet.FieldByName('empleado_id').AsInteger,
                                       Now,
                                       'ALTA',
                                       ''
                                      );
             modoInsercion := False;
        end;
end;

procedure TdmMain.qryEmpleadosEditBeforePost(DataSet: TDataSet);
var
   xSQL : string;
begin
     modoInsercion := False;
     if DataSet.State = dsInsert then
        begin
             DataSet.FieldByName('empleado_id').AsInteger := nextEmpleado(_Globales.Empresa);

             try
                xSQL := 'INSERT INTO empleados_fotos (empleado_id, foto, empresa_id) ' +
                        ' VALUES(:empleado, NULL, :empresaId)';
                qryAux.Close;
                qryAux.SQL.Clear;
                qryAux.SQL.Add(xSQL);
                qryAux.ParamByName('empleado').AsInteger := DataSet.FieldByName('empleado_id').AsInteger;
                qryAux.ParamByName('empresaId').AsInteger := DataSet.FieldByName('empresa_id').AsInteger;
                qryAux.ExecSQL;
             except
                   on E:Exception do
                      raise Exception.Create('Ha ocurrido un error en TdmMain.qryEditEmpleadosAfterPost. ' + E.Message);
             end;

             modoInsercion := True;
        end;
end;

procedure TdmMain.qryEmpleadosEditCalcFields(DataSet: TDataSet);
begin
     DataSet.FieldByName('edad').AsInteger := YearsBetween(Now,DataSet.FieldByName('nacimiento_fecha').AsDateTime);
end;

procedure TdmMain.qryEmpleadosEditNewRecord(DataSet: TDataSet);
begin
     with DataSet do
          begin
               FieldByName('empresa_id').AsInteger       := _Globales.Empresa;
               FieldByName('empleado_id').AsInteger      := nextEmpleado(_Globales.Empresa);
               FieldByName('oficina_id').AsInteger       := 1;
               FieldByName('estatus_sp_id').AsInteger    := 2;
               FieldByName('sexo').AsInteger             := 1;
               FieldByName('activo').AsString            := '1';
               FieldByName('servicio_id').Value          := NULL;
               FieldByName('puesto_id').AsInteger        := 63;
               FieldByName('fecha_alta').AsDateTime      := Now;
               FieldByName('precontrato').AsString       := 'N';
               FieldByName('reingreso').AsString         := 'N';

               FieldByName('recibio_gafete').AsInteger   := 0;
               FieldByName('firmo_pagare').AsInteger     := 0;
               FieldByName('captura_cedula').AsInteger   := 0;
               FieldByName('fotos_cedula').AsInteger     := 0;
               FieldByName('carta_compromiso').AsInteger := 0;
               FieldByName('firmo_resguardo').AsInteger  := 0;
               FieldByName('toma_huellas').AsInteger     := 0;

               FieldByName('registro_cesp').AsInteger    := 0;
               FieldByName('verificacion').AsInteger     := 0;
               FieldByName('registro_sse').AsInteger     := 0;
               FieldByName('registro_sdn').AsInteger     := 0;

               FieldByName('DocHojaDatos').AsInteger     := 0;
               FieldByName('DocSolicitud').AsInteger     := 0;
               FieldByName('DocIFE').AsInteger           := 0;
               FieldByName('DocActaNacim').AsInteger     := 0;
               FieldByName('DocCURPRFC').AsInteger       := 0;
               FieldByName('DocCompDom').AsInteger       := 0;
               FieldByName('DocCartaPol').AsInteger      := 0;
               FieldByName('DocCompEst').AsInteger       := 0;
               FieldByName('DocCartilla').AsInteger      := 0;
               FieldByName('DocNSS').AsInteger           := 0;
               FieldByName('DocCartaRec').AsInteger      := 0;
               FieldByName('DocContrato').AsInteger      := 0;
               FieldByName('DocSocioeconom').AsInteger   := 0;
               FieldByName('DocFotos').AsInteger         := 0;
               FieldByName('DocPsicologico').AsInteger   := 0;
               FieldByName('DocMedico').AsInteger        := 0;
               FieldByName('DocToxicologico').AsInteger  := 0;
               FieldByName('DocResguardo').AsInteger     := 0;
          end;
end;

procedure TdmMain.qryEquipoEditNewRecord(DataSet: TDataSet);
begin
     DataSet.FieldByName('equipo_id').AsInteger  := getNextEquipoId(_Globales.Empresa);
     DataSet.FieldByName('empresa_id').AsInteger := _Globales.Empresa;
     DataSet.FieldByName('activo').AsString    := '1';
end;

procedure TdmMain.qryMovtosAlmacenEditNewRecord(DataSet: TDataSet);
begin
     DataSet.FieldByName('id_movto_almacen').AsInteger  := getNextMovtoAlmacenId(_Globales.Empresa);
     DataSet.FieldByName('empresa_id').AsInteger := _Globales.Empresa;
     DataSet.FieldByName('estatus').AsString    := 'CAP';
end;

procedure TdmMain.qryServiciosEditNewRecord(DataSet: TDataSet);
begin
     DataSet.FieldByName('empresa_id').AsInteger := _Globales.Empresa;
     DataSet.FieldByName('activo').AsInteger     := 1;
     DataSet.FieldByName('tipo_nomina').AsString := 'S';
end;

procedure TdmMain.qryServiciosFuncionesEditNewRecord(DataSet: TDataSet);
begin
     DataSet.FieldByName('servicio_id').AsString      := dsServiciosEdit.DataSet.FieldByName('servicio_id').AsString;
     DataSet.FieldByName('empresa_id').AsInteger      := _Globales.Empresa;
     DataSet.FieldByName('funcion_id').AsInteger      := getNextServicioFuncionId(_Globales.Empresa,
                                                                                  dsServiciosEdit.DataSet.FieldByName('servicio_id').AsString);
     DataSet.FieldByName('id_tipo_funcion').AsInteger := 1;
     DataSet.FieldByName('lunes').AsInteger           := 0;
     DataSet.FieldByName('martes').AsInteger          := 0;
     DataSet.FieldByName('miercoles').AsInteger       := 0;
     DataSet.FieldByName('jueves').AsInteger          := 0;
     DataSet.FieldByName('viernes').AsInteger         := 0;
     DataSet.FieldByName('sabado').AsInteger          := 0;
     DataSet.FieldByName('domingo').AsInteger         := 0;
end;

procedure TdmMain.qryVehiculosCombustibleEditNewRecord(DataSet: TDataSet);
begin
     DataSet.FieldByName('vehiculo_id').AsInteger    := dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger;
     DataSet.FieldByName('empresa_id').AsInteger     := _Globales.Empresa;
     DataSet.FieldByName('combustible_id').AsInteger := getNextVehiculoCombustibleId(_Globales.Empresa,
                                                                                     dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger);
     DataSet.FieldByName('fecha').AsDateTime         := Now();
end;

procedure TdmMain.qryVehiculosEditNewRecord(DataSet: TDataSet);
begin
     DataSet.FieldByName('vehiculo_id').AsInteger := getNextVehiculoId(_Globales.Empresa);
     DataSet.FieldByName('empresa_id').AsInteger  := _Globales.Empresa;
     DataSet.FieldByName('oficina').AsInteger     := 1;
     DataSet.FieldByName('estatus').AsInteger     := 0;
     DataSet.FieldByName('estado').AsInteger      := 0;
     DataSet.FieldByName('blindaje').AsString     := 'NO';
end;

procedure TdmMain.qryVehiculosReparacionesEditNewRecord(DataSet: TDataSet);
begin
     DataSet.FieldByName('vehiculo_id').AsInteger    := dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger;
     DataSet.FieldByName('empresa_id').AsInteger     := _Globales.Empresa;
     DataSet.FieldByName('reparacion_id').AsInteger  := getNextVehiculoReparacionId(_Globales.Empresa,
                                                                                    dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger);
     DataSet.FieldByName('fecha_entrada').AsDateTime := Now();
     DataSet.FieldByName('fecha_salida').AsDateTime := Now();
end;

procedure TdmMain.QuitaAsignacionEmpleadoFuncion(empresaId: Integer; servicioId: string; empleado, funcionId, asignacionId: integer);
var
   xSQL : string;
   empleadoAnterior : Integer;
begin
     try
        if not dsServiciosFuncionesEmpleados.DataSet.FieldByName('empleado_id').IsNull then
           empleadoAnterior := dsServiciosFuncionesEmpleados.DataSet.FieldByName('empleado_id').AsInteger
        else
            empleadoAnterior := 0;

        ZConnection1.StartTransaction;

        // Se quita la asignación del empleado al servicio
        xSQL := 'UPDATE servicios_funciones_empleados SET empleado_id = NULL ' +
                ' WHERE empresa_id = :empresa_id ' +
                '       AND servicio_id = :servicio_id ' +
                '       AND funcion_id = :funcion_id ' +
                '       AND asignacion_id = :asignacion_id';
        qryClientes.Close;
        qryClientes.SQL.Clear;
        qryClientes.SQL.Add(xSQL);
        qryClientes.ParamByName('empresa_id').AsInteger    := empresaId;
        qryClientes.ParamByName('servicio_id').AsString    := servicioId;
        qryClientes.ParamByName('funcion_id').AsInteger    := funcionId;
        qryClientes.ParamByName('asignacion_id').AsInteger := asignacionId;
        qryClientes.ExecSQL;

        // Se libera el servicio del empleado
        xSQL := 'UPDATE empleados SET servicio_id = NULL ' +
                ' WHERE empresa_id = :empresa_id ' +
                '       AND empleado_id = :empleado_id';
        qryClientes.Close;
        qryClientes.SQL.Clear;
        qryClientes.SQL.Add(xSQL);
        qryClientes.ParamByName('empresa_id').AsInteger  := empresaId;
        qryClientes.ParamByName('empleado_id').AsInteger := empleado;
        qryClientes.ExecSQL;

        ZConnection1.Commit;
     except
           on E:Exception do
              begin
                   ZConnection1.Rollback;
                   raise Exception.Create('Ha ocurrido un error en TdmMain.QuitaAsignacionEmpleadoFuncion. ' + E.Message);
              end;
     end;
end;

procedure TdmMain.RegistraAcciones(actlst: TActionList);
var
   i : Integer;
   xSQL : string;
begin

     {
     xSQL := 'SELECT * FROM acciones';
     qryAux.Close;
     qryAux.SQL.Clear;
     qryAux.SQL.Add(xSQL);
     qryAux.Open;
     }

     xSQL := 'DELETE FROM acciones';
     qryAux.Close;
     qryAux.SQL.Clear;
     qryAux.SQL.Add(xSQL);
     qryAux.ExecSQL;

     for i := 0 to actlst.ActionCount-1 do
         if (actlst.Actions[i] as TAction).Tag = 0 then
//            if not qryAux.Locate('categoria;descripcion;nombre',VarArrayOf([(actlst.Actions[i] as TAction).Category,
//                                                                            (actlst.Actions[i] as TAction).Caption,
//                                                                            (actlst.Actions[i] as TAction).Name
//                                                                           ]),[]) then
            begin
                 xSQL := 'INSERT INTO acciones (categoria, descripcion, nombre) VALUES (:categoria, :descripcion, :nombre)';
                 qryAux.Close;
                 qryAux.SQL.Clear;
                 qryAux.SQL.Add(xSQL);
                 qryAux.ParamByName('categoria').AsString   := (actlst.Actions[i] as TAction).Category;
                 qryAux.ParamByName('descripcion').AsString := (actlst.Actions[i] as TAction).Caption;
                 qryAux.ParamByName('nombre').AsString      := (actlst.Actions[i] as TAction).Name;
                 qryAux.ExecSQL;
            end;
end;

procedure TdmMain.RegistraHistorialEmpleado(empresaId, empleadoid: Integer; fecha: TDateTime; descripcion, observaciones: string);
var
   xSQL : string;
begin
     try
        xSQL := 'INSERT INTO public.bitacora_empleados (empresa_id, empleado_id, bitacora_id, fecha, descripcion, observaciones) ' +
                ' VALUES(:empresa_id, :empleado_id, (SELECT COALESCE( MAX( bitacora_id ), 0 ) + 1 FROM bitacora_empleados WHERE empleado_id = :empleado_id), :fecha, :descripcion, :observaciones)';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('empresa_id').AsInteger   := empresaId;
        qryAux.ParamByName('empleado_id').AsInteger  := empleadoid;
        qryAux.ParamByName('fecha').AsDate           := fecha;
        qryAux.ParamByName('descripcion').AsString   := descripcion;
        qryAux.ParamByName('observaciones').AsString := observaciones;
        qryAux.ExecSQL;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.RegistraHistorialEmpleado. ' + E.Message);
     end;
end;

procedure TdmMain.ReingresoEmpleado(empresaId, empleadoId : Integer; fechaReingreso : TDateTime; observaciones : string);
var
   xSQL : string;
begin
     try
        // Se le quita el servicio asignado al empleado y se pone con estatus BAJA
        xSQL := 'UPDATE empleados SET activo = ''1'', reingreso = ''S'', fecha_ultimo_reingreso = :fechaReingreso ' +
                ' WHERE empresa_id = :empresa ' +
                '       AND empleado_id = :empleado';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('empresa').AsInteger  := empresaId;
        qryAux.ParamByName('empleado').AsInteger := empleadoId;
        qryAux.ParamByName('fechaReingreso').AsDateTime := fechaReingreso;
        qryAux.ExecSQL;

        // Se guarda el registro en la bitácora
        RegistraHistorialEmpleado(empresaId, empleadoId, fechaReingreso, 'REINGRESO', observaciones);
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.ReingresoEmpleado. ' + E.Message);
     end;
end;

function TdmMain.ValidaUsuario(nombre, password: string): boolean;
var
   xSQL : string;
begin
     Result := False;
     xSQL := 'SELECT * FROM usuarios WHERE nombre = :nombre AND password = :password';
     qryAux.Close;
     qryAux.SQL.Clear;
     qryAux.SQL.Add(xSQL);
     qryAux.ParamByName('nombre').AsString  := nombre;
     qryAux.ParamByName('password').AsString := password;
     qryAux.Open;
     Result := not qryAux.IsEmpty;
end;

end.

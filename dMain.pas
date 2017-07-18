unit dMain;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, Datasnap.Provider, Datasnap.DBClient, DateUtils, Vcl.ActnList, Variants, dxmdaset, Math, StrUtils, dialogs;

type
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
  private
    { Private declarations }
    function nextEmpleado(empresaId : Integer) : Integer;
  public
    { Public declarations }
    // EMPLEADOS
    procedure CargaEmpleados(empresaId, Estatus : Integer);
    procedure CargaEmpleadosListado(empresaId : Integer);
    procedure CargaDetalleEmpleado(empresaId, empleado : integer);
    procedure CargaFotoEmpleado(empresaId, empleado : integer);
    procedure InactivaUsuario(empresaId, empleado : Integer);
    procedure ReingresoEmpleado(empresaId, empleado : Integer);
    function ExisteEmpleado(nombre : string) : Boolean;

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
    procedure CargaPreasignacionSemanal(empresaId : Integer; servicioId : string; anio, semana : Integer);
    procedure BorrarServiciosPreasignacionSemanal(servicio_id : string; empresa_id, funcion_id, asignacion, anio, semana : Integer);
    procedure Preasignacion_LimpiarSemana(servicio_id : string; empresa_id, funcion_id, asignacion, anio, semana : Integer; fecha_inicial : TDateTime);
    procedure Preasignacion_MarcarSemana(servicio_id : string; empresa_id, funcion_id, asignacion, anio, semana : Integer; fecha_inicial : TDateTime);
    procedure Preasignacion_ProgramarDiurno(servicio_id : string; empresa_id, funcion_id, asignacion, anio, semana : Integer; fecha_inicial : TDateTime);
    procedure Preasignacion_ProgramarNocturno(servicio_id : string; empresa_id, funcion_id, asignacion, anio, semana : Integer; fecha_inicial : TDateTime);
    procedure Preasignacion_Programar24hT1(servicio_id : string; empresa_id, funcion_id, asignacion, anio, semana : Integer; fecha_inicial : TDateTime);
    procedure Preasignacion_Programar24hT2(servicio_id : string; empresa_id, funcion_id, asignacion, anio, semana : Integer; fecha_inicial : TDateTime);
    function ProgramarServicios(empresaId : integer; fecha : TDateTime) : Integer;
    function CopiarPreProgramacion : Integer;
    function ExistePreasignacionSemanal : Boolean;
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
    procedure CargaAsistencia(empresaId : Integer; anio, mes, dia: Integer);
    procedure ConsultaAsistencia(empresaId : Integer; fechaIni, fechaFin : TDateTime);
    procedure CargaAsistenciaDetalle(empresaId, anio, mes, dia : Integer);
    procedure ActualizarAsistencia(empresaId, anio, mes, dia : Integer;
                                   horaEnt, horaSal : TDateTime;
                                   HorasExtra : Integer; descansa : string;
                                   EmpAnterior, EmpNuevo : Integer; obs : String);

    // USUARIOS
    procedure CargaUsuarios;

    // PERMISOS
    procedure CargaPermisos(usuario : string);
    procedure GuardaPermisos;
    function ValidaUsuario(usuario, password : string) : boolean;

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

procedure TdmMain.CargaPreasignacionSemanal(empresaId: Integer; servicioId: string; anio, semana: Integer);
begin
     try
        cdsServiciosPreasignacionSemanal.DisableControls;
        cdsServiciosPreasignacionSemanal.Active := False;
        qryServiciosPreasignacionSemanal.Close;
        qryServiciosPreasignacionSemanal.ParamByName('empresa_id').AsInteger := empresaId;
        qryServiciosPreasignacionSemanal.ParamByName('servicio_id').AsString := servicioId;
        qryServiciosPreasignacionSemanal.ParamByName('anio').AsInteger       := anio;
        qryServiciosPreasignacionSemanal.ParamByName('semana').AsInteger     := semana;
//        qryServiciosPreasignacionSemanal.Open;
        cdsServiciosPreasignacionSemanal.Active := True;
     finally
            cdsServiciosPreasignacionSemanal.EnableControls;
     end;
end;

procedure TdmMain.ActualizarAsistencia(empresaId, anio, mes, dia: Integer; horaEnt, horaSal: TDateTime; HorasExtra : Integer; descansa : string; EmpAnterior, EmpNuevo: Integer; obs: String);
var
   xSQL : string;
begin
     xSQL := 'UPDATE asistencia ' +
             ' SET horaEntrada   = :horaEntrada, ' +
             '     horaSalida    = :horaSalida, ' +
             '     horas_extra   = :horas_extra, ' +
             '     descansa      = :descansa, ' +
             '     observaciones = :observaciones, ' +
             '     empleado_id   = :empleado_nuevo ' +
             ' WHERE empresa_id = :empresa_id ' +
             '       AND anio = :anio ' +
             '       AND mes = :mes ' +
             '       AND dia = :dia ' +
             '       AND empleado_id = :empleado_id';
     qryAux.Close;
     qryAux.SQL.Clear;
     qryAux.SQL.Add(xSQL);
     qryAux.ParamByName('empresa_id').AsInteger     := empresaId;
     qryAux.ParamByName('anio').AsInteger           := anio;
     qryAux.ParamByName('mes').AsInteger            := mes;
     qryAux.ParamByName('dia').AsInteger            := dia;
     qryAux.ParamByName('empleado_id').AsInteger    := EmpAnterior;
     qryAux.ParamByName('horaEntrada').AsDateTime   := horaEnt;
     qryAux.ParamByName('horas_extra').AsInteger    := HorasExtra;
     qryAux.ParamByName('descansa').AsString        := descansa;
     qryAux.ParamByName('horaSalida').AsDateTime    := horaSal;
     qryAux.ParamByName('observaciones').AsString   := obs;
     if EmpNuevo <> 0 then
        qryAux.ParamByName('empleado_nuevo').AsInteger := EmpNuevo
     else
         qryAux.ParamByName('empleado_nuevo').AsInteger := EmpAnterior;
     qryAux.ExecSQL;

     {
     if EmpNuevo <> 0 then
        begin
             xSQL := 'UPDATE empleados SET servicio_id = '' SP01'' ' +
                     ' WHERE empresa_id = :empresa_id ' +
                     '       AND empleado_id = :empleado_id';
             qryAux.Close;
             qryAux.SQL.Clear;
             qryAux.SQL.Add(xSQL);
             qryAux.ParamByName('empresa_id').AsInteger  := empresaId;
             qryAux.ParamByName('empleado_id').AsInteger := EmpAnterior;
             qryAux.ExecSQL;
        end;
       }
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
                qryClientes.ParamByName('servicio_id').AsString  := ' SP01';
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

procedure TdmMain.BorrarServiciosPreasignacionSemanal(servicio_id: string; empresa_id, funcion_id, asignacion, anio, semana: Integer);
var
   xSQL : string;
begin
     try
        xSQL := 'DELETE FROM servicios_preasignacion_semanal ' +
                ' WHERE servicio_id = :servicio_id ' +
                ' AND empresa_id = :empresa_id ' +
                ' AND funcion_id = :funcion_id ' +
                ' AND asignacion_id = :asignacion_id ' +
                ' AND anio = :anio ' +
                ' AND semana = :semana';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('servicio_id').AsString    := servicio_id;
        qryAux.ParamByName('empresa_id').AsInteger    := empresa_id;
        qryAux.ParamByName('funcion_id').AsInteger    := funcion_id;
        qryAux.ParamByName('asignacion_id').AsInteger := asignacion;
        qryAux.ParamByName('anio').AsInteger          := anio;
        qryAux.ParamByName('semana').AsInteger        := semana;
        qryAux.ExecSQL;
     finally
            qryAux.Close;
     end;
end;

procedure TdmMain.CargaAsistencia(empresaId: Integer; anio, mes, dia: Integer);
var
   xSQL : string;
begin
     try
        cdsAsistencia.DisableControls;
        cdsAsistencia.Active := False;
        {
        xSQL := 'SELECT DISTINCT ' +
                '      anio, ' +
                '      mes, ' +
                '      dia ' +
                ' FROM asistencia ' +
                ' WHERE empresa_id = :empresa ' +
                '       AND to_date(to_char(anio, ''0000'') || to_char(mes, ''00'') || to_char(dia, ''00''), ''yyyymmdd'') >= :fini ' +
                '       AND to_date(to_char(anio, ''0000'') || to_char(mes, ''00'') || to_char(dia, ''00''), ''yyyymmdd'') <= :ffin ' +
                ' ORDER BY anio, mes, dia';
        }
        xSQL := 'SELECT serv.cliente_id, serv.cliente_descripcion, sfe.servicio_id, serv.descripcion AS descripcion_servicio, sfe.asignacion_id, tipos_funciones.descripcion AS descripcion_funcion, ' +
                '       CASE WHEN asist.empleado_id IS NULL THEN sfe.empleado_id ELSE asist.empleado_id END empleado_id, ' +
                '       CASE WHEN asist.empleado_id IS NULL THEN coalesce(trim(empleados.nombres || '' '' || empleados.apellido_paterno || '' '' || empleados.apellido_materno),''--- N O  A S I G N A D O ---'') ' +
                '            ELSE asist.nombre_empleado END AS nombre_empleado, ' +
                '       CASE WHEN asist.empleado_id IS NULL THEN NULL ELSE asist.horaentrada END AS HoraEntrada, ' +
                '       CASE WHEN asist.empleado_id IS NULL THEN NULL ELSE asist.horasalida END AS HoraSalida, ' +
                '       CASE WHEN asist.empleado_id IS NULL THEN NULL ELSE asist.horas_extra END AS horas_extra, ' +
                '       CASE WHEN asist.empleado_id IS NULL THEN NULL ELSE asist.observaciones END AS observaciones ' +
                ' FROM servicios_funciones_empleados sfe ' +
                ' LEFT JOIN (SELECT servicios.*, clientes.descripcion AS cliente_descripcion ' +
                '             FROM servicios ' +
                '             LEFT JOIN clientes ON clientes.cliente_id = servicios.cliente_id ' +
                '             WHERE servicios.activo = 1 ' +
                '                 AND servicios.empresa_id = :empresa ' +
                '                 AND servicio_id NOT IN ('' SP01'','' SP02'','' SP03'') ' +
                '           ) serv ON serv.servicio_id = sfe.servicio_id ' +
                ' LEFT JOIN tipos_funciones ON tipos_funciones.id_tipo_funcion = sfe.funcion_id ' +
                ' LEFT JOIN empleados ON empleados.empleado_id = sfe.empleado_id ' +
                ' LEFT JOIN ( SELECT asistencia.*, trim(empleados.nombres || '' '' || empleados.apellido_paterno || '' '' || empleados.apellido_materno) AS nombre_empleado ' +
                '             FROM asistencia ' +
                '             LEFT JOIN empleados ON empleados.empleado_id = asistencia.empleado_id ' +
                '             WHERE asistencia.empresa_id = :empresa ' +
                '                 AND anio = :anio ' +
                '                 AND mes = :mes ' +
                '                 AND dia = :dia ' +
                '           ) asist ON asist.servicio_id = sfe.servicio_id AND asist.funcion_id = sfe.funcion_id AND asist.asignacion_id = sfe.asignacion_id ' +
                ' WHERE sfe.empresa_id = :empresa ' +
                '     AND serv.servicio_id IS NOT null ' +
                ' ORDER BY cliente_descripcion, descripcion_servicio';
        qryAsistencia.Close;
        qryAsistencia.SQL.Clear;
        qryAsistencia.SQL.Add(xSQL);
        qryAsistencia.ParamByName('empresa').AsInteger := empresaId;
        qryAsistencia.ParamByName('anio').AsInteger := anio;
        qryAsistencia.ParamByName('mes').AsInteger := mes;
        qryAsistencia.ParamByName('dia').AsInteger := dia;
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
                '   servicios."descripcion" AS descripcion_servicio, ' +
                '   e.rfc, ' +
                '   e.fecha_alta, ' +
                '   TRIM(COALESCE(e.calle,'''') || '' '' || COALESCE(e.num_ext,'''') || '' '' || COALESCE(e.colonia)) AS domicilio, ' +
                '   e.cuip, ' +
                '   e.nacimiento_fecha, ' +
                '   e.nss ' +
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
        xSQL := 'SELECT * FROM usuarios WHERE clave <> ''ADMIN'' ORDER BY clave';
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
begin
     try
        cdsAsistencia.DisableControls;
        cdsAsistencia.Active := False;
        xSQL := 'SELECT s.servicio_id, ' +
                '       s.descripcion as servicio, ' +
                '       e.empleado_id, ' +
                '       CONCAT(TRIM(e.apellido_paterno),'' '',TRIM(e.apellido_materno),'' '',TRIM(e.nombres)) AS nombre_empleado, ' +
                '       FORMAT(''%s-%s-%s'', anio, mes, dia) fecha, ' +
                '       a.horaentprog, a.horasalprog, a.horaentrada, a.horasalida, ' +
                '       COALESCE(horas_extra,0) horas_extra, ' +
                '       a.observaciones ' +
                ' FROM asistencia a ' +
                ' LEFT JOIN empleados e ON e.empleado_id = a.empleado_id and e.empresa_id = a.empresa_id ' +
                ' LEFT JOIN servicios s ON s.servicio_id = a.servicio_id and s.empresa_id = a.empresa_id ' +
                ' WHERE a.empresa_id = :empresa ' +
                '       AND to_date(to_char(anio, ''0000'') || to_char(mes, ''00'') || to_char(dia, ''00''), ''yyyymmdd'') >= :fini ' +
                '       AND to_date(to_char(anio, ''0000'') || to_char(mes, ''00'') || to_char(dia, ''00''), ''yyyymmdd'') <= :ffin ' +
                '       AND horaentrada IS NOT NULL ' +
                ' ORDER BY anio, mes, dia';
        qryAsistencia.Close;
        qryAsistencia.SQL.Clear;
        qryAsistencia.SQL.Add(xSQL);
        qryAsistencia.ParamByName('empresa').AsInteger := empresaId;
        qryAsistencia.ParamByName('fini').AsDate := fechaIni;
        qryAsistencia.ParamByName('ffin').AsDate := fechaFin;
        cdsAsistencia.Active := True;
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

function TdmMain.CopiarPreProgramacion : Integer;
var
   xSQL : string;
   vAnioActual, vSemanaActual, vAnio, vSemana : Integer;
begin
     Result := 0;
     vAnioActual := YearOf(Now());
     vSemanaActual := WeekOfTheYear(Now());
     try
        if not ExistePreasignacionSemanal then
           begin
                // Se obtiene la fecha de la última presignacion semanal
                xSQL := 'SELECT anio, semana, fecha_inicial ' +
                        ' FROM servicios_preasignacion_semanal ' +
                        ' WHERE empresa_id = :empresaId ' +
                        ' GROUP BY anio, semana, fecha_inicial ' +
                        ' ORDER BY fecha_inicial DESC LIMIT 1';
                qryAux2.Close;
                qryAux2.SQL.Clear;
                qryAux2.SQL.Add(xSQL);
                qryAux2.ParamByName('empresaId').AsInteger := _Globales.Empresa;
                qryAux2.Open;
                if qryAux2.IsEmpty then
                   Result := 0     // <-- No hay una presignacion semanal previa
                else
                    begin
                         vAnio   := qryAux2.FieldByName('anio').AsInteger;
                         vSemana := qryAux2.FieldByName('semana').AsInteger;
                         // Se copia la preasignación semanal de la última semana a la actual
                        xSQL := 'INSERT INTO servicios_preasignacion_semanal ( ' +
                                '            servicio_id,                      ' +
                                '            empresa_id,                       ' +
                                '            funcion_id,                       ' +
                                '            asignacion_id,                    ' +
                                '            anio,                             ' +
                                '            semana,                           ' +
                                '            fecha_inicial,                    ' +
                                '            lund,                             ' +
                                '            lunt,                             ' +
                                '            lunn,                             ' +
                                '            mard,                             ' +
                                '            mart,                             ' +
                                '            marn,                             ' +
                                '            mied,                             ' +
                                '            miet,                             ' +
                                '            mien,                             ' +
                                '            jued,                             ' +
                                '            juet,                             ' +
                                '            juen,                             ' +
                                '            vied,                             ' +
                                '            viet,                             ' +
                                '            vien,                             ' +
                                '            sabd,                             ' +
                                '            sabt,                             ' +
                                '            sabn,                             ' +
                                '            domd,                             ' +
                                '            domt,                             ' +
                                '            domn                              ' +
                                '  )                                           ' +
                                '  SELECT                                      ' +
                                '        servicio_id,                          ' +
                                '        empresa_id,                           ' +
                                '        funcion_id,                           ' +
                                '        asignacion_id,                        ' +
                                '        :anio_actual,                         ' +
                                '        :semana_actual,                       ' +
                                '        :fecha_inicial,                       ' +
                                '        lund,                                 ' +
                                '        lunt,                                 ' +
                                '        lunn,                                 ' +
                                '        mard,                                 ' +
                                '        mart,                                 ' +
                                '        marn,                                 ' +
                                '        mied,                                 ' +
                                '        miet,                                 ' +
                                '        mien,                                 ' +
                                '        jued,                                 ' +
                                '        juet,                                 ' +
                                '        juen,                                 ' +
                                '        vied,                                 ' +
                                '        viet,                                 ' +
                                '        vien,                                 ' +
                                '        sabd,                                 ' +
                                '        sabt,                                 ' +
                                '        sabn,                                 ' +
                                '        domd,                                 ' +
                                '        domt,                                 ' +
                                '        domn                                  ' +
                                ' FROM servicios_preasignacion_semanal         ' +
                                ' WHERE empresa_id = :empresaId                ' +
                                '       AND anio = :anio                       ' +
                                '       AND semana = :semana';
                        qryAux2.Close;
                        qryAux2.SQL.Clear;
                        qryAux2.SQL.Add(xSQL);
                        qryAux2.ParamByName('empresaId').AsInteger := _Globales.Empresa;
                        qryAux2.ParamByName('anio').AsInteger := vAnio;
                        qryAux2.ParamByName('semana').AsInteger := vSemana;
                        qryAux2.ParamByName('anio_actual').AsInteger := vAnioActual;
                        qryAux2.ParamByName('semana_actual').AsInteger := vSemanaActual;
                        qryAux2.ParamByName('fecha_inicial').AsDateTime := StartOfTheWeek(Now());
                        qryAux2.ExecSQL;
                        Result := 2;    // Se ha copiado correctamente la preasignacion semanal
                    end;
           end
        else
            Result := 1;   // <-- Ya existe la preasignacion Semanal para esta semana
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.CopiarPreProgramacion. ' + E.Message);
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
                                   ' SET servicio_id = '' SP01'' ' +
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

function TdmMain.ExistePreasignacionSemanal: Boolean;
var
   xSQL : String;
begin
     Result := False;
     try
        xSQL := 'SELECT COUNT(*) ' +
                ' FROM servicios_preasignacion_semanal ' +
                ' WHERE empresa_id = :empresaId        ' +
                '       AND anio = :anio        ' +
                '       AND semana = :semana';
        qryAux2.Close;
        qryAux2.SQL.Clear;
        qryAux2.SQL.Add(xSQL);
        qryAux2.ParamByName('empresaId').AsInteger := _Globales.Empresa;
        qryAux2.ParamByName('anio').AsInteger := YearOf(Now());
        qryAux2.ParamByName('semana').AsInteger := WeekOfTheYear(Now());
        qryAux2.Open;
        Result := qryAux2.Fields[0].AsInteger > 0;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.ExistePreasignacionSemanal. ' + E.Message);
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
                ' SET servicio_id = :servicio_nuevo ' +
                ' WHERE empresa_id = :empresaId ' +
                '       AND empleado_id IN (SELECT empleado_id ' +
                '                           FROM servicios_funciones_empleados ' +
                '                           WHERE empresa_id = :empresaId AND ' +
                '                                 servicio_id = :servicio)';
        qryAux2.Close;
        qryAux2.SQL.Clear;
        qryAux2.SQL.Add(xSQL);
        qryAux2.ParamByName('empresaId').AsInteger     := empresaId;
        qryAux2.ParamByName('servicio_nuevo').AsString := ' SP01';
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

procedure TdmMain.Preasignacion_LimpiarSemana(servicio_id : string; empresa_id, funcion_id, asignacion, anio, semana : Integer; fecha_inicial : TDateTime);
var
   xSQL : string;
begin
     try
        BorrarServiciosPreasignacionSemanal(
                                            servicio_id,
                                            empresa_id,
                                            funcion_id,
                                            asignacion,
                                            anio,
                                            semana
                                            );

        xSQL := 'INSERT INTO servicios_preasignacion_semanal ( ' +
                '  servicio_id, ' +
                '  empresa_id, ' +
                '  funcion_id, ' +
                '  asignacion_id,  ' +
                '  anio, ' +
                '  semana, ' +
                '  fecha_inicial, ' +
                '  lund, ' +
                '  lunt, ' +
                '  lunn, ' +
                '  mard, ' +
                '  mart, ' +
                '  marn, ' +
                '  mied, ' +
                '  miet, ' +
                '  mien, ' +
                '  jued, ' +
                '  juet, ' +
                '  juen, ' +
                '  vied, ' +
                '  viet, ' +
                '  vien, ' +
                '  sabd, ' +
                '  sabt, ' +
                '  sabn, ' +
                '  domd, ' +
                '  domt, ' +
                '  domn ' +
                ') ' +
                'VALUES ' +
                '  ( ' +
                '    :servicio_id, ' +
                '    :empresa_id, ' +
                '    :funcion_id, ' +
                '    :asignacion_id, ' +
                '    :anio, ' +
                '    :semana, ' +
                '    :fecha_inicial, ' +
                '    :lund, ' +
                '    :lunt, ' +
                '    :lunn, ' +
                '    :mard, ' +
                '    :mart, ' +
                '    :marn, ' +
                '    :mied, ' +
                '    :miet, ' +
                '    :mien, ' +
                '    :jued, ' +
                '    :juet, ' +
                '    :juen, ' +
                '    :vied, ' +
                '    :viet, ' +
                '    :vien, ' +
                '    :sabd, ' +
                '    :sabt, ' +
                '    :sabn, ' +
                '    :domd, ' +
                '    :domt, ' +
                '    :domn  ' +
                '  )';

        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('servicio_id').AsString := servicio_id;
        qryAux.ParamByName('empresa_id').AsInteger := empresa_id;
        qryAux.ParamByName('funcion_id').AsInteger := funcion_id;
        qryAux.ParamByName('asignacion_id').AsInteger := asignacion;
        qryAux.ParamByName('anio').AsInteger       := anio;
        qryAux.ParamByName('semana').AsInteger     := semana;
        qryAux.ParamByName('fecha_inicial').AsDate := fecha_inicial;

        qryAux.ParamByName('lund').AsInteger       := 0;
        qryAux.ParamByName('lunt').AsInteger       := 0;
        qryAux.ParamByName('lunn').AsInteger       := 0;

        qryAux.ParamByName('mard').AsInteger       := 0;
        qryAux.ParamByName('mart').AsInteger       := 0;
        qryAux.ParamByName('marn').AsInteger       := 0;

        qryAux.ParamByName('mied').AsInteger       := 0;
        qryAux.ParamByName('miet').AsInteger       := 0;
        qryAux.ParamByName('mien').AsInteger       := 0;

        qryAux.ParamByName('jued').AsInteger       := 0;
        qryAux.ParamByName('juet').AsInteger       := 0;
        qryAux.ParamByName('juen').AsInteger       := 0;

        qryAux.ParamByName('vied').AsInteger       := 0;
        qryAux.ParamByName('viet').AsInteger       := 0;
        qryAux.ParamByName('vien').AsInteger       := 0;

        qryAux.ParamByName('sabd').AsInteger       := 0;
        qryAux.ParamByName('sabt').AsInteger       := 0;
        qryAux.ParamByName('sabn').AsInteger       := 0;

        qryAux.ParamByName('domd').AsInteger       := 0;
        qryAux.ParamByName('domt').AsInteger       := 0;
        qryAux.ParamByName('domn').AsInteger       := 0;
        qryAux.ExecSQL;

        CargaPreasignacionSemanal(empresa_id,
                                  servicio_id,
                                  anio,
                                  semana);
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.Preasignacion_LimpiarSemana. ' + E.Message);
     end;
end;

procedure TdmMain.Preasignacion_MarcarSemana(servicio_id : string; empresa_id, funcion_id, asignacion, anio, semana : Integer; fecha_inicial : TDateTime);
var
   xSQL : string;
begin
     try
        BorrarServiciosPreasignacionSemanal(
                                            servicio_id,
                                            empresa_id,
                                            funcion_id,
                                            asignacion,
                                            anio,
                                            semana
                                            );

        xSQL := 'INSERT INTO servicios_preasignacion_semanal ( ' +
                '  servicio_id, ' +
                '  empresa_id, ' +
                '  funcion_id, ' +
                '  asignacion_id,  ' +
                '  anio, ' +
                '  semana, ' +
                '  fecha_inicial, ' +
                '  lund, ' +
                '  lunt, ' +
                '  lunn, ' +
                '  mard, ' +
                '  mart, ' +
                '  marn, ' +
                '  mied, ' +
                '  miet, ' +
                '  mien, ' +
                '  jued, ' +
                '  juet, ' +
                '  juen, ' +
                '  vied, ' +
                '  viet, ' +
                '  vien, ' +
                '  sabd, ' +
                '  sabt, ' +
                '  sabn, ' +
                '  domd, ' +
                '  domt, ' +
                '  domn ' +
                ') ' +
                'VALUES ' +
                '  ( ' +
                '    :servicio_id, ' +
                '    :empresa_id, ' +
                '    :funcion_id, ' +
                '    :asignacion_id, ' +
                '    :anio, ' +
                '    :semana, ' +
                '    :fecha_inicial, ' +
                '    :lund, ' +
                '    :lunt, ' +
                '    :lunn, ' +
                '    :mard, ' +
                '    :mart, ' +
                '    :marn, ' +
                '    :mied, ' +
                '    :miet, ' +
                '    :mien, ' +
                '    :jued, ' +
                '    :juet, ' +
                '    :juen, ' +
                '    :vied, ' +
                '    :viet, ' +
                '    :vien, ' +
                '    :sabd, ' +
                '    :sabt, ' +
                '    :sabn, ' +
                '    :domd, ' +
                '    :domt, ' +
                '    :domn  ' +
                '  )';

        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('servicio_id').AsString := servicio_id;
        qryAux.ParamByName('empresa_id').AsInteger := empresa_id;
        qryAux.ParamByName('funcion_id').AsInteger := funcion_id;
        qryAux.ParamByName('asignacion_id').AsInteger := asignacion;
        qryAux.ParamByName('anio').AsInteger       := anio;
        qryAux.ParamByName('semana').AsInteger     := semana;
        qryAux.ParamByName('fecha_inicial').AsDate := fecha_inicial;

        qryAux.ParamByName('lund').AsInteger       := 1;
        qryAux.ParamByName('lunt').AsInteger       := 1;
        qryAux.ParamByName('lunn').AsInteger       := 1;

        qryAux.ParamByName('mard').AsInteger       := 1;
        qryAux.ParamByName('mart').AsInteger       := 1;
        qryAux.ParamByName('marn').AsInteger       := 1;

        qryAux.ParamByName('mied').AsInteger       := 1;
        qryAux.ParamByName('miet').AsInteger       := 1;
        qryAux.ParamByName('mien').AsInteger       := 1;

        qryAux.ParamByName('jued').AsInteger       := 1;
        qryAux.ParamByName('juet').AsInteger       := 1;
        qryAux.ParamByName('juen').AsInteger       := 1;

        qryAux.ParamByName('vied').AsInteger       := 1;
        qryAux.ParamByName('viet').AsInteger       := 1;
        qryAux.ParamByName('vien').AsInteger       := 1;

        qryAux.ParamByName('sabd').AsInteger       := 1;
        qryAux.ParamByName('sabt').AsInteger       := 1;
        qryAux.ParamByName('sabn').AsInteger       := 1;

        qryAux.ParamByName('domd').AsInteger       := 1;
        qryAux.ParamByName('domt').AsInteger       := 1;
        qryAux.ParamByName('domn').AsInteger       := 1;
        qryAux.ExecSQL;

        CargaPreasignacionSemanal(empresa_id,
                                  servicio_id,
                                  anio,
                                  semana);
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.Preasignacion_MarcarSemana. ' + E.Message);
     end;
end;

procedure TdmMain.Preasignacion_Programar24hT1(servicio_id: string; empresa_id, funcion_id, asignacion, anio, semana: Integer; fecha_inicial: TDateTime);
var
   xSQL : string;
begin
     try
        BorrarServiciosPreasignacionSemanal(
                                            servicio_id,
                                            empresa_id,
                                            funcion_id,
                                            asignacion,
                                            anio,
                                            semana
                                            );

        xSQL := 'INSERT INTO servicios_preasignacion_semanal ( ' +
                '  servicio_id, ' +
                '  empresa_id, ' +
                '  funcion_id, ' +
                '  asignacion_id,  ' +
                '  anio, ' +
                '  semana, ' +
                '  fecha_inicial, ' +
                '  lund, ' +
                '  lunt, ' +
                '  lunn, ' +
                '  mard, ' +
                '  mart, ' +
                '  marn, ' +
                '  mied, ' +
                '  miet, ' +
                '  mien, ' +
                '  jued, ' +
                '  juet, ' +
                '  juen, ' +
                '  vied, ' +
                '  viet, ' +
                '  vien, ' +
                '  sabd, ' +
                '  sabt, ' +
                '  sabn, ' +
                '  domd, ' +
                '  domt, ' +
                '  domn ' +
                ') ' +
                'VALUES ' +
                '  ( ' +
                '    :servicio_id, ' +
                '    :empresa_id, ' +
                '    :funcion_id, ' +
                '    :asignacion_id, ' +
                '    :anio, ' +
                '    :semana, ' +
                '    :fecha_inicial, ' +
                '    :lund, ' +
                '    :lunt, ' +
                '    :lunn, ' +
                '    :mard, ' +
                '    :mart, ' +
                '    :marn, ' +
                '    :mied, ' +
                '    :miet, ' +
                '    :mien, ' +
                '    :jued, ' +
                '    :juet, ' +
                '    :juen, ' +
                '    :vied, ' +
                '    :viet, ' +
                '    :vien, ' +
                '    :sabd, ' +
                '    :sabt, ' +
                '    :sabn, ' +
                '    :domd, ' +
                '    :domt, ' +
                '    :domn  ' +
                '  )';

        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('servicio_id').AsString := servicio_id;
        qryAux.ParamByName('empresa_id').AsInteger := empresa_id;
        qryAux.ParamByName('funcion_id').AsInteger := funcion_id;
        qryAux.ParamByName('asignacion_id').AsInteger := asignacion;
        qryAux.ParamByName('anio').AsInteger       := anio;
        qryAux.ParamByName('semana').AsInteger     := semana;
        qryAux.ParamByName('fecha_inicial').AsDate := fecha_inicial;

        qryAux.ParamByName('lund').AsInteger       := 1;
        qryAux.ParamByName('lunt').AsInteger       := 1;
        qryAux.ParamByName('lunn').AsInteger       := 1;

        qryAux.ParamByName('mard').AsInteger       := 0;
        qryAux.ParamByName('mart').AsInteger       := 0;
        qryAux.ParamByName('marn').AsInteger       := 0;

        qryAux.ParamByName('mied').AsInteger       := 1;
        qryAux.ParamByName('miet').AsInteger       := 1;
        qryAux.ParamByName('mien').AsInteger       := 1;

        qryAux.ParamByName('jued').AsInteger       := 0;
        qryAux.ParamByName('juet').AsInteger       := 0;
        qryAux.ParamByName('juen').AsInteger       := 0;

        qryAux.ParamByName('vied').AsInteger       := 1;
        qryAux.ParamByName('viet').AsInteger       := 1;
        qryAux.ParamByName('vien').AsInteger       := 1;

        qryAux.ParamByName('sabd').AsInteger       := 0;
        qryAux.ParamByName('sabt').AsInteger       := 0;
        qryAux.ParamByName('sabn').AsInteger       := 0;

        qryAux.ParamByName('domd').AsInteger       := 1;
        qryAux.ParamByName('domt').AsInteger       := 1;
        qryAux.ParamByName('domn').AsInteger       := 1;
        qryAux.ExecSQL;

        CargaPreasignacionSemanal(empresa_id,
                                  servicio_id,
                                  anio,
                                  semana);
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.Preasignacion_Programar24hT1. ' + E.Message);
     end;
end;

procedure TdmMain.Preasignacion_Programar24hT2(servicio_id: string; empresa_id, funcion_id, asignacion, anio, semana: Integer; fecha_inicial: TDateTime);
var
   xSQL : string;
begin
     try
        BorrarServiciosPreasignacionSemanal(
                                            servicio_id,
                                            empresa_id,
                                            funcion_id,
                                            asignacion,
                                            anio,
                                            semana
                                            );

        xSQL := 'INSERT INTO servicios_preasignacion_semanal ( ' +
                '  servicio_id, ' +
                '  empresa_id, ' +
                '  funcion_id, ' +
                '  asignacion_id,  ' +
                '  anio, ' +
                '  semana, ' +
                '  fecha_inicial, ' +
                '  lund, ' +
                '  lunt, ' +
                '  lunn, ' +
                '  mard, ' +
                '  mart, ' +
                '  marn, ' +
                '  mied, ' +
                '  miet, ' +
                '  mien, ' +
                '  jued, ' +
                '  juet, ' +
                '  juen, ' +
                '  vied, ' +
                '  viet, ' +
                '  vien, ' +
                '  sabd, ' +
                '  sabt, ' +
                '  sabn, ' +
                '  domd, ' +
                '  domt, ' +
                '  domn ' +
                ') ' +
                'VALUES ' +
                '  ( ' +
                '    :servicio_id, ' +
                '    :empresa_id, ' +
                '    :funcion_id, ' +
                '    :asignacion_id, ' +
                '    :anio, ' +
                '    :semana, ' +
                '    :fecha_inicial, ' +
                '    :lund, ' +
                '    :lunt, ' +
                '    :lunn, ' +
                '    :mard, ' +
                '    :mart, ' +
                '    :marn, ' +
                '    :mied, ' +
                '    :miet, ' +
                '    :mien, ' +
                '    :jued, ' +
                '    :juet, ' +
                '    :juen, ' +
                '    :vied, ' +
                '    :viet, ' +
                '    :vien, ' +
                '    :sabd, ' +
                '    :sabt, ' +
                '    :sabn, ' +
                '    :domd, ' +
                '    :domt, ' +
                '    :domn  ' +
                '  )';

        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('servicio_id').AsString := servicio_id;
        qryAux.ParamByName('empresa_id').AsInteger := empresa_id;
        qryAux.ParamByName('funcion_id').AsInteger := funcion_id;
        qryAux.ParamByName('asignacion_id').AsInteger := asignacion;
        qryAux.ParamByName('anio').AsInteger       := anio;
        qryAux.ParamByName('semana').AsInteger     := semana;
        qryAux.ParamByName('fecha_inicial').AsDate := fecha_inicial;

        qryAux.ParamByName('lund').AsInteger       := 0;
        qryAux.ParamByName('lunt').AsInteger       := 0;
        qryAux.ParamByName('lunn').AsInteger       := 0;

        qryAux.ParamByName('mard').AsInteger       := 1;
        qryAux.ParamByName('mart').AsInteger       := 1;
        qryAux.ParamByName('marn').AsInteger       := 1;

        qryAux.ParamByName('mied').AsInteger       := 0;
        qryAux.ParamByName('miet').AsInteger       := 0;
        qryAux.ParamByName('mien').AsInteger       := 0;

        qryAux.ParamByName('jued').AsInteger       := 1;
        qryAux.ParamByName('juet').AsInteger       := 1;
        qryAux.ParamByName('juen').AsInteger       := 1;

        qryAux.ParamByName('vied').AsInteger       := 0;
        qryAux.ParamByName('viet').AsInteger       := 0;
        qryAux.ParamByName('vien').AsInteger       := 0;

        qryAux.ParamByName('sabd').AsInteger       := 1;
        qryAux.ParamByName('sabt').AsInteger       := 1;
        qryAux.ParamByName('sabn').AsInteger       := 1;

        qryAux.ParamByName('domd').AsInteger       := 0;
        qryAux.ParamByName('domt').AsInteger       := 0;
        qryAux.ParamByName('domn').AsInteger       := 0;
        qryAux.ExecSQL;

        CargaPreasignacionSemanal(empresa_id,
                                  servicio_id,
                                  anio,
                                  semana);
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.Preasignacion_Programar24hT2. ' + E.Message);
     end;
end;

procedure TdmMain.Preasignacion_ProgramarDiurno(servicio_id: string; empresa_id, funcion_id, asignacion, anio, semana: Integer; fecha_inicial: TDateTime);
var
   xSQL : string;
begin
     try
        BorrarServiciosPreasignacionSemanal(
                                            servicio_id,
                                            empresa_id,
                                            funcion_id,
                                            asignacion,
                                            anio,
                                            semana
                                            );

        xSQL := 'INSERT INTO servicios_preasignacion_semanal ( ' +
                '  servicio_id, ' +
                '  empresa_id, ' +
                '  funcion_id, ' +
                '  asignacion_id,  ' +
                '  anio, ' +
                '  semana, ' +
                '  fecha_inicial, ' +
                '  lund, ' +
                '  lunt, ' +
                '  lunn, ' +
                '  mard, ' +
                '  mart, ' +
                '  marn, ' +
                '  mied, ' +
                '  miet, ' +
                '  mien, ' +
                '  jued, ' +
                '  juet, ' +
                '  juen, ' +
                '  vied, ' +
                '  viet, ' +
                '  vien, ' +
                '  sabd, ' +
                '  sabt, ' +
                '  sabn, ' +
                '  domd, ' +
                '  domt, ' +
                '  domn ' +
                ') ' +
                'VALUES ' +
                '  ( ' +
                '    :servicio_id, ' +
                '    :empresa_id, ' +
                '    :funcion_id, ' +
                '    :asignacion_id, ' +
                '    :anio, ' +
                '    :semana, ' +
                '    :fecha_inicial, ' +
                '    :lund, ' +
                '    :lunt, ' +
                '    :lunn, ' +
                '    :mard, ' +
                '    :mart, ' +
                '    :marn, ' +
                '    :mied, ' +
                '    :miet, ' +
                '    :mien, ' +
                '    :jued, ' +
                '    :juet, ' +
                '    :juen, ' +
                '    :vied, ' +
                '    :viet, ' +
                '    :vien, ' +
                '    :sabd, ' +
                '    :sabt, ' +
                '    :sabn, ' +
                '    :domd, ' +
                '    :domt, ' +
                '    :domn  ' +
                '  )';

        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('servicio_id').AsString := servicio_id;
        qryAux.ParamByName('empresa_id').AsInteger := empresa_id;
        qryAux.ParamByName('funcion_id').AsInteger := funcion_id;
        qryAux.ParamByName('asignacion_id').AsInteger := asignacion;
        qryAux.ParamByName('anio').AsInteger       := anio;
        qryAux.ParamByName('semana').AsInteger     := semana;
        qryAux.ParamByName('fecha_inicial').AsDate := fecha_inicial;

        qryAux.ParamByName('lund').AsInteger       := 1;
        qryAux.ParamByName('lunt').AsInteger       := 0;
        qryAux.ParamByName('lunn').AsInteger       := 0;

        qryAux.ParamByName('mard').AsInteger       := 1;
        qryAux.ParamByName('mart').AsInteger       := 0;
        qryAux.ParamByName('marn').AsInteger       := 0;

        qryAux.ParamByName('mied').AsInteger       := 1;
        qryAux.ParamByName('miet').AsInteger       := 0;
        qryAux.ParamByName('mien').AsInteger       := 0;

        qryAux.ParamByName('jued').AsInteger       := 1;
        qryAux.ParamByName('juet').AsInteger       := 0;
        qryAux.ParamByName('juen').AsInteger       := 0;

        qryAux.ParamByName('vied').AsInteger       := 1;
        qryAux.ParamByName('viet').AsInteger       := 0;
        qryAux.ParamByName('vien').AsInteger       := 0;

        qryAux.ParamByName('sabd').AsInteger       := 1;
        qryAux.ParamByName('sabt').AsInteger       := 0;
        qryAux.ParamByName('sabn').AsInteger       := 0;

        qryAux.ParamByName('domd').AsInteger       := 1;
        qryAux.ParamByName('domt').AsInteger       := 0;
        qryAux.ParamByName('domn').AsInteger       := 0;
        qryAux.ExecSQL;

        CargaPreasignacionSemanal(empresa_id,
                                  servicio_id,
                                  anio,
                                  semana);
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.Preasignacion_ProgramarDiurno. ' + E.Message);
     end;
end;

procedure TdmMain.Preasignacion_ProgramarNocturno(servicio_id: string; empresa_id, funcion_id, asignacion, anio, semana: Integer; fecha_inicial: TDateTime);
var
   xSQL : string;
begin
     try
        BorrarServiciosPreasignacionSemanal(
                                            servicio_id,
                                            empresa_id,
                                            funcion_id,
                                            asignacion,
                                            anio,
                                            semana
                                            );

        xSQL := 'INSERT INTO servicios_preasignacion_semanal ( ' +
                '  servicio_id, ' +
                '  empresa_id, ' +
                '  funcion_id, ' +
                '  asignacion_id,  ' +
                '  anio, ' +
                '  semana, ' +
                '  fecha_inicial, ' +
                '  lund, ' +
                '  lunt, ' +
                '  lunn, ' +
                '  mard, ' +
                '  mart, ' +
                '  marn, ' +
                '  mied, ' +
                '  miet, ' +
                '  mien, ' +
                '  jued, ' +
                '  juet, ' +
                '  juen, ' +
                '  vied, ' +
                '  viet, ' +
                '  vien, ' +
                '  sabd, ' +
                '  sabt, ' +
                '  sabn, ' +
                '  domd, ' +
                '  domt, ' +
                '  domn ' +
                ') ' +
                'VALUES ' +
                '  ( ' +
                '    :servicio_id, ' +
                '    :empresa_id, ' +
                '    :funcion_id, ' +
                '    :asignacion_id, ' +
                '    :anio, ' +
                '    :semana, ' +
                '    :fecha_inicial, ' +
                '    :lund, ' +
                '    :lunt, ' +
                '    :lunn, ' +
                '    :mard, ' +
                '    :mart, ' +
                '    :marn, ' +
                '    :mied, ' +
                '    :miet, ' +
                '    :mien, ' +
                '    :jued, ' +
                '    :juet, ' +
                '    :juen, ' +
                '    :vied, ' +
                '    :viet, ' +
                '    :vien, ' +
                '    :sabd, ' +
                '    :sabt, ' +
                '    :sabn, ' +
                '    :domd, ' +
                '    :domt, ' +
                '    :domn  ' +
                '  )';

        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('servicio_id').AsString := servicio_id;
        qryAux.ParamByName('empresa_id').AsInteger := empresa_id;
        qryAux.ParamByName('funcion_id').AsInteger := funcion_id;
        qryAux.ParamByName('asignacion_id').AsInteger := asignacion;
        qryAux.ParamByName('anio').AsInteger       := anio;
        qryAux.ParamByName('semana').AsInteger     := semana;
        qryAux.ParamByName('fecha_inicial').AsDate := fecha_inicial;

        qryAux.ParamByName('lund').AsInteger       := 0;
        qryAux.ParamByName('lunt').AsInteger       := 0;
        qryAux.ParamByName('lunn').AsInteger       := 1;

        qryAux.ParamByName('mard').AsInteger       := 0;
        qryAux.ParamByName('mart').AsInteger       := 0;
        qryAux.ParamByName('marn').AsInteger       := 1;

        qryAux.ParamByName('mied').AsInteger       := 0;
        qryAux.ParamByName('miet').AsInteger       := 0;
        qryAux.ParamByName('mien').AsInteger       := 1;

        qryAux.ParamByName('jued').AsInteger       := 0;
        qryAux.ParamByName('juet').AsInteger       := 0;
        qryAux.ParamByName('juen').AsInteger       := 1;

        qryAux.ParamByName('vied').AsInteger       := 0;
        qryAux.ParamByName('viet').AsInteger       := 0;
        qryAux.ParamByName('vien').AsInteger       := 1;

        qryAux.ParamByName('sabd').AsInteger       := 0;
        qryAux.ParamByName('sabt').AsInteger       := 0;
        qryAux.ParamByName('sabn').AsInteger       := 1;

        qryAux.ParamByName('domd').AsInteger       := 0;
        qryAux.ParamByName('domt').AsInteger       := 0;
        qryAux.ParamByName('domn').AsInteger       := 1;
        qryAux.ExecSQL;

        CargaPreasignacionSemanal(empresa_id,
                                  servicio_id,
                                  anio,
                                  semana);
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.Preasignacion_ProgramarNocturno. ' + E.Message);
     end;
end;

function TdmMain.ProgramarServicios(empresaId: integer; fecha: TDateTime): Integer;

       procedure InsertaAsistencia(a, m, d, empleado : Integer; servicio : String; funcion, asignacion : Integer; horaEntrada, horaSalida : TTime);
       var
          cad : String;
       begin
            cad := 'INSERT INTO asistencia ( ' +
                   '  empresa_id, ' +
                   '  anio, ' +
                   '  mes, ' +
                   '  dia, ' +
                   '  empleado_id, ' +
                   '  servicio_id, ' +
                   '  funcion_id, ' +
                   '  asignacion_id, ' +
                   '  horaentprog, ' +
                   '  horasalprog ' +
                   ') ' +
                   'VALUES ' +
                   '  ( ' +
                   '  :empresa, ' +
                   '  :anio, ' +
                   '  :mes, ' +
                   '  :dia, ' +
                   '  :empleado, ' +
                   '  :servicio, ' +
                   '  :funcion, ' +
                   '  :asignacion, ' +
                   '  :HoraEntProg, ' +
                   '  :HoraSalProg ' +
                   '  )';
            qryAux2.Close;
            qryAux2.SQL.Clear;
            qryAux2.SQL.Add(cad);
            qryAux2.ParamByName('empresa').AsInteger       := empresaId;
            qryAux2.ParamByName('anio').AsInteger          := a;
            qryAux2.ParamByName('mes').AsInteger           := m;
            qryAux2.ParamByName('dia').AsInteger           := d;
            qryAux2.ParamByName('empleado').AsInteger      := empleado;
            qryAux2.ParamByName('servicio').AsString       := servicio;
            qryAux2.ParamByName('funcion').AsInteger       := funcion;
            qryAux2.ParamByName('asignacion').AsInteger    := asignacion;
            qryAux2.ParamByName('horaentprog').AsDateTime  := horaEntrada;
            qryAux2.ParamByName('horasalprog').AsDateTime  := horaSalida;
            qryAux2.ExecSQL;
       end;

       function ExisteAsistencia(a, m, d, empleado : Integer) : Boolean;
       var
          cad : String;
       begin
            cad := 'SELECT COUNT(empresa_id) FROM asistencia ' +
                   ' WHERE empresa_id = :empresa ' +
                   '       AND anio = :anio ' +
                   '       AND mes = :mes ' +
                   '       AND dia = :dia ' +
                   '       AND empleado_id = :empleado';
            qryAux2.Close;
            qryAux2.SQL.Clear;
            qryAux2.SQL.Add(cad);
            qryAux2.ParamByName('empresa').AsInteger       := empresaId;
            qryAux2.ParamByName('anio').AsInteger          := a;
            qryAux2.ParamByName('mes').AsInteger           := m;
            qryAux2.ParamByName('dia').AsInteger           := d;
            qryAux2.ParamByName('empleado').AsInteger      := empleado;
            qryAux2.Open;
            Result := qryAux2.Fields[0].AsInteger > 0;
       end;

       procedure ActualizaAsistencia(a, m, d, empleado : Integer; servicio : String; funcion, asignacion : Integer; horaEntrada, horaSalida : TTime);
       var
          cad : String;
       begin
            cad := 'UPDATE asistencia SET ' +
                   '  servicio_id   = :servicio, ' +
                   '  funcion_id    = :funcion, ' +
                   '  asignacion_id = :asignacion, ' +
                   '  horaentprog   = :HoraEntProg, ' +
                   '  horasalprog   = :HoraSalProg ' +
                   ' WHERE ' +
                   '  empresa_id  = :empresa ' +
                   '  AND anio    = :anio ' +
                   '  AND mes     = :mes ' +
                   '  AND dia     = :dia ' +
                   '  empleado_id = :empleado';
            qryAux2.Close;
            qryAux2.SQL.Clear;
            qryAux2.SQL.Add(cad);
            qryAux2.ParamByName('empresa').AsInteger       := empresaId;
            qryAux2.ParamByName('anio').AsInteger          := a;
            qryAux2.ParamByName('mes').AsInteger           := m;
            qryAux2.ParamByName('dia').AsInteger           := d;
            qryAux2.ParamByName('empleado').AsInteger      := empleado;
            qryAux2.ParamByName('servicio').AsString       := servicio;
            qryAux2.ParamByName('funcion').AsInteger       := funcion;
            qryAux2.ParamByName('asignacion').AsInteger    := asignacion;
            qryAux2.ParamByName('horaentprog').AsDateTime  := horaEntrada;
            qryAux2.ParamByName('horasalprog').AsDateTime  := horaSalida;
            qryAux2.ExecSQL;
       end;

      function ExisteProgramacion(anio, mes, dia, emp, asig: Integer): Boolean;
      var
         cad : String;
      begin
           Result := False;
           cad := 'SELECT empleado_id FROM asistencia ' +
                  ' WHERE anio = :anio ' +
                  '       AND mes = :mes ' +
                  '       AND dia = :dia ' +
                  '       AND empleado_id = :empleado_id' +
                  '       AND asignacion_id = :asignacion_id';
           qryAux2.SQL.Clear;
           qryAux2.SQL.Add(cad);
           qryAux2.ParamByName('anio').AsInteger          := anio;
           qryAux2.ParamByName('mes').AsInteger           := mes;
           qryAux2.ParamByName('dia').AsInteger           := dia;
           qryAux2.ParamByName('empleado_id').AsInteger   := emp;
           qryAux2.ParamByName('asignacion_id').AsInteger := asig;
           qryAux2.Open;
           Result := qryAux2.FieldByName('empleado_id').AsInteger > 0;
      end;

var
   xSql : string;
   anio, semana, num : Integer;
   fechaTmp : TDateTime;
   a, m, d : word;
begin
     Result := 0;
     try
        anio := YearOf(fecha);
        semana := WeekOfTheYear(fecha);

        xSql := 'SELECT sps.*, sf.*, sfe.empleado_id ' +
                ' FROM servicios_preasignacion_semanal sps ' +
                ' LEFT JOIN servicios_funciones sf ' +
                '      ON sps.servicio_id = sf.servicio_id AND sps.funcion_id = sf.funcion_id ' +
                ' LEFT JOIN servicios_funciones_empleados sfe ' +
                '      ON sfe.servicio_id = sps.servicio_id AND sfe.funcion_id = sps.funcion_id AND sfe.asignacion_id = sps.asignacion_id ' +
                ' WHERE sps.anio = :anio ' +
                '       AND sps.semana = :semana';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSql);
        qryAux.ParamByName('anio').AsInteger   := anio;
        qryAux.ParamByName('semana').AsInteger := semana;
        qryAux.Open;
        if qryAux.IsEmpty then
           begin
                MessageDlg('No hay servicios por programar. ' + #13 + #10 +
                           'Revisar preasignación de la semana del ' +
                           FormatDateTime('dd/mm/yyyy',StartOfTheWeek(fecha)) + ' al ' +
                           FormatDateTime('dd/mm/yyyy',EndOfTheWeek(fecha)),mtWarning,[mbOK],-1);
                Result := -1;
           end;
        while not qryAux.Eof do
              begin
                   if qryAux.FieldByName('empleado_id').AsInteger > 0 then
                      begin
                           // Lunes
                           fechaTmp := qryAux.FieldByName('fecha_inicial').AsDateTime;
                           DecodeDate(fechaTmp,a,m,d);
                           if ((qryAux.FieldByName('lunD').AsInteger <> 0) or
                               (qryAux.FieldByName('lunT').AsInteger <> 0) or
                               (qryAux.FieldByName('lunN').AsInteger <> 0)) and
                              (qryAux.FieldByName('lunes').AsInteger = 1) then
                              if not ExisteProgramacion(a, m, d, qryAux.FieldByName('empleado_id').AsInteger, qryAux.FieldByName('asignacion_id').AsInteger) then
                                 begin
                                      if ExisteAsistencia(a, m, d, qryAux.FieldByName('empleado_id').AsInteger) then
                                         ActualizaAsistencia(a,
                                                             m,
                                                             d,
                                                             qryAux.FieldByName('empleado_id').AsInteger,
                                                             qryAux.FieldByName('servicio_id').AsString,
                                                             qryAux.FieldByName('funcion_id').AsInteger,
                                                             qryAux.FieldByName('asignacion_id').AsInteger,
                                                             qryAux.FieldByName('lunesent').AsDateTime,
                                                             qryAux.FieldByName('lunessal').AsDateTime
                                                            )
                                      else
                                          InsertaAsistencia(a,
                                                            m,
                                                            d,
                                                            qryAux.FieldByName('empleado_id').AsInteger,
                                                            qryAux.FieldByName('servicio_id').AsString,
                                                            qryAux.FieldByName('funcion_id').AsInteger,
                                                            qryAux.FieldByName('asignacion_id').AsInteger,
                                                            qryAux.FieldByName('lunesent').AsDateTime,
                                                            qryAux.FieldByName('lunessal').AsDateTime
                                                            );
                                      Inc(Result);
                                 end;

                           // Martes
                           fechaTmp := IncDay(qryAux.FieldByName('fecha_inicial').AsDateTime,1);
                           DecodeDate(fechaTmp,a,m,d);
                           if ((qryAux.FieldByName('marD').AsInteger <> 0) or
                               (qryAux.FieldByName('marT').AsInteger <> 0) or
                               (qryAux.FieldByName('marN').AsInteger <> 0)) and
                              (qryAux.FieldByName('martes').AsInteger = 1) then
                              if not ExisteProgramacion(a, m, d, qryAux.FieldByName('empleado_id').AsInteger, qryAux.FieldByName('asignacion_id').AsInteger) then
                                 begin
                                      if ExisteAsistencia(a, m, d, qryAux.FieldByName('empleado_id').AsInteger) then
                                         ActualizaAsistencia(a,
                                                             m,
                                                             d,
                                                             qryAux.FieldByName('empleado_id').AsInteger,
                                                             qryAux.FieldByName('servicio_id').AsString,
                                                             qryAux.FieldByName('funcion_id').AsInteger,
                                                             qryAux.FieldByName('asignacion_id').AsInteger,
                                                             qryAux.FieldByName('martesent').AsDateTime,
                                                             qryAux.FieldByName('martessal').AsDateTime
                                                            )
                                      else
                                          InsertaAsistencia(a,
                                                            m,
                                                            d,
                                                            qryAux.FieldByName('empleado_id').AsInteger,
                                                            qryAux.FieldByName('servicio_id').AsString,
                                                            qryAux.FieldByName('funcion_id').AsInteger,
                                                            qryAux.FieldByName('asignacion_id').AsInteger,
                                                            qryAux.FieldByName('martesent').AsDateTime,
                                                            qryAux.FieldByName('martessal').AsDateTime
                                                            );
                                      Inc(Result);
                                 end;

                           // Miércoles
                           fechaTmp := IncDay(qryAux.FieldByName('fecha_inicial').AsDateTime,2);
                           DecodeDate(fechaTmp,a,m,d);
                           if ((qryAux.FieldByName('mieD').AsInteger <> 0) or
                               (qryAux.FieldByName('mieT').AsInteger <> 0) or
                               (qryAux.FieldByName('mieN').AsInteger <> 0)) and
                              (qryAux.FieldByName('miercoles').AsInteger = 1) then
                              if not ExisteProgramacion(a, m, d, qryAux.FieldByName('empleado_id').AsInteger, qryAux.FieldByName('asignacion_id').AsInteger) then
                                 begin
                                      if ExisteAsistencia(a, m, d, qryAux.FieldByName('empleado_id').AsInteger) then
                                         ActualizaAsistencia(a,
                                                             m,
                                                             d,
                                                             qryAux.FieldByName('empleado_id').AsInteger,
                                                             qryAux.FieldByName('servicio_id').AsString,
                                                             qryAux.FieldByName('funcion_id').AsInteger,
                                                             qryAux.FieldByName('asignacion_id').AsInteger,
                                                             qryAux.FieldByName('miercolesent').AsDateTime,
                                                             qryAux.FieldByName('miercolessal').AsDateTime
                                                            )
                                      else
                                          InsertaAsistencia(a,
                                                            m,
                                                            d,
                                                            qryAux.FieldByName('empleado_id').AsInteger,
                                                            qryAux.FieldByName('servicio_id').AsString,
                                                            qryAux.FieldByName('funcion_id').AsInteger,
                                                            qryAux.FieldByName('asignacion_id').AsInteger,
                                                            qryAux.FieldByName('miercolesent').AsDateTime,
                                                            qryAux.FieldByName('miercolessal').AsDateTime
                                                            );
                                      Inc(Result);
                                 end;

                           // Jueves
                           fechaTmp := IncDay(qryAux.FieldByName('fecha_inicial').AsDateTime,3);
                           DecodeDate(fechaTmp,a,m,d);
                           if ((qryAux.FieldByName('jueD').AsInteger <> 0) or
                               (qryAux.FieldByName('jueT').AsInteger <> 0) or
                               (qryAux.FieldByName('jueN').AsInteger <> 0)) and
                              (qryAux.FieldByName('jueves').AsInteger = 1) then
                              if not ExisteProgramacion(a, m, d, qryAux.FieldByName('empleado_id').AsInteger, qryAux.FieldByName('asignacion_id').AsInteger) then
                                 begin
                                      if ExisteAsistencia(a, m, d, qryAux.FieldByName('empleado_id').AsInteger) then
                                         ActualizaAsistencia(a,
                                                             m,
                                                             d,
                                                             qryAux.FieldByName('empleado_id').AsInteger,
                                                             qryAux.FieldByName('servicio_id').AsString,
                                                             qryAux.FieldByName('funcion_id').AsInteger,
                                                             qryAux.FieldByName('asignacion_id').AsInteger,
                                                             qryAux.FieldByName('juevesent').AsDateTime,
                                                             qryAux.FieldByName('juevessal').AsDateTime
                                                            )
                                      else
                                          InsertaAsistencia(a,
                                                            m,
                                                            d,
                                                            qryAux.FieldByName('empleado_id').AsInteger,
                                                            qryAux.FieldByName('servicio_id').AsString,
                                                            qryAux.FieldByName('funcion_id').AsInteger,
                                                            qryAux.FieldByName('asignacion_id').AsInteger,
                                                            qryAux.FieldByName('juevesent').AsDateTime,
                                                            qryAux.FieldByName('juevessal').AsDateTime
                                                            );
                                      Inc(Result);
                                 end;

                           // Viernes
                           fechaTmp := IncDay(qryAux.FieldByName('fecha_inicial').AsDateTime,4);
                           DecodeDate(fechaTmp,a,m,d);
                           if ((qryAux.FieldByName('vieD').AsInteger <> 0) or
                               (qryAux.FieldByName('vieT').AsInteger <> 0) or
                               (qryAux.FieldByName('vieN').AsInteger <> 0)) and
                              (qryAux.FieldByName('viernes').AsInteger = 1) then
                              if not ExisteProgramacion(a, m, d, qryAux.FieldByName('empleado_id').AsInteger, qryAux.FieldByName('asignacion_id').AsInteger) then
                                 begin
                                      if ExisteAsistencia(a, m, d, qryAux.FieldByName('empleado_id').AsInteger) then
                                         ActualizaAsistencia(a,
                                                             m,
                                                             d,
                                                             qryAux.FieldByName('empleado_id').AsInteger,
                                                             qryAux.FieldByName('servicio_id').AsString,
                                                             qryAux.FieldByName('funcion_id').AsInteger,
                                                             qryAux.FieldByName('asignacion_id').AsInteger,
                                                             qryAux.FieldByName('viernesent').AsDateTime,
                                                             qryAux.FieldByName('viernessal').AsDateTime
                                                            )
                                      else
                                          InsertaAsistencia(a,
                                                            m,
                                                            d,
                                                            qryAux.FieldByName('empleado_id').AsInteger,
                                                            qryAux.FieldByName('servicio_id').AsString,
                                                            qryAux.FieldByName('funcion_id').AsInteger,
                                                            qryAux.FieldByName('asignacion_id').AsInteger,
                                                            qryAux.FieldByName('viernesent').AsDateTime,
                                                            qryAux.FieldByName('viernessal').AsDateTime
                                                            );
                                      Inc(Result);
                                 end;

                           // Sábado
                           fechaTmp := IncDay(qryAux.FieldByName('fecha_inicial').AsDateTime,5);
                           DecodeDate(fechaTmp,a,m,d);
                           if ((qryAux.FieldByName('sabD').AsInteger <> 0) or
                               (qryAux.FieldByName('sabT').AsInteger <> 0) or
                               (qryAux.FieldByName('sabN').AsInteger <> 0)) and
                              (qryAux.FieldByName('sabado').AsInteger = 1) then
                              if not ExisteProgramacion(a, m, d, qryAux.FieldByName('empleado_id').AsInteger, qryAux.FieldByName('asignacion_id').AsInteger) then
                                 begin
                                      if ExisteAsistencia(a, m, d, qryAux.FieldByName('empleado_id').AsInteger) then
                                         ActualizaAsistencia(a,
                                                             m,
                                                             d,
                                                             qryAux.FieldByName('empleado_id').AsInteger,
                                                             qryAux.FieldByName('servicio_id').AsString,
                                                             qryAux.FieldByName('funcion_id').AsInteger,
                                                             qryAux.FieldByName('asignacion_id').AsInteger,
                                                             qryAux.FieldByName('sabadoent').AsDateTime,
                                                             qryAux.FieldByName('sabadosal').AsDateTime
                                                            )
                                      else
                                          InsertaAsistencia(a,
                                                            m,
                                                            d,
                                                            qryAux.FieldByName('empleado_id').AsInteger,
                                                            qryAux.FieldByName('servicio_id').AsString,
                                                            qryAux.FieldByName('funcion_id').AsInteger,
                                                            qryAux.FieldByName('asignacion_id').AsInteger,
                                                            qryAux.FieldByName('sabadoent').AsDateTime,
                                                            qryAux.FieldByName('sabadosal').AsDateTime
                                                            );
                                      Inc(Result);
                                 end;

                           // Domingo
                           fechaTmp := IncDay(qryAux.FieldByName('fecha_inicial').AsDateTime,6);
                           DecodeDate(fechaTmp,a,m,d);
                           if ((qryAux.FieldByName('domD').AsInteger <> 0) or
                               (qryAux.FieldByName('domT').AsInteger <> 0) or
                               (qryAux.FieldByName('domN').AsInteger <> 0)) and
                              (qryAux.FieldByName('domingo').AsInteger = 1) then
                              if not ExisteProgramacion(a, m, d, qryAux.FieldByName('empleado_id').AsInteger, qryAux.FieldByName('asignacion_id').AsInteger) then
                                 begin
                                      if ExisteAsistencia(a, m, d, qryAux.FieldByName('empleado_id').AsInteger) then
                                         ActualizaAsistencia(a,
                                                             m,
                                                             d,
                                                             qryAux.FieldByName('empleado_id').AsInteger,
                                                             qryAux.FieldByName('servicio_id').AsString,
                                                             qryAux.FieldByName('funcion_id').AsInteger,
                                                             qryAux.FieldByName('asignacion_id').AsInteger,
                                                             qryAux.FieldByName('domingoent').AsDateTime,
                                                             qryAux.FieldByName('domingosal').AsDateTime
                                                            )
                                      else
                                          InsertaAsistencia(a,
                                                            m,
                                                            d,
                                                            qryAux.FieldByName('empleado_id').AsInteger,
                                                            qryAux.FieldByName('servicio_id').AsString,
                                                            qryAux.FieldByName('funcion_id').AsInteger,
                                                            qryAux.FieldByName('asignacion_id').AsInteger,
                                                            qryAux.FieldByName('domingoent').AsDateTime,
                                                            qryAux.FieldByName('domingosal').AsDateTime
                                                            );
                                      Inc(Result);
                                 end;
                      end;
                   qryAux.Next;
              end;
     finally

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

procedure TdmMain.qryEmpleadosEditBeforePost(DataSet: TDataSet);
var
   xSQL : string;
begin
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
               FieldByName('servicio_id').AsString       := ' SP01';
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
        xSQL := 'UPDATE empleados SET servicio_id = :servicio_id ' +
                ' WHERE empresa_id = :empresa_id ' +
                '       AND empleado_id = :empleado_id';
        qryClientes.Close;
        qryClientes.SQL.Clear;
        qryClientes.SQL.Add(xSQL);
        qryClientes.ParamByName('empresa_id').AsInteger  := empresaId;
        qryClientes.ParamByName('servicio_id').AsString  := ' SP01';
        qryClientes.ParamByName('empleado_id').AsInteger := empleado;
        qryClientes.ExecSQL;

        // Se eliminan los registros de la programación de asistencia que aun no hayan tenido movimientos.
        xSQL := 'DELETE FROM asistencia ' +
                'WHERE ' +
                '  empresa_id =:empresa ' +
                '  AND empleado_id =:empleado ' +
                '  AND horaentrada IS null ' +
                '  AND horasalida IS null';
        qryClientes.Close;
        qryClientes.SQL.Clear;
        qryClientes.SQL.Add(xSQL);
        qryClientes.ParamByName('empresa').AsInteger  := empresaId;
        qryClientes.ParamByName('empleado').AsInteger := empleado;
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

procedure TdmMain.ReingresoEmpleado(empresaId, empleado: Integer);
var
   xSQL : string;
begin
     try
        xSQL := 'UPDATE empleados SET activo = ''1'', reingreso = ''S'', comentarios_baja = COALESCE(comentarios_baja,'''') || E''\r\n'' || ''- REINGRESO EL '' || to_char(current_timestamp, ''dd/MM/YYYY'') ' +
                ' WHERE empleado_id = :empleado ' +
                '       AND empresa_id =  :empresaId';
        qryAux.Close;
        qryAux.SQL.Clear;
        qryAux.SQL.Add(xSQL);
        qryAux.ParamByName('empleado').AsInteger  := empleado;
        qryAux.ParamByName('empresaId').AsInteger := empresaId;
        qryAux.ExecSQL;
     except
           on E:Exception do
              raise Exception.Create('Ha ocurrido un error en TdmMain.ReingresoEmpleado. ' + E.Message);
     end;
end;

function TdmMain.ValidaUsuario(usuario, password: string): boolean;
var
   xSQL : string;
begin
     Result := False;
     xSQL := 'SELECT * FROM usuarios WHERE clave = :usuario AND password = :password';
     qryAux.Close;
     qryAux.SQL.Clear;
     qryAux.SQL.Add(xSQL);
     qryAux.ParamByName('usuario').AsString  := usuario;
     qryAux.ParamByName('password').AsString := password;
     qryAux.Open;
     Result := not qryAux.IsEmpty;
end;

end.

object dmMain: TdmMain
  OldCreateOrder = False
  Height = 862
  Width = 925
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = 'localhost'
    Port = 5432
    Database = 'bdcops2'
    User = 'postgres'
    Password = 'root'
    Protocol = 'postgresql'
    Left = 36
    Top = 20
  end
  object qryEmpleados: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 116
  end
  object dsEmpleados: TDataSource
    DataSet = cdsEmpleados
    Left = 176
    Top = 116
  end
  object cdsEmpleados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpleados'
    Left = 136
    Top = 116
  end
  object dspEmpleados: TDataSetProvider
    DataSet = qryEmpleados
    Left = 96
    Top = 116
  end
  object dsClientes: TDataSource
    DataSet = cdsClientes
    Left = 176
    Top = 212
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    Left = 136
    Top = 212
  end
  object dspClientes: TDataSetProvider
    DataSet = qryClientes
    Left = 96
    Top = 212
  end
  object qryClientes: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 212
  end
  object qryEmpleadosEdit: TZQuery
    Connection = ZConnection1
    OnCalcFields = qryEmpleadosEditCalcFields
    BeforePost = qryEmpleadosEditBeforePost
    OnNewRecord = qryEmpleadosEditNewRecord
    SQL.Strings = (
      'select * from empleados where empleado_id = :empleado_id')
    Params = <
      item
        DataType = ftInteger
        Name = 'empleado_id'
        ParamType = ptInput
        Value = 0
      end>
    Left = 356
    Top = 116
    ParamData = <
      item
        DataType = ftInteger
        Name = 'empleado_id'
        ParamType = ptInput
        Value = 0
      end>
  end
  object qryEmpresas: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from empresas')
    Params = <>
    Left = 800
    Top = 16
  end
  object qryOficinas: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from oficinas')
    Params = <>
    Left = 800
    Top = 64
  end
  object qryServiciosList: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from servicios')
    Params = <>
    Left = 800
    Top = 112
  end
  object qryEstatusSP: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from estatus_sp')
    Params = <>
    Left = 800
    Top = 160
  end
  object qryPuestos: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from tipospuesto')
    Params = <>
    Left = 800
    Top = 208
  end
  object dsEmpresas: TDataSource
    DataSet = qryEmpresas
    Left = 852
    Top = 16
  end
  object dsOficinas: TDataSource
    DataSet = qryOficinas
    Left = 852
    Top = 64
  end
  object dsServiciosList: TDataSource
    DataSet = qryServiciosList
    Left = 848
    Top = 112
  end
  object dsEstatusSP: TDataSource
    DataSet = qryEstatusSP
    Left = 848
    Top = 160
  end
  object dsPuestos: TDataSource
    DataSet = qryPuestos
    Left = 844
    Top = 208
  end
  object qryBancos: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from tiposbanco')
    Params = <>
    Left = 800
    Top = 256
  end
  object dsBancos: TDataSource
    DataSet = qryBancos
    Left = 844
    Top = 256
  end
  object qryEscolaridad: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from tiposestudios')
    Params = <>
    Left = 800
    Top = 300
  end
  object dsEscolaridad: TDataSource
    DataSet = qryEscolaridad
    Left = 844
    Top = 300
  end
  object qryAux: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 132
    Top = 20
  end
  object qryDetalleEmpleado: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT'
      #9'e.nombres,'
      '                e.apellido_paterno,'
      '               e.apellido_materno,'
      #9'e.rfc,'
      #9'e.nss,'
      #9'e.curp,'
      #9'e.calle,'
      #9'e.num_ext,'
      #9'e.colonia,'
      #9'e.domicilio_ciudad,'
      #9'e.domicilio_estado,'
      #9'e.codigo_postal,'
      #9'e.telefono_domicilio,'
      #9'e.telefono_celular,'
      #9'foto'
      'FROM empleados_fotos ef'
      'LEFT JOIN empleados e ON e.empleado_id = ef.empleado_id'
      'WHERE ef.empleado_id =:empleado')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empleado'
        ParamType = ptUnknown
      end>
    Left = 228
    Top = 116
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empleado'
        ParamType = ptUnknown
      end>
  end
  object dsDetalleEmpleado: TDataSource
    AutoEdit = False
    DataSet = qryDetalleEmpleado
    Left = 276
    Top = 116
  end
  object dsEmpleadosEdit: TDataSource
    DataSet = qryEmpleadosEdit
    Left = 400
    Top = 116
  end
  object qryReporte: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT'
      #9'e.nombres,'
      '                e.apellido_paterno,'
      '               e.apellido_materno,'
      #9'e.rfc,'
      #9'e.nss,'
      #9'e.curp,'
      #9'e.calle,'
      #9'e.num_ext,'
      #9'e.colonia,'
      #9'e.domicilio_ciudad,'
      #9'e.domicilio_estado,'
      #9'e.codigo_postal,'
      #9'e.telefono_domicilio,'
      #9'e.telefono_celular,'
      #9'foto'
      'FROM empleados_fotos ef'
      'LEFT JOIN empleados e ON e.empleado_id = ef.empleado_id'
      'WHERE ef.empleado_id =:empleado')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empleado'
        ParamType = ptUnknown
      end>
    Left = 468
    Top = 28
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empleado'
        ParamType = ptUnknown
      end>
  end
  object dsReporte: TDataSource
    DataSet = qryReporte
    Left = 516
    Top = 28
  end
  object qryAux2: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 172
    Top = 20
  end
  object dsUsuarios: TDataSource
    DataSet = cdsUsuarios
    Left = 176
    Top = 308
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuarios'
    Left = 136
    Top = 308
  end
  object dspUsuarios: TDataSetProvider
    DataSet = qryUsuarios
    Left = 96
    Top = 308
  end
  object qryUsuarios: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 308
  end
  object dsPermisos: TDataSource
    DataSet = memPermisos
    Left = 852
    Top = 580
  end
  object qryPermisos: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT acciones.*, '
      
        #9#9#9'CASE WHEN permisos.permiso IS NULL THEN '#39'N'#39' ELSE '#39'S'#39' END perm' +
        'iso, '
      #9#9#9#39'ADMON'#39' usuario '
      'FROM acciones '
      'LEFT JOIN ( '
      '           SELECT nombre, '
      #9'                 '#39'S'#39' permiso '
      '           FROM acciones_permisos '
      '           WHERE usuario = '#39'ADMON'#39' '
      '          ) permisos ON permisos.nombre = acciones.nombre '
      ' ORDER BY categoria,'#9'descripcion')
    Params = <>
    Left = 768
    Top = 580
    object qryPermisoscategoria: TWideStringField
      FieldName = 'categoria'
      Required = True
      Size = 100
    end
    object qryPermisosdescripcion: TWideStringField
      FieldName = 'descripcion'
      Required = True
      Size = 100
    end
    object qryPermisosnombre: TWideStringField
      FieldName = 'nombre'
      Required = True
      Size = 100
    end
    object qryPermisospermiso: TWideMemoField
      FieldName = 'permiso'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryPermisosusuario: TStringField
      FieldName = 'usuario'
      ReadOnly = True
      Size = 255
    end
  end
  object qryClientesEdit: TZQuery
    Connection = ZConnection1
    AfterPost = qryClientesEditAfterPost
    OnNewRecord = qryClientesEditNewRecord
    SQL.Strings = (
      'select * from clientes where cliente_id = :cliente_id')
    Params = <
      item
        DataType = ftInteger
        Name = 'cliente_id'
        ParamType = ptInput
        Value = 0
      end>
    Left = 356
    Top = 212
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cliente_id'
        ParamType = ptInput
        Value = 0
      end>
  end
  object dsClientesEdit: TDataSource
    DataSet = qryClientesEdit
    Left = 400
    Top = 212
  end
  object qryEmpleadosFotosEdit: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from empleados_fotos where empleado_id = :empleado_id')
    Params = <
      item
        DataType = ftInteger
        Name = 'empleado_id'
        ParamType = ptInput
        Value = 0
      end>
    Left = 476
    Top = 116
    ParamData = <
      item
        DataType = ftInteger
        Name = 'empleado_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryEmpleadosFotosEditempleado_id: TIntegerField
      FieldName = 'empleado_id'
      Required = True
    end
    object qryEmpleadosFotosEditfoto: TBlobField
      FieldName = 'foto'
    end
  end
  object dsEmpleadosFotosEdit: TDataSource
    DataSet = qryEmpleadosFotosEdit
    Left = 520
    Top = 116
  end
  object memPermisos: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 808
    Top = 580
  end
  object dsServicios: TDataSource
    DataSet = cdsServicios
    Left = 176
    Top = 260
  end
  object cdsServicios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServicios'
    Left = 136
    Top = 260
  end
  object dspServicios: TDataSetProvider
    DataSet = qryServicios
    Left = 96
    Top = 260
  end
  object qryServicios: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 260
  end
  object qryServiciosEdit: TZQuery
    Connection = ZConnection1
    OnNewRecord = qryServiciosEditNewRecord
    SQL.Strings = (
      'select * from servicios where servicio_id = :servicio_id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end>
    Left = 356
    Top = 260
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end>
  end
  object dsServiciosEdit: TDataSource
    DataSet = qryServiciosEdit
    Left = 400
    Top = 260
  end
  object qryClientesList: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select cliente_id, descripcion from clientes where activo = 1')
    Params = <>
    Left = 800
    Top = 348
  end
  object dsClientesList: TDataSource
    DataSet = qryClientesList
    Left = 844
    Top = 348
  end
  object dsVehiculos: TDataSource
    DataSet = cdsVehiculos
    Left = 176
    Top = 356
  end
  object cdsVehiculos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVehiculos'
    Left = 136
    Top = 356
  end
  object dspVehiculos: TDataSetProvider
    DataSet = qryVehiculos
    Left = 96
    Top = 356
  end
  object qryVehiculos: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 356
  end
  object qryVehiculosEdit: TZQuery
    Connection = ZConnection1
    OnNewRecord = qryVehiculosEditNewRecord
    SQL.Strings = (
      
        'select * from vehiculos where empresa_id = :empresa_id and vehic' +
        'ulo_id = :vehiculo_id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vehiculo_id'
        ParamType = ptUnknown
      end>
    Left = 356
    Top = 356
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vehiculo_id'
        ParamType = ptUnknown
      end>
  end
  object dsVehiculosEdit: TDataSource
    DataSet = qryVehiculosEdit
    Left = 400
    Top = 356
  end
  object qryHorarios: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      
        'select id_horario, descripcion, empleados_requeridos from horari' +
        'os')
    Params = <>
    Left = 800
    Top = 396
  end
  object dsHorarios: TDataSource
    DataSet = qryHorarios
    Left = 844
    Top = 396
  end
  object qryTiposFuncion: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select id_tipo_funcion, descripcion from tipos_funciones')
    Params = <>
    Left = 800
    Top = 444
  end
  object dsTiposFuncion: TDataSource
    DataSet = qryTiposFuncion
    Left = 844
    Top = 444
  end
  object dsServiciosFunciones: TDataSource
    DataSet = cdsServiciosFunciones
    Left = 176
    Top = 404
  end
  object cdsServiciosFunciones: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServiciosFunciones'
    Left = 136
    Top = 404
  end
  object dspServiciosFunciones: TDataSetProvider
    DataSet = qryServiciosFunciones
    Left = 96
    Top = 404
  end
  object qryServiciosFunciones: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT'
      #9'funcion_id funcion,'
      #9'tf.descripcion tipo,'
      #9'h.descripcion horario'
      'FROM servicios_funciones sf'
      
        'LEFT JOIN tipos_funciones tf ON tf.id_tipo_funcion = sf.id_tipo_' +
        'funcion'
      'LEFT JOIN horarios h ON h.id_horario = sf.id_horario'
      'WHERE empresa_id = :empresa_id'
      '      AND servicio_id = :servicio_id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end>
    Left = 56
    Top = 404
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end>
  end
  object qryServiciosFuncionesEdit: TZQuery
    Connection = ZConnection1
    OnNewRecord = qryServiciosFuncionesEditNewRecord
    SQL.Strings = (
      
        'SELECT * FROM servicios_funciones WHERE empresa_id = :empresa_id' +
        ' AND servicio_id = :servicio_id AND funcion_id = :funcion_id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'funcion_id'
        ParamType = ptUnknown
      end>
    Left = 356
    Top = 404
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'funcion_id'
        ParamType = ptUnknown
      end>
  end
  object dsServiciosFuncionesEdit: TDataSource
    DataSet = qryServiciosFuncionesEdit
    Left = 400
    Top = 404
  end
  object dsServiciosFuncionesEmpleados: TDataSource
    DataSet = cdsServiciosFuncionesEmpleados
    Left = 176
    Top = 452
  end
  object cdsServiciosFuncionesEmpleados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServiciosFuncionesEmpleados'
    Left = 136
    Top = 452
  end
  object dspServiciosFuncionesEmpleados: TDataSetProvider
    DataSet = qryServiciosFuncionesEmpleados
    Left = 96
    Top = 452
  end
  object qryServiciosFuncionesEmpleados: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT s.*,'
      '      s.funcion_id funcion,'
      '      tf.descripcion tipo,'
      '      h.descripcion horario'
      'FROM'
      '('
      
        'SELECT sfe.*, id_tipo_funcion, id_horario, CAST(nombres || '#39' '#39' |' +
        '| apellido_paterno || '#39' '#39' ||apellido_materno as varchar(100)) as' +
        ' nombre_empleado'
      'FROM servicios_funciones_empleados sfe'
      
        'LEFT JOIN servicios_funciones sf ON sf.empresa_id = sfe.empresa_' +
        'id'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'AND sf.servicio_id = sfe.servicio_id'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'AND sf.funcion_id = sfe.funcion_id'
      
        'LEFT JOIN empleados e ON e.empresa_id = sfe.empresa_id and e.emp' +
        'leado_id = sfe.empleado_id'
      'WHERE sfe.empresa_id = :empresa_id'
      '      AND sfe.servicio_id = :servicio_id'
      ') as s'
      
        'LEFT JOIN tipos_funciones tf ON tf.id_tipo_funcion = s.id_tipo_f' +
        'uncion'
      'LEFT JOIN horarios h ON h.id_horario = s.id_horario')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end>
    Left = 56
    Top = 452
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end>
  end
  object qryServiciosFuncionesEmpleadosEdit: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM servicios_funciones_empleados '
      'WHERE empresa_id = :empresa_id '
      '      AND servicio_id = :servicio_id'
      '      AND funcion_id = :funcion_id'
      '      AND asignacion_id = :asignacion_id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'funcion_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'asignacion_id'
        ParamType = ptUnknown
      end>
    Left = 356
    Top = 452
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'funcion_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'asignacion_id'
        ParamType = ptUnknown
      end>
  end
  object dsServiciosFuncionesEmpleadosEdit: TDataSource
    DataSet = qryServiciosFuncionesEmpleadosEdit
    Left = 400
    Top = 452
  end
  object dsEmpleadosList: TDataSource
    DataSet = cdsEmpleadosList
    Left = 176
    Top = 68
  end
  object dspEmpleadosList: TDataSetProvider
    DataSet = qryEmpleadosList
    Left = 96
    Top = 68
  end
  object cdsEmpleadosList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpleadosList'
    Left = 136
    Top = 68
  end
  object qryEmpleadosList: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 68
  end
  object dsServiciosPreasignacionSemanal: TDataSource
    DataSet = cdsServiciosPreasignacionSemanal
    Left = 176
    Top = 500
  end
  object cdsServiciosPreasignacionSemanal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServiciosPreasignacionSemanal'
    Left = 136
    Top = 500
  end
  object dspServiciosPreasignacionSemanal: TDataSetProvider
    DataSet = qryServiciosPreasignacionSemanal
    Left = 96
    Top = 500
  end
  object qryServiciosPreasignacionSemanal: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT'
      #9's.*, s.funcion_id funcion,'
      #9'tf.descripcion tipo,'
      #9'h.descripcion horario,'
      #9'spa.*'
      'FROM'
      #9'('
      #9#9'SELECT'
      #9#9#9'sfe.*, id_tipo_funcion,'
      #9#9#9'id_horario,'
      
        #9#9#9'nombres || '#39' '#39' || apellido_paterno || '#39' '#39' || apellido_materno' +
        ' AS nombre_empleado'
      #9#9'FROM servicios_funciones_empleados sfe'
      
        #9#9'LEFT JOIN servicios_funciones sf ON sf.empresa_id = sfe.empres' +
        'a_id'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'AND sf.servicio_id = sfe.servicio_id'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'AND sf.funcion_id = sfe.funcion_id'
      #9#9'LEFT JOIN empleados e ON e.empresa_id = sfe.empresa_id'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9' AND e.empleado_id = sfe.empleado_id'
      #9#9'WHERE sfe.empresa_id = :empresa_id'
      #9#9#9#9#9'AND sfe.servicio_id = :servicio_id'
      #9') AS s'
      
        'LEFT JOIN tipos_funciones tf ON tf.id_tipo_funcion = s.id_tipo_f' +
        'uncion'
      'LEFT JOIN horarios h ON h.id_horario = s.id_horario'
      'LEFT JOIN ('
      #9'SELECT *'
      #9'FROM servicios_preasignacion_semanal'
      #9'WHERE empresa_id = :empresa_id'
      #9#9#9#9'AND servicio_id = :servicio_id'
      #9#9#9#9'AND anio = :anio'
      #9#9#9#9'AND semana = :semana'
      ') spa ON spa.empresa_id = s.empresa_id'
      #9#9#9#9' AND spa.servicio_id = s.servicio_id'
      #9#9#9#9' AND spa.funcion_id = s.funcion_id'
      #9#9#9#9' AND spa.asignacion_id = s.asignacion_id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'anio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'semana'
        ParamType = ptUnknown
      end>
    Left = 56
    Top = 500
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'anio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'semana'
        ParamType = ptUnknown
      end>
  end
  object qryEmpleadosCursosEdit: TZQuery
    Connection = ZConnection1
    BeforePost = qryEmpleadosCursosEditBeforePost
    OnNewRecord = qryEmpleadosCursosEditNewRecord
    SQL.Strings = (
      
        'select * from empleados_cursos where empresa_id = :empresa_id an' +
        'd empleado_id = :empleado_id')
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'empleado_id'
        ParamType = ptInput
        Value = 0
      end>
    Left = 356
    Top = 164
    ParamData = <
      item
        DataType = ftInteger
        Name = 'empresa_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'empleado_id'
        ParamType = ptInput
        Value = 0
      end>
  end
  object dsEmpleadosCursosEdit: TDataSource
    DataSet = qryEmpleadosCursosEdit
    Left = 400
    Top = 164
  end
  object qryTiposCurso: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select id_tipo_curso, descripcion_tipo_curso from tipos_curso')
    Params = <>
    Left = 800
    Top = 492
  end
  object dsTiposCurso: TDataSource
    DataSet = qryTiposCurso
    Left = 844
    Top = 492
  end
  object qryEmpleadosSocioEconomicoEdit: TZQuery
    Connection = ZConnection1
    BeforePost = qryEmpleadosCursosEditBeforePost
    OnNewRecord = qryEmpleadosCursosEditNewRecord
    SQL.Strings = (
      
        'select * from empleados_socioeconomico where empresa_id = :empre' +
        'sa_id and empleado_id = :empleado_id')
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'empleado_id'
        ParamType = ptInput
        Value = 0
      end>
    Left = 476
    Top = 164
    ParamData = <
      item
        DataType = ftInteger
        Name = 'empresa_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'empleado_id'
        ParamType = ptInput
        Value = 0
      end>
  end
  object dsEmpleadosSocioEconomicoEdit: TDataSource
    DataSet = qryEmpleadosSocioEconomicoEdit
    Left = 520
    Top = 164
  end
  object dsAsistencia: TDataSource
    DataSet = cdsAsistencia
    Left = 176
    Top = 548
  end
  object cdsAsistencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAsistencia'
    Left = 136
    Top = 548
  end
  object dspAsistencia: TDataSetProvider
    DataSet = qryAsistencia
    Left = 96
    Top = 548
  end
  object qryAsistencia: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 548
  end
  object dsAsistenciaDetalle: TDataSource
    DataSet = cdsAsistenciaDetalle
    Left = 440
    Top = 548
  end
  object cdsAsistenciaDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAsistenciaDetalle'
    Left = 400
    Top = 548
  end
  object dspAsistenciaDetalle: TDataSetProvider
    DataSet = qryAsistenciaDetalle
    Left = 360
    Top = 548
  end
  object qryAsistenciaDetalle: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 320
    Top = 548
  end
  object dsEquipo: TDataSource
    DataSet = cdsEquipo
    Left = 176
    Top = 596
  end
  object cdsEquipo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEquipo'
    Left = 136
    Top = 596
  end
  object dspEquipo: TDataSetProvider
    DataSet = qryEquipo
    Left = 96
    Top = 596
  end
  object qryEquipo: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 596
  end
  object qryEquipoEdit: TZQuery
    Connection = ZConnection1
    OnNewRecord = qryEquipoEditNewRecord
    SQL.Strings = (
      
        'select * from equipo where empresa_id = :empresa_id and equipo_i' +
        'd = :equipo_id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'equipo_id'
        ParamType = ptUnknown
      end>
    Left = 360
    Top = 596
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'equipo_id'
        ParamType = ptUnknown
      end>
  end
  object dsEquipoEdit: TDataSource
    DataSet = qryEquipoEdit
    Left = 404
    Top = 596
  end
  object dsVehiculosCombustible: TDataSource
    DataSet = cdsVehiculosCombustible
    Left = 176
    Top = 644
  end
  object cdsVehiculosCombustible: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVehiculosCombustible'
    Left = 136
    Top = 644
  end
  object dspVehiculosCombustible: TDataSetProvider
    DataSet = qryVehiculosCombustible
    Left = 96
    Top = 644
  end
  object qryVehiculosCombustible: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 644
  end
  object qryVehiculosCombustibleEdit: TZQuery
    Connection = ZConnection1
    OnNewRecord = qryVehiculosCombustibleEditNewRecord
    SQL.Strings = (
      'SELECT * FROM vehiculos_combustible'
      'WHERE empresa_id = :empresa_id AND'
      'vehiculo_id = :vehiculo_id AND'
      'combustible_id = :combustible_id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vehiculo_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'combustible_id'
        ParamType = ptUnknown
      end>
    Left = 356
    Top = 644
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vehiculo_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'combustible_id'
        ParamType = ptUnknown
      end>
  end
  object dsVehiculosCombustibleEdit: TDataSource
    DataSet = qryVehiculosCombustibleEdit
    Left = 400
    Top = 644
  end
  object dsVehiculosReparaciones: TDataSource
    DataSet = cdsVehiculosReparaciones
    Left = 176
    Top = 692
  end
  object cdsVehiculosReparaciones: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVehiculosReparaciones'
    Left = 136
    Top = 692
  end
  object dspVehiculosReparaciones: TDataSetProvider
    DataSet = qryVehiculosReparaciones
    Left = 96
    Top = 692
  end
  object qryVehiculosReparaciones: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 692
  end
  object qryVehiculosReparacionesEdit: TZQuery
    Connection = ZConnection1
    OnNewRecord = qryVehiculosReparacionesEditNewRecord
    SQL.Strings = (
      'SELECT * FROM vehiculos_reparaciones'
      'WHERE empresa_id = :empresa_id AND'
      'vehiculo_id = :vehiculo_id AND'
      'reparacion_id = :reparacion_id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vehiculo_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'reparacion_id'
        ParamType = ptUnknown
      end>
    Left = 356
    Top = 692
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vehiculo_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'reparacion_id'
        ParamType = ptUnknown
      end>
  end
  object dsVehiculosReparacionesEdit: TDataSource
    DataSet = qryVehiculosReparacionesEdit
    Left = 400
    Top = 692
  end
  object dsEquipoList: TDataSource
    DataSet = cdsEquipoList
    Left = 700
    Top = 656
  end
  object dspEquipoList: TDataSetProvider
    DataSet = qryEquipoList
    Left = 620
    Top = 656
  end
  object cdsEquipoList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEquipoList'
    Left = 660
    Top = 656
  end
  object qryEquipoList: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 580
    Top = 656
  end
  object dsServiciosEquipo: TDataSource
    DataSet = cdsServiciosEquipo
    Left = 660
    Top = 404
  end
  object cdsServiciosEquipo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServiciosEquipo'
    Left = 620
    Top = 404
  end
  object dspServiciosEquipo: TDataSetProvider
    DataSet = qryServiciosEquipo
    Left = 580
    Top = 404
  end
  object qryServiciosEquipo: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT'
      #9'se.*, tipo,'
      #9'descripcion,'
      #9'marca,'
      #9'modelo'
      'FROM servicios_equipo se'
      
        'LEFT JOIN equipo e ON e.empresa_id = se.empresa_id AND e.equipo_' +
        'id = se.equipo_id'
      'WHERE se.empresa_id = :empresa_id'
      #9'AND se.servicio_id = :servicio_id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end>
    Left = 540
    Top = 404
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servicio_id'
        ParamType = ptUnknown
      end>
  end
  object qryServiciosCliente: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT'
      #9'servicio_id,'
      #9'descripcion,'
      
        #9'"DomCalle" || '#39' '#39' || "DomNoExt" || '#39' '#39' || "DomColonia" AS domic' +
        'ilio'
      'FROM'
      #9'servicios'
      'WHERE'
      #9'empresa_id = :empresa_id'
      #9'AND cliente_id = :cliente_id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente_id'
        ParamType = ptUnknown
      end>
    Left = 536
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente_id'
        ParamType = ptUnknown
      end>
  end
  object dspServiciosCliente: TDataSetProvider
    DataSet = qryServiciosCliente
    Left = 576
    Top = 252
  end
  object cdsServiciosCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServiciosCliente'
    Left = 616
    Top = 252
  end
  object dsServiciosCliente: TDataSource
    DataSet = cdsServiciosCliente
    Left = 656
    Top = 252
  end
  object dsMovtosAlmacen: TDataSource
    DataSet = cdsMovtosAlmacen
    Left = 176
    Top = 740
  end
  object cdsMovtosAlmacen: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovtosAlmacen'
    Left = 136
    Top = 740
  end
  object dspMovtosAlmacen: TDataSetProvider
    DataSet = qryMovtosAlmacen
    Left = 96
    Top = 740
  end
  object qryMovtosAlmacen: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 740
  end
  object dsMovtosAlmacenEdit: TDataSource
    DataSet = qryMovtosAlmacenEdit
    Left = 400
    Top = 756
  end
  object qryMovtosAlmacenEdit: TZQuery
    Connection = ZConnection1
    OnNewRecord = qryMovtosAlmacenEditNewRecord
    SQL.Strings = (
      'SELECT * FROM movtos_almacen'
      'WHERE empresa_id = :empresa_id AND'
      'id_movto_almacen = :id_movto_almacen')
    Params = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_movto_almacen'
        ParamType = ptUnknown
      end>
    Left = 356
    Top = 756
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_movto_almacen'
        ParamType = ptUnknown
      end>
  end
end

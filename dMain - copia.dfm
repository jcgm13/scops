object dmMain: TdmMain
  OldCreateOrder = False
  Height = 608
  Width = 807
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    HostName = 'localhost'
    Port = 5432
    Database = 'bdcops'
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
    Top = 128
  end
  object dsEmpleados: TDataSource
    DataSet = cdsEmpleados
    Left = 176
    Top = 128
  end
  object cdsEmpleados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpleados'
    Left = 136
    Top = 128
  end
  object dspEmpleados: TDataSetProvider
    DataSet = qryEmpleados
    Left = 96
    Top = 128
  end
  object dsClientes: TDataSource
    DataSet = cdsClientes
    Left = 176
    Top = 176
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    Left = 136
    Top = 176
  end
  object dspClientes: TDataSetProvider
    DataSet = qryClientes
    Left = 96
    Top = 176
  end
  object qryClientes: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 176
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
    Top = 128
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
    Left = 668
    Top = 12
  end
  object qryOficinas: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from oficinas')
    Params = <>
    Left = 668
    Top = 60
  end
  object qryServiciosList: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from servicios')
    Params = <>
    Left = 668
    Top = 108
  end
  object qryEstatusSP: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from estatus_sp')
    Params = <>
    Left = 668
    Top = 156
  end
  object qryPuestos: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from tipospuesto')
    Params = <>
    Left = 668
    Top = 204
  end
  object dsEmpresas: TDataSource
    DataSet = qryEmpresas
    Left = 720
    Top = 12
  end
  object dsOficinas: TDataSource
    DataSet = qryOficinas
    Left = 720
    Top = 60
  end
  object dsServiciosList: TDataSource
    DataSet = qryServiciosList
    Left = 716
    Top = 108
  end
  object dsEstatusSP: TDataSource
    DataSet = qryEstatusSP
    Left = 716
    Top = 156
  end
  object dsPuestos: TDataSource
    DataSet = qryPuestos
    Left = 712
    Top = 204
  end
  object qryBancos: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from tiposbanco')
    Params = <>
    Left = 668
    Top = 252
  end
  object dsBancos: TDataSource
    DataSet = qryBancos
    Left = 712
    Top = 252
  end
  object qryEscolaridad: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from tiposestudios')
    Params = <>
    Left = 668
    Top = 296
  end
  object dsEscolaridad: TDataSource
    DataSet = qryEscolaridad
    Left = 712
    Top = 296
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
    Top = 128
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
    Top = 128
  end
  object dsEmpleadosEdit: TDataSource
    DataSet = qryEmpleadosEdit
    Left = 400
    Top = 128
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
    Top = 272
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuarios'
    Left = 136
    Top = 272
  end
  object dspUsuarios: TDataSetProvider
    DataSet = qryUsuarios
    Left = 96
    Top = 272
  end
  object qryUsuarios: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 272
  end
  object dsPermisos: TDataSource
    DataSet = memPermisos
    Left = 440
    Top = 536
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
    Left = 356
    Top = 536
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
    Top = 176
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
    Top = 176
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
    Top = 128
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
    Top = 128
  end
  object memPermisos: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 396
    Top = 536
  end
  object dsServicios: TDataSource
    DataSet = cdsServicios
    Left = 176
    Top = 224
  end
  object cdsServicios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServicios'
    Left = 136
    Top = 224
  end
  object dspServicios: TDataSetProvider
    DataSet = qryServicios
    Left = 96
    Top = 224
  end
  object qryServicios: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 224
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
    Top = 224
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
    Top = 224
  end
  object qryClientesList: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select cliente_id, descripcion from clientes where activo = 1')
    Params = <>
    Left = 668
    Top = 344
  end
  object dsClientesList: TDataSource
    DataSet = qryClientesList
    Left = 712
    Top = 344
  end
  object dsVehiculos: TDataSource
    DataSet = cdsVehiculos
    Left = 176
    Top = 320
  end
  object cdsVehiculos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVehiculos'
    Left = 136
    Top = 320
  end
  object dspVehiculos: TDataSetProvider
    DataSet = qryVehiculos
    Left = 96
    Top = 320
  end
  object qryVehiculos: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 320
  end
  object qryVehiculosEdit: TZQuery
    Connection = ZConnection1
    OnNewRecord = qryVehiculosEditNewRecord
    SQL.Strings = (
      'select * from vehiculos where vehiculo_id = :vehiculo_id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'vehiculo_id'
        ParamType = ptUnknown
      end>
    Left = 356
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vehiculo_id'
        ParamType = ptUnknown
      end>
  end
  object dsVehiculosEdit: TDataSource
    DataSet = qryVehiculosEdit
    Left = 400
    Top = 320
  end
  object qryHorarios: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      
        'select id_horario, descripcion, empleados_requeridos from horari' +
        'os')
    Params = <>
    Left = 668
    Top = 392
  end
  object dsHorarios: TDataSource
    DataSet = qryHorarios
    Left = 712
    Top = 392
  end
  object qryTiposFuncion: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select id_tipo_funcion, descripcion from tipos_funciones')
    Params = <>
    Left = 668
    Top = 440
  end
  object dsTiposFuncion: TDataSource
    DataSet = qryTiposFuncion
    Left = 712
    Top = 440
  end
  object dsServiciosFunciones: TDataSource
    DataSet = cdsServiciosFunciones
    Left = 176
    Top = 368
  end
  object cdsServiciosFunciones: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServiciosFunciones'
    Left = 136
    Top = 368
  end
  object dspServiciosFunciones: TDataSetProvider
    DataSet = qryServiciosFunciones
    Left = 96
    Top = 368
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
    Top = 368
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
    Top = 368
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
    Top = 368
  end
  object dsServiciosFuncionesEmpleados: TDataSource
    DataSet = cdsServiciosFuncionesEmpleados
    Left = 176
    Top = 416
  end
  object cdsServiciosFuncionesEmpleados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServiciosFuncionesEmpleados'
    Left = 136
    Top = 416
  end
  object dspServiciosFuncionesEmpleados: TDataSetProvider
    DataSet = qryServiciosFuncionesEmpleados
    Left = 96
    Top = 416
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
    Top = 416
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
    Top = 416
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
    Top = 416
  end
  object dsEmpleadosList: TDataSource
    DataSet = cdsEmpleadosList
    Left = 176
    Top = 80
  end
  object dspEmpleadosList: TDataSetProvider
    DataSet = qryEmpleadosList
    Left = 96
    Top = 80
  end
  object cdsEmpleadosList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpleadosList'
    Left = 136
    Top = 80
  end
  object qryEmpleadosList: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 56
    Top = 80
  end
  object dsServiciosPreasignacionSemanal: TDataSource
    DataSet = cdsServiciosPreasignacionSemanal
    Left = 176
    Top = 464
  end
  object cdsServiciosPreasignacionSemanal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServiciosPreasignacionSemanal'
    Left = 136
    Top = 464
  end
  object dspServiciosPreasignacionSemanal: TDataSetProvider
    DataSet = qryServiciosPreasignacionSemanal
    Left = 96
    Top = 464
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
      #9#9#9#9' AND spa.asignacion = s.asignacion_id')
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
    Top = 464
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
end

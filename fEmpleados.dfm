object frmEmpleados: TfrmEmpleados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Empleados'
  ClientHeight = 652
  ClientWidth = 904
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 616
    Width = 904
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 1
    object cxButton4: TcxButton
      Left = 700
      Top = 4
      Width = 100
      Height = 28
      Align = alRight
      Action = actGuardar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 0
    end
    object cxButton5: TcxButton
      Left = 800
      Top = 4
      Width = 100
      Height = 28
      Align = alRight
      Action = actCerrar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 1
    end
    object btnCedula: TcxButton
      Left = 204
      Top = 4
      Width = 100
      Height = 28
      Align = alLeft
      Action = frmPrincipal.actCedula
      PaintStyle = bpsCaption
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 2
    end
    object btnHojaTecnica: TcxButton
      Left = 104
      Top = 4
      Width = 100
      Height = 28
      Align = alLeft
      Action = frmPrincipal.actHojaTecnica
      PaintStyle = bpsCaption
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 3
    end
    object btnCredencial: TcxButton
      Left = 4
      Top = 4
      Width = 100
      Height = 28
      Align = alLeft
      Action = frmPrincipal.actCredencial
      PaintStyle = bpsCaption
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 904
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object xempleado_id: TcxDBTextEdit
      Left = 23
      Top = 29
      TabStop = False
      DataBinding.DataField = 'empleado_id'
      DataBinding.DataSource = dmMain.dsEmpleadosEdit
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.StyleController = frmPrincipal.cxEditStyleController1
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 75
    end
    object xNombres: TcxDBTextEdit
      Left = 104
      Top = 29
      DataBinding.DataField = 'nombres'
      DataBinding.DataSource = dmMain.dsEmpleadosEdit
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.StyleController = frmPrincipal.cxEditStyleController1
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 215
    end
    object xapellido_paterno: TcxDBTextEdit
      Left = 324
      Top = 29
      DataBinding.DataField = 'apellido_paterno'
      DataBinding.DataSource = dmMain.dsEmpleadosEdit
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.StyleController = frmPrincipal.cxEditStyleController1
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 180
    end
    object xapellido_materno: TcxDBTextEdit
      Left = 510
      Top = 29
      DataBinding.DataField = 'apellido_materno'
      DataBinding.DataSource = dmMain.dsEmpleadosEdit
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.StyleController = frmPrincipal.cxEditStyleController1
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 180
    end
    object xsexo: TcxDBRadioGroup
      Left = 805
      Top = 0
      TabStop = False
      Align = alRight
      Caption = 'Sexo'
      DataBinding.DataField = 'sexo'
      DataBinding.DataSource = dmMain.dsEmpleadosEdit
      ParentFont = False
      Properties.DefaultValue = 1
      Properties.Items = <
        item
          Caption = 'Masculino'
          Value = 1
        end
        item
          Caption = 'Femenino'
          Value = 2
        end>
      Style.LookAndFeel.NativeStyle = False
      Style.StyleController = frmPrincipal.cxEditStyleController1
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Height = 60
      Width = 99
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 699
      Top = 29
      DataBinding.DataField = 'activo'
      DataBinding.DataSource = dmMain.dsEmpleadosEdit
      ParentFont = False
      Properties.Images = frmPrincipal.imgListAcciones
      Properties.Items = <
        item
          Description = 'ACTIVO'
          ImageIndex = 9
          Value = '1'
        end
        item
          Description = 'INACTIVO'
          ImageIndex = 10
          Value = '0'
        end>
      Properties.ReadOnly = True
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 5
      OnEnter = cxDBImageComboBox1Enter
      Width = 99
    end
    object Label1: TcxLabel
      Left = 23
      Top = 15
      Caption = 'Empleado'
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 104
      Top = 15
      Caption = 'Nombre (s)'
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 324
      Top = 15
      Caption = 'Apellido Paterno'
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 510
      Top = 15
      Caption = 'Apellido Materno'
      Transparent = True
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 60
    Width = 904
    Height = 556
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet10
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 550
    ClientRectLeft = 2
    ClientRectRight = 898
    ClientRectTop = 27
    object cxTabSheet10: TcxTabSheet
      Caption = 'Resumen'
      Highlighted = True
      ImageIndex = 10
      object cxDBImage1: TcxDBImage
        Left = 24
        Top = 14
        DataBinding.DataField = 'foto'
        DataBinding.DataSource = dmMain.dsDetalleEmpleado
        Enabled = False
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.PopupMenuLayout.MenuItems = [pmiCopy, pmiSave]
        TabOrder = 0
        Height = 295
        Width = 266
      end
      object cxLabel171: TcxLabel
        Left = 339
        Top = 41
        Caption = 'Empresa:'
        Transparent = True
      end
      object cxLabel172: TcxLabel
        Left = 339
        Top = 85
        Caption = 'Estatus:'
        Transparent = True
      end
      object cxDBLookupComboBox15: TcxDBLookupComboBox
        Tag = 1
        Left = 438
        Top = 83
        DataBinding.DataField = 'estatus_sp_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'estatus_sp_id'
        Properties.ListColumns = <
          item
            MinWidth = 300
            FieldName = 'descripcion'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsEstatusSP
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 6
        Width = 400
      end
      object cxDBLookupComboBox16: TcxDBLookupComboBox
        Tag = 1
        Left = 438
        Top = 39
        DataBinding.DataField = 'empresa_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'empresa'
        Properties.ListColumns = <
          item
            MinWidth = 300
            Width = 300
            FieldName = 'descripcion'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsEmpresas
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 2
        Width = 400
      end
      object cxLabel173: TcxLabel
        Left = 339
        Top = 63
        Caption = 'Oficina:'
        Transparent = True
      end
      object cxDBLookupComboBox17: TcxDBLookupComboBox
        Tag = 1
        Left = 438
        Top = 61
        DataBinding.DataField = 'oficina_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'oficina'
        Properties.ListColumns = <
          item
            MinWidth = 300
            Width = 300
            FieldName = 'descripcion'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsOficinas
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 4
        Width = 400
      end
      object cxLabel174: TcxLabel
        Left = 339
        Top = 107
        Caption = 'Servicio Asignado:'
        Transparent = True
      end
      object cxDBLookupComboBox18: TcxDBLookupComboBox
        Tag = 1
        Left = 438
        Top = 105
        DataBinding.DataField = 'servicio_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'servicio_id'
        Properties.ListColumns = <
          item
            MinWidth = 300
            FieldName = 'descripcion'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsServiciosList
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 8
        Width = 400
      end
      object cxLabel175: TcxLabel
        Left = 339
        Top = 129
        Caption = 'Puesto:'
        Transparent = True
      end
      object cxDBLookupComboBox19: TcxDBLookupComboBox
        Tag = 1
        Left = 438
        Top = 127
        DataBinding.DataField = 'puesto_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'puesto'
        Properties.ListColumns = <
          item
            MinWidth = 300
            FieldName = 'descripcion'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsPuestos
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 10
        Width = 400
      end
      object cxLabel176: TcxLabel
        Left = 339
        Top = 151
        Caption = 'Fecha Atenci'#243'n RH:'
        Transparent = True
      end
      object cxDBDateEdit21: TcxDBDateEdit
        Tag = 1
        Left = 438
        Top = 149
        DataBinding.DataField = 'fecha_alta'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 12
        Width = 100
      end
      object cxLabel177: TcxLabel
        Left = 555
        Top = 151
        Caption = 'Inicio Labores:'
        Transparent = True
      end
      object cxDBDateEdit22: TcxDBDateEdit
        Tag = 1
        Left = 650
        Top = 149
        DataBinding.DataField = 'fecha_inicio_labores'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 13
        Width = 100
      end
      object cxLabel178: TcxLabel
        Left = 339
        Top = 14
        AutoSize = False
        Caption = 'INFORMACI'#211'N LABORAL'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 449
      end
      object cxLabel179: TcxLabel
        Left = 27
        Top = 342
        Caption = 'Calle:'
        Transparent = True
      end
      object cxDBTextEdit113: TcxDBTextEdit
        Tag = 1
        Left = 126
        Top = 341
        DataBinding.DataField = 'calle'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 26
        Width = 280
      end
      object cxLabel180: TcxLabel
        Left = 27
        Top = 386
        Caption = 'Colonia:'
        Transparent = True
      end
      object cxDBTextEdit114: TcxDBTextEdit
        Tag = 1
        Left = 126
        Top = 385
        DataBinding.DataField = 'colonia'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 37
        Width = 280
      end
      object cxLabel181: TcxLabel
        Left = 27
        Top = 364
        Caption = 'Num. Exterior:'
        Transparent = True
      end
      object cxDBTextEdit115: TcxDBTextEdit
        Tag = 1
        Left = 126
        Top = 363
        DataBinding.DataField = 'num_ext'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 28
        Width = 50
      end
      object cxLabel182: TcxLabel
        Left = 193
        Top = 365
        Caption = 'Num. Int.:'
        Transparent = True
      end
      object cxDBTextEdit116: TcxDBTextEdit
        Tag = 1
        Left = 248
        Top = 363
        DataBinding.DataField = 'num_int'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 30
        Width = 50
      end
      object cxLabel183: TcxLabel
        Left = 315
        Top = 365
        Caption = 'C.P.:'
        Transparent = True
      end
      object cxDBTextEdit117: TcxDBTextEdit
        Tag = 1
        Left = 351
        Top = 363
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 32
        Width = 55
      end
      object cxLabel186: TcxLabel
        Left = 27
        Top = 431
        Caption = 'Estado:'
        Transparent = True
      end
      object cxLabel187: TcxLabel
        Left = 27
        Top = 409
        Caption = 'Ciudad:'
        Transparent = True
      end
      object cxDBTextEdit120: TcxDBTextEdit
        Tag = 1
        Left = 126
        Top = 429
        DataBinding.DataField = 'domicilio_estado'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 43
        Width = 280
      end
      object cxDBTextEdit121: TcxDBTextEdit
        Tag = 1
        Left = 126
        Top = 407
        DataBinding.DataField = 'domicilio_ciudad'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 39
        Width = 280
      end
      object cxLabel188: TcxLabel
        Left = 27
        Top = 453
        Caption = 'Tel'#233'fono Domicilio:'
        Transparent = True
      end
      object cxDBTextEdit122: TcxDBTextEdit
        Tag = 1
        Left = 126
        Top = 451
        DataBinding.DataField = 'telefono_domicilio'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 50
        Width = 120
      end
      object cxLabel189: TcxLabel
        Left = 248
        Top = 453
        Caption = 'Celular:'
        Transparent = True
      end
      object cxDBTextEdit123: TcxDBTextEdit
        Tag = 1
        Left = 286
        Top = 451
        DataBinding.DataField = 'telefono_celular'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 56
        Width = 120
      end
      object cxLabel190: TcxLabel
        Left = 27
        Top = 317
        AutoSize = False
        Caption = 'DIRECCI'#211'N'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 349
      end
      object lblMotivoBaja: TcxLabel
        Left = 420
        Top = 365
        Caption = 'Motivo Baja:'
        Transparent = True
      end
      object xmotivobaja: TcxDBImageComboBox
        Tag = 1
        Left = 492
        Top = 363
        DataBinding.DataField = 'motivo_baja'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items = <
          item
            Description = 'RENUNCIA'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'CAUSA ADMINISTRATIVA'
            Value = 1
          end
          item
            Description = 'COMETER DELITO'
            Value = 2
          end
          item
            Description = 'PENSIONADO'
            Value = 3
          end
          item
            Description = 'DEFUNCI'#211'N'
            Value = 4
          end
          item
            Description = 'ABANDONO DE TRABAJO'
            Value = 5
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 33
        Width = 200
      end
      object lblComentariosBaja: TcxLabel
        Left = 420
        Top = 385
        AutoSize = False
        Caption = 'Comentarios Bajas y Reingresos:'
        Properties.WordWrap = True
        Transparent = True
        Height = 52
        Width = 66
      end
      object xObservacionesBaja: TcxDBMemo
        Tag = 1
        Left = 492
        Top = 385
        DataBinding.DataField = 'comentarios_baja'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ScrollBars = ssVertical
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 38
        Height = 128
        Width = 395
      end
      object lblTituloBaja: TcxLabel
        Left = 420
        Top = 317
        AutoSize = False
        Caption = 'DATOS DE BAJA'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 368
      end
      object lblFechaBaja: TcxLabel
        Left = 420
        Top = 343
        Caption = 'Fecha Baja:'
        Transparent = True
      end
      object xFechaBaja: TcxDBDateEdit
        Tag = 1
        Left = 492
        Top = 341
        DataBinding.DataField = 'fecha_baja'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 27
        Width = 100
      end
      object cxLabel184: TcxLabel
        Left = 339
        Top = 233
        Caption = 'Estado Civil:'
        Transparent = True
      end
      object cxDBImageComboBox6: TcxDBImageComboBox
        Tag = 1
        Left = 438
        Top = 231
        DataBinding.DataField = 'estado_civil_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items = <
          item
            Description = 'SOLTERO'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'CASADO'
            Value = 2
          end
          item
            Description = 'VIUDO'
            Value = 3
          end
          item
            Description = 'DIVORCIADO'
            Value = 4
          end
          item
            Description = 'UNION LIBRE O CONCUBINATO'
            Value = 5
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 19
        Width = 180
      end
      object cxLabel185: TcxLabel
        Left = 339
        Top = 211
        Caption = 'Fecha Nacimiento:'
        Transparent = True
      end
      object cxDBDateEdit23: TcxDBDateEdit
        Tag = 1
        Left = 438
        Top = 209
        DataBinding.DataField = 'nacimiento_fecha'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 17
        Width = 100
      end
      object cxLabel191: TcxLabel
        Left = 543
        Top = 211
        Caption = 'Estado:'
        Transparent = True
      end
      object cxDBTextEdit118: TcxDBTextEdit
        Tag = 1
        Left = 586
        Top = 209
        DataBinding.DataField = 'nacimiento_estado'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 18
        Width = 250
      end
      object cxLabel193: TcxLabel
        Left = 339
        Top = 255
        Caption = 'RFC:'
        Transparent = True
      end
      object cxDBTextEdit124: TcxDBTextEdit
        Tag = 1
        Left = 438
        Top = 253
        DataBinding.DataField = 'rfc'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 21
        Width = 180
      end
      object cxLabel194: TcxLabel
        Left = 642
        Top = 255
        Caption = 'CURP:'
        Transparent = True
      end
      object cxDBTextEdit125: TcxDBTextEdit
        Tag = 1
        Left = 696
        Top = 253
        DataBinding.DataField = 'curp'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 22
        Width = 140
      end
      object cxLabel195: TcxLabel
        Left = 339
        Top = 277
        Caption = 'CUIP:'
        Transparent = True
      end
      object cxDBTextEdit126: TcxDBTextEdit
        Tag = 1
        Left = 438
        Top = 275
        DataBinding.DataField = 'cuip'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 23
        Width = 180
      end
      object cxLabel196: TcxLabel
        Left = 642
        Top = 233
        Caption = 'Tipo de Sangre:'
        Transparent = True
      end
      object cxDBComboBox1: TcxDBComboBox
        Tag = 1
        Left = 736
        Top = 231
        DataBinding.DataField = 'tipo_sangre'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items.Strings = (
          'A+'
          'A-'
          'B+'
          'B-'
          'AB+'
          'AB-'
          'O+'
          'O-')
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 20
        Width = 100
      end
      object cxLabel192: TcxLabel
        Left = 339
        Top = 187
        AutoSize = False
        Caption = 'INFORMACI'#211'N PERSONAL'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 329
      end
      object cxDBTextEdit119: TcxDBTextEdit
        Tag = 1
        Left = 696
        Top = 275
        DataBinding.DataField = 'nss'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        Enabled = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 24
        Width = 140
      end
      object cxLabel197: TcxLabel
        Left = 642
        Top = 277
        Caption = 'No IMSS:'
        Transparent = True
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Laboral'
      ImageIndex = 1
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 119
        Top = 14
        DataBinding.DataField = 'empresa_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'empresa'
        Properties.ListColumns = <
          item
            MinWidth = 300
            Width = 300
            FieldName = 'descripcion'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsEmpresas
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 0
        Width = 350
      end
      object cxLabel1: TcxLabel
        Left = 24
        Top = 16
        Caption = 'Empresa:'
        Transparent = True
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 119
        Top = 36
        DataBinding.DataField = 'estatus_sp_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'estatus_sp_id'
        Properties.ListColumns = <
          item
            MinWidth = 300
            FieldName = 'descripcion'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsEstatusSP
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 4
        Width = 350
      end
      object cxLabel2: TcxLabel
        Left = 24
        Top = 38
        Caption = 'Estatus:'
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 24
        Top = 60
        Caption = 'Servicio Asignado:'
        Transparent = True
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 119
        Top = 58
        DataBinding.DataField = 'servicio_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'servicio_id'
        Properties.ListColumns = <
          item
            MinWidth = 300
            FieldName = 'descripcion'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsServiciosList
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 6
        Width = 350
      end
      object cxLabel4: TcxLabel
        Left = 481
        Top = 16
        Caption = 'Oficina:'
        Transparent = True
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 532
        Top = 14
        DataBinding.DataField = 'oficina_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'oficina'
        Properties.ListColumns = <
          item
            MinWidth = 300
            Width = 300
            FieldName = 'descripcion'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsOficinas
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 1
        Width = 300
      end
      object cxLabel5: TcxLabel
        Left = 481
        Top = 60
        Caption = 'Puesto:'
        Transparent = True
      end
      object cxDBLookupComboBox5: TcxDBLookupComboBox
        Left = 532
        Top = 58
        DataBinding.DataField = 'puesto_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'puesto'
        Properties.ListColumns = <
          item
            MinWidth = 300
            FieldName = 'descripcion'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsPuestos
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 7
        Width = 300
      end
      object cxLabel6: TcxLabel
        Left = 24
        Top = 82
        Caption = 'Fecha Atenci'#243'n RH:'
        Transparent = True
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 119
        Top = 80
        DataBinding.DataField = 'fecha_alta'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 10
        Width = 100
      end
      object cxLabel7: TcxLabel
        Left = 24
        Top = 104
        Caption = 'Inicio Labores:'
        Transparent = True
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 119
        Top = 102
        DataBinding.DataField = 'fecha_inicio_labores'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 17
        Width = 100
      end
      object cxLabel8: TcxLabel
        Left = 481
        Top = 82
        Caption = 'Contrato:'
        Transparent = True
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 532
        Top = 80
        DataBinding.DataField = 'fecha_alta_contrato'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 11
        Width = 100
      end
      object cxLabel9: TcxLabel
        Left = 481
        Top = 104
        Caption = 'C'#233'dula:'
        Transparent = True
      end
      object cxDBDateEdit4: TcxDBDateEdit
        Left = 532
        Top = 102
        DataBinding.DataField = 'fecha_alta_cedula'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 18
        Width = 100
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 248
        Top = 103
        Caption = 'Reingreso'
        DataBinding.DataField = 'reingreso'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 19
        Transparent = True
        Width = 121
      end
      object cxLabel10: TcxLabel
        Left = 648
        Top = 82
        Caption = 'Tipo:'
        Transparent = True
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 248
        Top = 81
        Caption = 'Precontratado'
        DataBinding.DataField = 'precontrato'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 13
        Transparent = True
        Width = 121
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 118
        Top = 128
        Caption = 'Recibi'#243' Gafete'
        DataBinding.DataField = 'recibio_gafete'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 22
        Transparent = True
        Width = 142
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 118
        Top = 149
        Caption = 'Firm'#243' Carta Compromiso'
        DataBinding.DataField = 'carta_compromiso'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 26
        Transparent = True
        Width = 142
      end
      object cxDBCheckBox5: TcxDBCheckBox
        Left = 272
        Top = 128
        Caption = 'Firm'#243' Pagar'#233
        DataBinding.DataField = 'firmo_pagare'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 23
        Transparent = True
        Width = 121
      end
      object cxDBCheckBox6: TcxDBCheckBox
        Left = 272
        Top = 149
        Caption = 'Firm'#243' Resguardo'
        DataBinding.DataField = 'firmo_resguardo'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 27
        Transparent = True
        Width = 121
      end
      object cxDBCheckBox7: TcxDBCheckBox
        Left = 394
        Top = 128
        Caption = 'Captura Datos C'#233'dula'
        DataBinding.DataField = 'captura_cedula'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 24
        Transparent = True
        Width = 134
      end
      object cxDBCheckBox8: TcxDBCheckBox
        Left = 394
        Top = 149
        Caption = 'Toma de Huellas'
        DataBinding.DataField = 'toma_huellas'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 28
        Transparent = True
        Width = 121
      end
      object cxDBCheckBox9: TcxDBCheckBox
        Left = 540
        Top = 128
        Caption = 'Fotograf'#237'as C'#233'dula'
        DataBinding.DataField = 'fotos_cedula'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 25
        Transparent = True
        Width = 121
      end
      object cxDBRadioGroup2: TcxDBRadioGroup
        Left = 119
        Top = 236
        Caption = 'Verificaci'#243'n'
        DataBinding.DataField = 'verificacion'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No requerido'
            Value = 0
          end
          item
            Caption = 'En tr'#225'mite'
            Value = 1
          end
          item
            Caption = 'Aceptado'
            Value = 2
          end
          item
            Caption = 'Rechazado'
            Value = 3
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 32
        Height = 51
        Width = 357
      end
      object cxDBRadioGroup3: TcxDBRadioGroup
        Left = 119
        Top = 293
        Caption = 'Registro SSPF'
        DataBinding.DataField = 'registro_sse'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No requerido'
            Value = 0
          end
          item
            Caption = 'En tr'#225'mite'
            Value = 1
          end
          item
            Caption = 'Aceptado'
            Value = 2
          end
          item
            Caption = 'Rechazado'
            Value = 3
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 34
        Height = 48
        Width = 357
      end
      object cxDBRadioGroup1: TcxDBRadioGroup
        Left = 119
        Top = 182
        Caption = 'Registro CESP'
        DataBinding.DataField = 'registro_cesp'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No requerido'
            Value = 0
          end
          item
            Caption = 'En tr'#225'mite'
            Value = 1
          end
          item
            Caption = 'Aceptado'
            Value = 2
          end
          item
            Caption = 'Rechazado'
            Value = 3
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 29
        Height = 48
        Width = 357
      end
      object cxDBRadioGroup4: TcxDBRadioGroup
        Left = 120
        Top = 347
        Caption = 'Registro SDN'
        DataBinding.DataField = 'registro_sdn'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No requerido'
            Value = 0
          end
          item
            Caption = 'En tr'#225'mite'
            Value = 1
          end
          item
            Caption = 'Aceptado'
            Value = 2
          end
          item
            Caption = 'Rechazado'
            Value = 3
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 42
        Height = 51
        Width = 355
      end
      object cxLabel11: TcxLabel
        Left = 490
        Top = 194
        Caption = 'Fecha:'
        Transparent = True
      end
      object cxDBDateEdit5: TcxDBDateEdit
        Left = 490
        Top = 209
        DataBinding.DataField = 'fecha_registro_cesp'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 30
        Width = 100
      end
      object cxLabel12: TcxLabel
        Left = 596
        Top = 193
        Caption = 'Oficio:'
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 596
        Top = 209
        DataBinding.DataField = 'oficio_sse'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 31
        Width = 116
      end
      object cxLabel13: TcxLabel
        Left = 490
        Top = 251
        Caption = 'Fecha:'
        Transparent = True
      end
      object cxDBDateEdit6: TcxDBDateEdit
        Left = 490
        Top = 266
        DataBinding.DataField = 'fecha_verificacion'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 33
        Width = 100
      end
      object cxLabel14: TcxLabel
        Left = 490
        Top = 305
        Caption = 'Fecha:'
        Transparent = True
      end
      object cxDBDateEdit7: TcxDBDateEdit
        Left = 490
        Top = 320
        DataBinding.DataField = 'fecha_registro_sse'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 35
        Width = 100
      end
      object cxLabel15: TcxLabel
        Left = 596
        Top = 304
        Caption = 'Oficio:'
        Transparent = True
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 596
        Top = 320
        DataBinding.DataField = 'oficio_ssp'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 36
        Width = 116
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 596
        Top = 377
        DataBinding.DataField = 'oficio_sdn'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 46
        Width = 116
      end
      object cxLabel16: TcxLabel
        Left = 596
        Top = 361
        Caption = 'Oficio:'
        Transparent = True
      end
      object cxDBDateEdit8: TcxDBDateEdit
        Left = 490
        Top = 377
        DataBinding.DataField = 'fecha_registro_sdn'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 43
        Width = 100
      end
      object cxLabel17: TcxLabel
        Left = 490
        Top = 362
        Caption = 'Fecha:'
        Transparent = True
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 718
        Top = 377
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 48
        Width = 116
      end
      object cxLabel18: TcxLabel
        Left = 718
        Top = 361
        Caption = 'Lic. Part. Col.:'
        Transparent = True
      end
      object cxLabel19: TcxLabel
        Left = 24
        Top = 404
        Caption = 'Comentarios:'
        Transparent = True
      end
      object cxDBMemo1: TcxDBMemo
        Left = 120
        Top = 404
        DataBinding.DataField = 'comentarios'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ScrollBars = ssVertical
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 50
        Height = 49
        Width = 712
      end
      object cxDBLookupComboBox6: TcxDBImageComboBox
        Left = 682
        Top = 80
        DataBinding.DataField = 'tipo_contrato_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items = <
          item
            Description = 'PRECONTRATO'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'PROVISIONAL'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'DEFINITVO'
            ImageIndex = 0
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 12
        Width = 150
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Generales'
      ImageIndex = 2
      object cxLabel20: TcxLabel
        Left = 24
        Top = 16
        Caption = 'Calle:'
        Transparent = True
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 120
        Top = 15
        DataBinding.DataField = 'calle'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 0
        Width = 250
      end
      object cxLabel21: TcxLabel
        Left = 24
        Top = 38
        Caption = 'Colonia:'
        Transparent = True
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 120
        Top = 37
        DataBinding.DataField = 'colonia'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 6
        Width = 250
      end
      object cxLabel22: TcxLabel
        Left = 385
        Top = 16
        Caption = 'Num. Exterior:'
        Transparent = True
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 465
        Top = 15
        DataBinding.DataField = 'num_ext'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 1
        Width = 80
      end
      object cxLabel23: TcxLabel
        Left = 553
        Top = 16
        Caption = 'Num. Interior:'
        Transparent = True
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 633
        Top = 15
        DataBinding.DataField = 'num_int'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 2
        Width = 80
      end
      object cxLabel24: TcxLabel
        Left = 385
        Top = 38
        Caption = 'C'#243'd. Postal:'
        Transparent = True
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 465
        Top = 37
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 7
        Width = 80
      end
      object cxLabel25: TcxLabel
        Left = 24
        Top = 60
        Caption = 'Entre Calle:'
        Transparent = True
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 120
        Top = 59
        DataBinding.DataField = 'calle1'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 10
        Width = 250
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 465
        Top = 59
        DataBinding.DataField = 'calle2'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 11
        Width = 250
      end
      object cxLabel26: TcxLabel
        Left = 385
        Top = 60
        Caption = 'Y Calle:'
        Transparent = True
      end
      object cxLabel27: TcxLabel
        Left = 24
        Top = 82
        Caption = 'Estado:'
        Transparent = True
      end
      object cxLabel28: TcxLabel
        Left = 385
        Top = 82
        Caption = 'Municipio:'
        Transparent = True
      end
      object cxLabel29: TcxLabel
        Left = 24
        Top = 104
        Caption = 'Tel'#233'fono Domicilio:'
        Transparent = True
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 120
        Top = 103
        DataBinding.DataField = 'telefono_domicilio'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 18
        Width = 100
      end
      object cxLabel30: TcxLabel
        Left = 231
        Top = 104
        Caption = 'Celular:'
        Transparent = True
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 276
        Top = 103
        DataBinding.DataField = 'telefono_celular'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 19
        Width = 100
      end
      object cxLabel31: TcxLabel
        Left = 385
        Top = 104
        Caption = 'Rutas Cami'#243'n:'
        Transparent = True
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 465
        Top = 103
        DataBinding.DataField = 'rutas_camion'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 20
        Width = 250
      end
      object cxLabel32: TcxLabel
        Left = 24
        Top = 125
        Caption = 'Fecha Nacimiento:'
        Transparent = True
      end
      object cxDBDateEdit9: TcxDBDateEdit
        Left = 120
        Top = 125
        DataBinding.DataField = 'nacimiento_fecha'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 25
        Width = 100
      end
      object cxLabel33: TcxLabel
        Left = 231
        Top = 126
        Caption = 'Estado:'
        Transparent = True
      end
      object cxLabel34: TcxLabel
        Left = 535
        Top = 126
        Caption = 'Municipio:'
        Transparent = True
      end
      object cxLabel35: TcxLabel
        Left = 24
        Top = 148
        Caption = 'Estado Civil:'
        Transparent = True
      end
      object cxDBTextEdit15: TcxDBTextEdit
        Left = 276
        Top = 169
        DataBinding.DataField = 'numero_cartilla'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 37
        Width = 100
      end
      object cxLabel36: TcxLabel
        Left = 275
        Top = 148
        Caption = 'RFC:'
        Transparent = True
      end
      object cxDBTextEdit16: TcxDBTextEdit
        Left = 326
        Top = 147
        DataBinding.DataField = 'rfc'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 31
        Width = 200
      end
      object cxDBTextEdit17: TcxDBTextEdit
        Left = 590
        Top = 147
        DataBinding.DataField = 'curp'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 32
        Width = 209
      end
      object cxLabel37: TcxLabel
        Left = 535
        Top = 148
        Caption = 'CURP:'
        Transparent = True
      end
      object cxLabel38: TcxLabel
        Left = 24
        Top = 172
        Caption = 'Cartilla:'
        Transparent = True
      end
      object cxDBLookupComboBox12: TcxDBImageComboBox
        Left = 120
        Top = 147
        DataBinding.DataField = 'estado_civil_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items = <
          item
            Description = 'SOLTERO'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'CASADO'
            Value = 2
          end
          item
            Description = 'VIUDO'
            Value = 3
          end
          item
            Description = 'DIVORCIADO'
            Value = 4
          end
          item
            Description = 'UNION LIBRE O CONCUBINATO'
            Value = 5
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 30
        Width = 150
      end
      object cxDBImageComboBox2: TcxDBImageComboBox
        Left = 120
        Top = 169
        DataBinding.DataField = 'tipo_cartilla'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items = <
          item
            Description = 'PRECARTILLA'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'LIBERADA'
            Value = 1
          end
          item
            Description = 'NO APLICA'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 34
        Width = 150
      end
      object cxDBTextEdit18: TcxDBTextEdit
        Left = 424
        Top = 169
        DataBinding.DataField = 'cuip'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 38
        Width = 150
      end
      object cxLabel39: TcxLabel
        Left = 386
        Top = 171
        Caption = 'CUIP:'
        Transparent = True
      end
      object cxDBTextEdit19: TcxDBTextEdit
        Left = 120
        Top = 191
        DataBinding.DataField = 'ife_clave'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 41
        Width = 150
      end
      object cxLabel40: TcxLabel
        Left = 24
        Top = 193
        Caption = 'IFE Clave:'
        Transparent = True
      end
      object cxLabel41: TcxLabel
        Left = 275
        Top = 193
        Caption = 'IFE Folio:'
        Transparent = True
      end
      object cxDBTextEdit20: TcxDBTextEdit
        Left = 338
        Top = 191
        DataBinding.DataField = 'ife_folio'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 42
        Width = 150
      end
      object cxDBTextEdit21: TcxDBTextEdit
        Left = 120
        Top = 213
        DataBinding.DataField = 'nss'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 45
        Width = 150
      end
      object cxLabel42: TcxLabel
        Left = 24
        Top = 214
        Caption = 'No IMSS:'
        Transparent = True
      end
      object cxLabel43: TcxLabel
        Left = 275
        Top = 215
        Caption = 'Pasaporte:'
        Transparent = True
      end
      object cxDBTextEdit22: TcxDBTextEdit
        Left = 338
        Top = 213
        DataBinding.DataField = 'pasaporte'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 46
        Width = 150
      end
      object cxLabel44: TcxLabel
        Left = 24
        Top = 236
        Caption = 'Escolaridad:'
        Transparent = True
      end
      object cxDBLookupComboBox11: TcxDBLookupComboBox
        Left = 120
        Top = 235
        DataBinding.DataField = 'escolaridad_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'Estudios'
        Properties.ListColumns = <
          item
            MinWidth = 150
            FieldName = 'descripcion'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsEscolaridad
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 51
        Width = 250
      end
      object cxLabel45: TcxLabel
        Left = 24
        Top = 258
        Caption = 'Escuela:'
        Transparent = True
      end
      object cxDBTextEdit23: TcxDBTextEdit
        Left = 120
        Top = 257
        DataBinding.DataField = 'escuela_nombre'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 53
        Width = 250
      end
      object cxLabel46: TcxLabel
        Left = 388
        Top = 258
        Caption = 'Especialidad:'
        Transparent = True
      end
      object cxDBTextEdit24: TcxDBTextEdit
        Left = 456
        Top = 257
        DataBinding.DataField = 'especialidad'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 54
        Width = 250
      end
      object cxLabel47: TcxLabel
        Left = 24
        Top = 280
        Caption = 'C'#233'dula Profesional:'
        Transparent = True
      end
      object cxDBTextEdit25: TcxDBTextEdit
        Left = 120
        Top = 279
        DataBinding.DataField = 'cedula_profesional'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 57
        Width = 250
      end
      object cxLabel48: TcxLabel
        Left = 388
        Top = 280
        Caption = 'A'#241'o Inicio:'
        Transparent = True
      end
      object cxDBTextEdit26: TcxDBTextEdit
        Left = 456
        Top = 279
        DataBinding.DataField = 'escolaridad_inicio'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 58
        Width = 75
      end
      object cxDBTextEdit27: TcxDBTextEdit
        Left = 607
        Top = 279
        DataBinding.DataField = 'escolaridad_fin'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 59
        Width = 75
      end
      object cxLabel49: TcxLabel
        Left = 534
        Top = 280
        Caption = 'A'#241'o T'#233'rmino:'
        Transparent = True
      end
      object cxDBCheckBox10: TcxDBCheckBox
        Left = 120
        Top = 302
        Caption = 'Registro SEP'
        DataBinding.DataField = 'registro_sep'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 65
        Transparent = True
        Width = 89
      end
      object cxLabel50: TcxLabel
        Left = 222
        Top = 303
        Caption = 'Folio Certificado:'
        Transparent = True
      end
      object cxDBTextEdit28: TcxDBTextEdit
        Left = 309
        Top = 301
        DataBinding.DataField = 'folio_certificado'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 62
        Width = 75
      end
      object cxDBTextEdit29: TcxDBTextEdit
        Left = 456
        Top = 301
        DataBinding.DataField = 'promedio'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 63
        Width = 75
      end
      object cxLabel51: TcxLabel
        Left = 388
        Top = 303
        Caption = 'Promedio:'
        Transparent = True
      end
      object cxDBRadioGroup5: TcxDBRadioGroup
        Left = 120
        Top = 348
        Caption = 'Antecedente'
        DataBinding.DataField = 'antecedente'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Items = <
          item
            Caption = '1er Empleo'
            Value = 0
          end
          item
            Caption = 'Experiencia SP'
            Value = 1
          end
          item
            Caption = 'Militar Retirado'
            Value = 2
          end
          item
            Caption = 'Sin Experiencia SP'
            Value = 3
          end
          item
            Caption = 'Militar con Baja'
            Value = 4
          end
          item
            Caption = 'Ex Polic'#237'a'
            Value = 5
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 70
        Height = 133
        Width = 133
      end
      object cxDBRadioGroup6: TcxDBRadioGroup
        Left = 259
        Top = 348
        Caption = 'Como se enter'#243
        DataBinding.DataField = 'como_se_entero'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Items = <
          item
            Caption = 'Iba pasando'
            Value = 0
          end
          item
            Caption = 'Peri'#243'dico'
            Value = 1
          end
          item
            Caption = 'Recomendaci'#243'n'
            Value = 2
          end
          item
            Caption = 'Volante'
            Value = 3
          end
          item
            Caption = 'Internet'
            Value = 4
          end
          item
            Caption = 'Otros'
            Value = 5
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 74
        Height = 133
        Width = 133
      end
      object cxDBCheckBox11: TcxDBCheckBox
        Left = 414
        Top = 325
        Caption = 'Sabe Conducir'
        DataBinding.DataField = 'sabe_manejar'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 69
        Transparent = True
        Width = 96
      end
      object cxLabel52: TcxLabel
        Left = 516
        Top = 325
        Caption = 'Licencia:'
        Transparent = True
      end
      object cxDBTextEdit30: TcxDBTextEdit
        Left = 567
        Top = 323
        DataBinding.DataField = 'licencia_conducir_folio'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 67
        Width = 75
      end
      object cxLabel53: TcxLabel
        Left = 646
        Top = 325
        Caption = 'Vigencia:'
        Transparent = True
      end
      object cxDBDateEdit10: TcxDBDateEdit
        Left = 699
        Top = 323
        DataBinding.DataField = 'licencia_conducir_vigencia'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 68
        Width = 100
      end
      object cxDBLookupComboBox9: TcxDBTextEdit
        Left = 276
        Top = 125
        DataBinding.DataField = 'nacimiento_estado'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 26
        Width = 250
      end
      object cxDBLookupComboBox10: TcxDBTextEdit
        Left = 590
        Top = 125
        DataBinding.DataField = 'nacimiento_ciudad'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 27
        Width = 250
      end
      object cxDBLookupComboBox7: TcxDBTextEdit
        Left = 120
        Top = 81
        DataBinding.DataField = 'domicilio_estado'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 14
        Width = 250
      end
      object cxDBLookupComboBox8: TcxDBTextEdit
        Left = 465
        Top = 81
        DataBinding.DataField = 'domicilio_ciudad'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 15
        Width = 250
      end
      object cxLabel54: TcxLabel
        Left = 502
        Top = 215
        Caption = 'Tipo de Sangre:'
        Transparent = True
      end
      object cxDBLookupComboBox13: TcxDBComboBox
        Left = 590
        Top = 213
        DataBinding.DataField = 'tipo_sangre'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items.Strings = (
          'A+'
          'A-'
          'B+'
          'B-'
          'AB+'
          'AB-'
          'O+'
          'O-')
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 47
        Width = 100
      end
      object cxGroupBox1: TcxGroupBox
        Left = 414
        Top = 348
        Caption = 'Referencia - Padres'
        TabOrder = 75
        Height = 133
        Width = 426
        object cxLabel165: TcxLabel
          Left = 8
          Top = 20
          Caption = 'Nombre Padre:'
          Transparent = True
        end
        object cxDBTextEdit107: TcxDBTextEdit
          Left = 90
          Top = 18
          DataBinding.DataField = 'RefPadreNombre'
          DataBinding.DataSource = dmMain.dsEmpleadosEdit
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = frmPrincipal.cxEditStyleController1
          TabOrder = 0
          Width = 323
        end
        object cxLabel166: TcxLabel
          Left = 8
          Top = 42
          Caption = 'Direcci'#243'n:'
          Transparent = True
        end
        object cxDBTextEdit108: TcxDBTextEdit
          Left = 90
          Top = 40
          DataBinding.DataField = 'RefPadreDireccion'
          DataBinding.DataSource = dmMain.dsEmpleadosEdit
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = frmPrincipal.cxEditStyleController1
          TabOrder = 2
          Width = 195
        end
        object cxLabel167: TcxLabel
          Left = 286
          Top = 42
          Caption = 'Tel:'
          Transparent = True
        end
        object cxDBTextEdit109: TcxDBTextEdit
          Left = 312
          Top = 40
          DataBinding.DataField = 'RefPadreTelefono'
          DataBinding.DataSource = dmMain.dsEmpleadosEdit
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = frmPrincipal.cxEditStyleController1
          TabOrder = 3
          Width = 101
        end
        object cxLabel168: TcxLabel
          Left = 8
          Top = 72
          Caption = 'Nombre Madre:'
          Transparent = True
        end
        object cxLabel169: TcxLabel
          Left = 8
          Top = 94
          Caption = 'Direcci'#243'n:'
          Transparent = True
        end
        object cxDBTextEdit110: TcxDBTextEdit
          Left = 90
          Top = 92
          DataBinding.DataField = 'RefMadreDireccion'
          DataBinding.DataSource = dmMain.dsEmpleadosEdit
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = frmPrincipal.cxEditStyleController1
          TabOrder = 8
          Width = 195
        end
        object cxDBTextEdit111: TcxDBTextEdit
          Left = 90
          Top = 70
          DataBinding.DataField = 'RefMadreNombre'
          DataBinding.DataSource = dmMain.dsEmpleadosEdit
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = frmPrincipal.cxEditStyleController1
          TabOrder = 6
          Width = 323
        end
        object cxLabel170: TcxLabel
          Left = 286
          Top = 94
          Caption = 'Tel:'
          Transparent = True
        end
        object cxDBTextEdit112: TcxDBTextEdit
          Left = 312
          Top = 92
          DataBinding.DataField = 'RefMadreTelefono'
          DataBinding.DataSource = dmMain.dsEmpleadosEdit
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = frmPrincipal.cxEditStyleController1
          TabOrder = 9
          Width = 101
        end
      end
      object btnEditCURP: TcxButtonEdit
        Left = 803
        Top = 147
        Hint = 'Seleccionar PDF del CURP'
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              00000000000000000000103B52F7275E85FB4886BAFB326B8EC1061018220000
              000000000000000000000000000000000000000000000000000000000000A479
              58C4CA9269F4D19668FF2E6682FF94C7F9FF91C9F9FF4185C9FF2466A6FFA882
              65FFC38452FFC38452FFC38452FFC38452FF81522EB00000000000000000D7A1
              75FFF8F2EDFFF7F0EAFF4389AAFFE0F2FFFF549AD8FF1A7ABEFF4998C5FF478C
              C3FFD0D2D7FFF0E2D8FFF0E2D8FFF0E2D8FFC3895CFD0000000000000000D9A4
              7AFFF9F3EEFFEBD2BEFFA7C5D9FF7AB6D5FF90B7D1FF55C9E4FF5BDFF5FF78D0
              EDFF519DDDFFE4F0FAFFFFFFFFFFF0E2D8FFC68C5FFF0000000000000000DDA8
              7EFFF9F3EFFFEBD0BAFFEBD0BBFFA7B7B9FF76B9D5FFC2F6FDFF63DFF7FF5DE2
              F8FF79D3F0FF4997DAFFD4C5B9FFF0E2D8FFC68A5CFF0000000000000000DFAA
              82FFF9F3EFFFEACEB7FFFFFFFFFFEBD0BBFFB1D6E7FF77CBE7FFC7F7FDFF5EDC
              F5FF5AE1F7FF7BD4F1FF4C9ADEFFCAD0D8FFC88D5FFF0000000000000000E1AE
              87FFFAF4F0FFEACBB2FFEACCB3FFEACCB3FFEACCB3FFB0C4BFFF79D3EEFFC7F7
              FDFF5FDCF5FF5BE2F7FF7AD6F2FF50A0DEFFAC876BFF0000000000000000E3B1
              8CFFFAF6F1FFEAC9AEFFFFFFFFFFEAC9B0FFFFFFFFFFFFFFFFFFC1EBF7FF7DD4
              EDFFC4F6FDFF6CDDF6FF6DCAEDFF63A3D7FF6599C9FF0C161E2600000000E5B4
              8FFFFAF6F2FFE9C6AAFFE9C6ACFFEAC7ACFFE9C7ADFFE9C9AEFFE9C9B0FFA6C1
              BEFF81D5EDFFB2E3F9FF8BC0E7FFAED3F6FFC4E0FCFF639ACCF700000000E7B7
              94FFFBF7F4FFE9C3A6FFFFFFFFFFE8C4A9FFFFFFFFFFFFFFFFFFFFFFFFFFE8C7
              ACFFB1E6F5FF77BEE7FFB4D2F0FFE5F3FFFFACD2EFFF427FB5E800000000E9BA
              98FFFBF7F4FFE9C3A6FFE9C3A6FFE9C3A6FFE9C3A6FFE9C3A6FFE9C3A6FFE9C3
              A6FFE9C3A6FFADBDB8FF58A5D8FF85B1DBFF469DD0FF10374D5E00000000EBBD
              9BFFFBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F4FFD1976AFF0000000000000000ECBF
              9EFFFBF7F4FF9CD5A5FF98D3A1FF94D09DFF90CE98FF8BCB93FF87C98EFF82C6
              89FF7EC384FF7AC180FF76BE7CFFFBF7F4FFD49B6FFF0000000000000000DBB2
              94EBFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
              F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFD19C71F800000000000000007660
              517ED5AC90E3EDC09FFFEBBE9DFFEBBC9AFFE9BA96FFE7B793FFE6B590FFE4B2
              8CFFE2AF88FFE0AC84FFDDA980FFDCA57DFFAD8161CA00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Kind = bkEllipsis
          end>
        Properties.ViewStyle = vsButtonsOnly
        Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
        ShowHint = True
        TabOrder = 76
        Text = 'btnEditCURP'
        Width = 37
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Documentos'
      ImageIndex = 3
      object cxDBRadioGroup7: TcxDBRadioGroup
        Left = 55
        Top = 14
        Caption = 'Hoja Datos'
        DataBinding.DataField = 'DocHojaDatos'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentBackground = False
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 0
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup8: TcxDBRadioGroup
        Left = 55
        Top = 65
        Caption = 'Solicitud'
        DataBinding.DataField = 'DocSolicitud'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 2
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup9: TcxDBRadioGroup
        Left = 55
        Top = 116
        Caption = 'IFE'
        DataBinding.DataField = 'DocIFE'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 4
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup10: TcxDBRadioGroup
        Left = 55
        Top = 167
        Caption = 'Acta de Nacimiento'
        DataBinding.DataField = 'DocActaNacim'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 6
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup11: TcxDBRadioGroup
        Left = 55
        Top = 218
        Caption = 'CURP y RFC'
        DataBinding.DataField = 'DocCURPRFC'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 9
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup12: TcxDBRadioGroup
        Left = 55
        Top = 269
        Caption = 'Comprobante de Domicilio'
        DataBinding.DataField = 'DocCompDom'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 11
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup13: TcxDBRadioGroup
        Left = 55
        Top = 320
        Caption = 'Carta de No Antecedentes'
        DataBinding.DataField = 'DocCartaPol'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 15
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup14: TcxDBRadioGroup
        Left = 55
        Top = 371
        Caption = 'Comprobante de Estudios'
        DataBinding.DataField = 'DocCompEst'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 18
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup15: TcxDBRadioGroup
        Left = 55
        Top = 422
        Caption = 'Cartilla SMN'
        DataBinding.DataField = 'DocCartilla'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 21
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup16: TcxDBRadioGroup
        Left = 366
        Top = 422
        Caption = 'Resguardo'
        DataBinding.DataField = 'DocResguardo'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 22
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup17: TcxDBRadioGroup
        Left = 366
        Top = 371
        Caption = 'Toxicol'#243'gico'
        DataBinding.DataField = 'DocToxicologico'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 19
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup18: TcxDBRadioGroup
        Left = 366
        Top = 320
        Caption = 'M'#233'dico'
        DataBinding.DataField = 'DocMedico'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 16
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup19: TcxDBRadioGroup
        Left = 366
        Top = 269
        Caption = 'Psicol'#243'gico'
        DataBinding.DataField = 'DocPsicologico'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 12
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup20: TcxDBRadioGroup
        Left = 366
        Top = 218
        Caption = 'Fotos Socio Econ'#243'mico'
        DataBinding.DataField = 'DocFotos'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 10
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup21: TcxDBRadioGroup
        Left = 366
        Top = 167
        Caption = 'Socio Econ'#243'mico'
        DataBinding.DataField = 'DocSocioeconom'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 7
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup22: TcxDBRadioGroup
        Left = 366
        Top = 116
        Caption = 'Contrato'
        DataBinding.DataField = 'DocContrato'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 5
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup23: TcxDBRadioGroup
        Left = 366
        Top = 65
        Caption = 'Cartas de Recomendaci'#243'n'
        DataBinding.DataField = 'DocCartaRec'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 3
        Height = 48
        Width = 200
      end
      object cxDBRadioGroup24: TcxDBRadioGroup
        Left = 366
        Top = 14
        Caption = 'N'#250'mero Seguro Social'
        DataBinding.DataField = 'DocNSS'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'No'
            Value = 0
          end
          item
            Caption = 'Copia'
            Value = 1
          end
          item
            Caption = 'Original'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 1
        Height = 48
        Width = 200
      end
      object cxDBDateEdit11: TcxDBDateEdit
        Left = 261
        Top = 296
        DataBinding.DataField = 'DocCompDomFec'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 13
        Width = 100
      end
      object cxDBDateEdit12: TcxDBDateEdit
        Left = 261
        Top = 347
        DataBinding.DataField = 'DocCartaPolFec'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 17
        Width = 100
      end
      object cxDBDateEdit13: TcxDBDateEdit
        Left = 572
        Top = 194
        DataBinding.DataField = 'DocSocioeconomFec'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 8
        Width = 100
      end
      object cxDBDateEdit14: TcxDBDateEdit
        Left = 572
        Top = 296
        DataBinding.DataField = 'DocPsicolFec'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 14
        Width = 100
      end
      object cxDBDateEdit15: TcxDBDateEdit
        Left = 572
        Top = 398
        DataBinding.DataField = 'DocToxicoFec'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 20
        Width = 100
      end
      object cxLabel302: TcxLabel
        Left = 678
        Top = 328
        Caption = 'Comentarios de esta secci'#243'n:'
        Transparent = True
      end
      object cxDBMemo3: TcxDBMemo
        Left = 678
        Top = 344
        DataBinding.DataField = 'DocComentarios'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ScrollBars = ssVertical
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 24
        Height = 169
        Width = 209
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'N'#243'mina'
      ImageIndex = 4
      object cxLabel55: TcxLabel
        Left = 24
        Top = 42
        Caption = 'No IMSS:'
        Transparent = True
      end
      object cxDBTextEdit31: TcxDBTextEdit
        Left = 120
        Top = 40
        DataBinding.DataField = 'nss'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 1
        Width = 150
      end
      object cxDBRadioGroup25: TcxDBRadioGroup
        Left = 120
        Top = 63
        Caption = 'Estatus IMSS'
        DataBinding.DataField = 'situacion_imss'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentBackground = False
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'Pendiente'
            Value = 0
          end
          item
            Caption = 'Alta'
            Value = 1
          end
          item
            Caption = 'Baja'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 4
        Height = 48
        Width = 250
      end
      object cxLabel56: TcxLabel
        Left = 24
        Top = 115
        Caption = 'Alta IMSS:'
        Transparent = True
      end
      object cxDBDateEdit16: TcxDBDateEdit
        Left = 120
        Top = 113
        DataBinding.DataField = 'fecha_alta_imss'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 8
        Width = 100
      end
      object cxLabel57: TcxLabel
        Left = 24
        Top = 137
        Caption = 'Entrega Carta Pat.:'
        Transparent = True
      end
      object cxDBDateEdit17: TcxDBDateEdit
        Left = 120
        Top = 135
        DataBinding.DataField = 'fecha_carta_patronal'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 10
        Width = 100
      end
      object cxDBDateEdit18: TcxDBDateEdit
        Left = 120
        Top = 157
        DataBinding.DataField = 'fecha_baja_imss'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 14
        Width = 100
      end
      object cxLabel58: TcxLabel
        Left = 24
        Top = 159
        Caption = 'Baja IMSS:'
        Transparent = True
      end
      object cxLabel59: TcxLabel
        Left = 24
        Top = 187
        Caption = 'Afore:'
        Transparent = True
      end
      object cxDBTextEdit32: TcxDBTextEdit
        Left = 120
        Top = 185
        DataBinding.DataField = 'afore'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 16
        Width = 150
      end
      object cxDBTextEdit33: TcxDBTextEdit
        Left = 120
        Top = 213
        DataBinding.DataField = 'infonavit_credito'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 20
        Width = 150
      end
      object cxLabel60: TcxLabel
        Left = 24
        Top = 215
        Caption = 'Cr'#233'dito Infonavit:'
        Transparent = True
      end
      object cxLabel61: TcxLabel
        Left = 24
        Top = 237
        Caption = 'Cuota Fija:'
        Transparent = True
      end
      object cxLabel62: TcxLabel
        Left = 24
        Top = 259
        Caption = 'VSM:'
        Transparent = True
      end
      object cxCurrencyEdit2: TcxDBCurrencyEdit
        Left = 120
        Top = 257
        DataBinding.DataField = 'infonavit_vsm'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = ',0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 28
        Width = 57
      end
      object cxCurrencyEdit1: TcxDBCurrencyEdit
        Left = 120
        Top = 235
        DataBinding.DataField = 'infonavit_cuota'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 22
        Width = 100
      end
      object cxLabel63: TcxLabel
        Left = 24
        Top = 281
        Caption = '% Salario:'
        Transparent = True
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 120
        Top = 279
        DataBinding.DataField = 'infonavit_porcentaje'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DisplayFormat = '0.00 %'
        Properties.EditFormat = '0.00 %'
        Properties.MaxValue = 100.000000000000000000
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 37
        Width = 57
      end
      object cxDBRadioGroup26: TcxDBRadioGroup
        Left = 496
        Top = 40
        Caption = 'Forma de Pago'
        DataBinding.DataField = 'forma_pago'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentBackground = False
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'Efectivo'
            Value = 0
          end
          item
            Caption = 'Tarjeta Prepago'
            Value = 1
          end
          item
            Caption = 'Tarjeta N'#243'mina'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 2
        Height = 48
        Width = 350
      end
      object cxLabel65: TcxLabel
        Left = 496
        Top = 16
        AutoSize = False
        Caption = 'N'#211'MINA'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 350
      end
      object cxLabel64: TcxLabel
        Left = 24
        Top = 16
        AutoSize = False
        Caption = 'IMSS e INFONAVIT'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 346
      end
      object cxLabel66: TcxLabel
        Left = 496
        Top = 92
        Caption = 'Fecha Tr'#225'mite Tarjeta:'
        Transparent = True
      end
      object cxDBDateEdit19: TcxDBDateEdit
        Left = 616
        Top = 90
        DataBinding.DataField = 'nomina_fecha_tramite_tarjeta'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 5
        Width = 100
      end
      object cxLabel67: TcxLabel
        Left = 496
        Top = 114
        Caption = 'Entrega Tarjeta N'#243'mina:'
        Transparent = True
      end
      object cxDBDateEdit20: TcxDBDateEdit
        Left = 616
        Top = 112
        DataBinding.DataField = 'nomina_fecha_entrega_tarjeta'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 6
        Width = 100
      end
      object cxLabel68: TcxLabel
        Left = 496
        Top = 135
        Caption = 'Banco Tarjeta:'
        Transparent = True
      end
      object cxDBLookupComboBox14: TcxDBLookupComboBox
        Left = 616
        Top = 134
        DataBinding.DataField = 'escolaridad_id'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'Banco'
        Properties.ListColumns = <
          item
            MinWidth = 150
            FieldName = 'descripcion'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsBancos
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 9
        Width = 230
      end
      object cxLabel69: TcxLabel
        Left = 496
        Top = 158
        Caption = 'N'#250'mero Tarjeta:'
        Transparent = True
      end
      object cxDBTextEdit34: TcxDBTextEdit
        Left = 616
        Top = 156
        DataBinding.DataField = 'salario_numero_tarjeta'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 11
        Width = 150
      end
      object cxLabel70: TcxLabel
        Left = 496
        Top = 180
        Caption = 'N'#250'mero Cuenta Tarjeta:'
        Transparent = True
      end
      object cxDBTextEdit35: TcxDBTextEdit
        Left = 616
        Top = 178
        DataBinding.DataField = 'nomina_cuenta_tarjeta'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 15
        Width = 150
      end
      object cxLabel71: TcxLabel
        Left = 496
        Top = 205
        AutoSize = False
        Caption = 'SUELDO'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 350
      end
      object cxLabel72: TcxLabel
        Left = 496
        Top = 231
        Caption = 'Salario Mensual Bruto:'
        Transparent = True
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 616
        Top = 229
        DataBinding.DataField = 'salario_mensual_bruto'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 21
        Width = 100
      end
      object cxLabel73: TcxLabel
        Left = 496
        Top = 253
        Caption = 'Bono de Puntualidad:'
        Transparent = True
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 616
        Top = 251
        DataBinding.DataField = 'salario_bono_puntualidad'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 23
        Width = 100
      end
      object cxLabel74: TcxLabel
        Left = 496
        Top = 275
        Caption = 'Subsidio:'
        Transparent = True
      end
      object cxDBCurrencyEdit3: TcxDBCurrencyEdit
        Left = 616
        Top = 273
        DataBinding.DataField = 'salario_subsidio'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 30
        Width = 100
      end
      object cxLabel75: TcxLabel
        Left = 496
        Top = 297
        Caption = 'Apoyo de Transporte:'
        Transparent = True
      end
      object cxDBCurrencyEdit4: TcxDBCurrencyEdit
        Left = 616
        Top = 295
        DataBinding.DataField = 'salario_apoyo_transporte'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 39
        Width = 100
      end
      object cxLabel76: TcxLabel
        Left = 496
        Top = 319
        Caption = 'Asistencia:'
        Transparent = True
      end
      object cxDBCurrencyEdit5: TcxDBCurrencyEdit
        Left = 616
        Top = 317
        DataBinding.DataField = 'salario_asistencia'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 41
        Width = 100
      end
      object cxLabel77: TcxLabel
        Left = 496
        Top = 341
        Caption = 'Salario Mensual Total:'
        Transparent = True
      end
      object cxDBCurrencyEdit6: TcxDBCurrencyEdit
        Left = 616
        Top = 339
        DataBinding.DataField = 'salario_mensual_neto'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 43
        Width = 100
      end
      object cxLabel78: TcxLabel
        Left = 496
        Top = 363
        Caption = 'Salario Diario Oficial:'
        Transparent = True
      end
      object cxDBCurrencyEdit7: TcxDBCurrencyEdit
        Left = 616
        Top = 361
        DataBinding.DataField = 'salario_diario_oficial'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 45
        Width = 100
      end
      object cxLabel79: TcxLabel
        Left = 496
        Top = 385
        Caption = 'Salario Diario Integrado:'
        Transparent = True
      end
      object cxDBCurrencyEdit8: TcxDBCurrencyEdit
        Left = 616
        Top = 383
        DataBinding.DataField = 'salario_diario_real'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 47
        Width = 100
      end
      object cxLabel80: TcxLabel
        Left = 496
        Top = 407
        Caption = 'Bono Asistencia:'
        Transparent = True
      end
      object cxDBCurrencyEdit9: TcxDBCurrencyEdit
        Left = 616
        Top = 405
        DataBinding.DataField = 'salario_bono_asistencia'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 51
        Width = 100
      end
      object cxLabel81: TcxLabel
        Left = 496
        Top = 429
        Caption = 'Bono Puntualidad:'
        Transparent = True
      end
      object cxDBCurrencyEdit10: TcxDBCurrencyEdit
        Left = 616
        Top = 427
        DataBinding.DataField = 'salario_bono_puntualidad'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 53
        Width = 100
      end
      object cxLabel82: TcxLabel
        Left = 496
        Top = 451
        Caption = 'Bono Despensa:'
        Transparent = True
      end
      object cxDBCurrencyEdit11: TcxDBCurrencyEdit
        Left = 616
        Top = 449
        DataBinding.DataField = 'salario_bono_despensa'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 55
        Width = 100
      end
      object cxLabel83: TcxLabel
        Left = 496
        Top = 473
        Caption = 'Pago X Hora Extra:'
        Transparent = True
      end
      object cxDBCurrencyEdit12: TcxDBCurrencyEdit
        Left = 616
        Top = 471
        DataBinding.DataField = 'salario_horas_extras'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 57
        Width = 100
      end
      object cxLabel84: TcxLabel
        Left = 24
        Top = 404
        Caption = 'Observaciones:'
        Transparent = True
      end
      object cxDBMemo2: TcxDBMemo
        Left = 120
        Top = 404
        DataBinding.DataField = 'comentarios_nomina'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ScrollBars = ssVertical
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 50
        Height = 85
        Width = 333
      end
    end
    object cxTabSheet6: TcxTabSheet
      Caption = 'Referencias'
      ImageIndex = 5
      object cxLabel85: TcxLabel
        Left = 24
        Top = 16
        AutoSize = False
        Caption = 'FAMILIAR CERCANO'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 848
      end
      object cxLabel86: TcxLabel
        Left = 24
        Top = 38
        Caption = 'Nombre (s):'
        Transparent = True
      end
      object cxDBTextEdit36: TcxDBTextEdit
        Left = 120
        Top = 37
        DataBinding.DataField = 'Ref1Nombres'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 1
        Width = 200
      end
      object cxLabel87: TcxLabel
        Left = 330
        Top = 38
        Caption = 'Ap. Paterno:'
        Transparent = True
      end
      object cxDBTextEdit37: TcxDBTextEdit
        Left = 398
        Top = 37
        DataBinding.DataField = 'Ref1Paterno'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 2
        Width = 200
      end
      object cxDBTextEdit38: TcxDBTextEdit
        Left = 672
        Top = 37
        DataBinding.DataField = 'Ref1Materno'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 3
        Width = 200
      end
      object cxLabel88: TcxLabel
        Left = 604
        Top = 38
        Caption = 'Ap. Materno:'
        Transparent = True
      end
      object cxLabel89: TcxLabel
        Left = 24
        Top = 60
        Caption = 'Sexo:'
        Transparent = True
      end
      object cxDBTextEdit39: TcxDBImageComboBox
        Left = 120
        Top = 59
        DataBinding.DataField = 'Ref1Sexo'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items = <
          item
            Description = 'MASCULINO'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'FEMENINO'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 7
        Width = 125
      end
      object cxLabel90: TcxLabel
        Left = 252
        Top = 60
        Caption = 'Ocupaci'#243'n:'
        Transparent = True
      end
      object cxDBTextEdit40: TcxDBTextEdit
        Left = 316
        Top = 59
        DataBinding.DataField = 'Ref1Ocupacion'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 8
        Width = 250
      end
      object cxLabel91: TcxLabel
        Left = 572
        Top = 61
        Caption = 'Parentesco:'
        Transparent = True
      end
      object cxDBTextEdit41: TcxDBTextEdit
        Left = 636
        Top = 59
        DataBinding.DataField = 'Ref1Parentesco'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 9
        Width = 236
      end
      object cxDBTextEdit42: TcxDBTextEdit
        Left = 120
        Top = 81
        DataBinding.DataField = 'Ref1Calle'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 13
        Width = 200
      end
      object cxLabel92: TcxLabel
        Left = 24
        Top = 82
        Caption = 'Calle:'
        Transparent = True
      end
      object cxDBTextEdit43: TcxDBTextEdit
        Left = 404
        Top = 81
        DataBinding.DataField = 'Ref1NumExt'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 14
        Width = 65
      end
      object cxLabel93: TcxLabel
        Left = 327
        Top = 82
        Caption = 'N'#250'm. Exterior:'
        Transparent = True
      end
      object cxLabel94: TcxLabel
        Left = 477
        Top = 82
        Caption = 'N'#250'm. Interior:'
        Transparent = True
      end
      object cxDBTextEdit44: TcxDBTextEdit
        Left = 560
        Top = 81
        DataBinding.DataField = 'Ref1NumInt'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 15
        Width = 65
      end
      object cxLabel95: TcxLabel
        Left = 24
        Top = 104
        Caption = 'Colonia:'
        Transparent = True
      end
      object cxDBTextEdit45: TcxDBTextEdit
        Left = 120
        Top = 103
        DataBinding.DataField = 'Ref1Colonia'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 21
        Width = 150
      end
      object cxLabel96: TcxLabel
        Left = 282
        Top = 104
        Caption = 'Ciudad:'
        Transparent = True
      end
      object cxDBTextEdit46: TcxDBTextEdit
        Left = 330
        Top = 103
        DataBinding.DataField = 'Ref1Ciudad'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 22
        Width = 150
      end
      object cxDBTextEdit47: TcxDBTextEdit
        Left = 531
        Top = 103
        DataBinding.DataField = 'Ref1Estado'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 23
        Width = 150
      end
      object cxLabel97: TcxLabel
        Left = 488
        Top = 105
        Caption = 'Estado:'
        Transparent = True
      end
      object cxDBTextEdit48: TcxDBTextEdit
        Left = 715
        Top = 81
        DataBinding.DataField = 'Ref1CP'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 16
        Width = 65
      end
      object cxLabel98: TcxLabel
        Left = 640
        Top = 82
        Caption = 'C'#243'digo Postal:'
        Transparent = True
      end
      object cxLabel99: TcxLabel
        Left = 697
        Top = 105
        Caption = 'Tel'#233'fono:'
        Transparent = True
      end
      object cxDBTextEdit49: TcxDBTextEdit
        Left = 746
        Top = 103
        DataBinding.DataField = 'Ref1Telefono'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 24
        Width = 126
      end
      object cxLabel100: TcxLabel
        Left = 24
        Top = 133
        AutoSize = False
        Caption = 'PARIENTE CERCANO'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 848
      end
      object cxLabel101: TcxLabel
        Left = 24
        Top = 155
        Caption = 'Nombre (s):'
        Transparent = True
      end
      object cxDBTextEdit50: TcxDBTextEdit
        Left = 120
        Top = 154
        DataBinding.DataField = 'Ref2Nombres'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 30
        Width = 200
      end
      object cxLabel102: TcxLabel
        Left = 330
        Top = 155
        Caption = 'Ap. Paterno:'
        Transparent = True
      end
      object cxDBTextEdit51: TcxDBTextEdit
        Left = 398
        Top = 154
        DataBinding.DataField = 'Ref2Paterno'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 31
        Width = 200
      end
      object cxDBTextEdit52: TcxDBTextEdit
        Left = 672
        Top = 154
        DataBinding.DataField = 'Ref2Materno'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 32
        Width = 200
      end
      object cxLabel103: TcxLabel
        Left = 604
        Top = 155
        Caption = 'Ap. Materno:'
        Transparent = True
      end
      object cxLabel104: TcxLabel
        Left = 24
        Top = 177
        Caption = 'Sexo:'
        Transparent = True
      end
      object cxDBImageComboBox3: TcxDBImageComboBox
        Left = 120
        Top = 176
        DataBinding.DataField = 'Ref2Sexo'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items = <
          item
            Description = 'MASCULINO'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'FEMENINO'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 36
        Width = 125
      end
      object cxLabel105: TcxLabel
        Left = 252
        Top = 177
        Caption = 'Ocupaci'#243'n:'
        Transparent = True
      end
      object cxDBTextEdit53: TcxDBTextEdit
        Left = 316
        Top = 176
        DataBinding.DataField = 'Ref2Ocupacion'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 37
        Width = 250
      end
      object cxLabel106: TcxLabel
        Left = 572
        Top = 178
        Caption = 'Parentesco:'
        Transparent = True
      end
      object cxDBTextEdit54: TcxDBTextEdit
        Left = 636
        Top = 176
        DataBinding.DataField = 'Ref2Parentesco'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 38
        Width = 236
      end
      object cxDBTextEdit55: TcxDBTextEdit
        Left = 120
        Top = 198
        DataBinding.DataField = 'Ref2Calle'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 42
        Width = 200
      end
      object cxLabel107: TcxLabel
        Left = 24
        Top = 199
        Caption = 'Calle:'
        Transparent = True
      end
      object cxDBTextEdit56: TcxDBTextEdit
        Left = 404
        Top = 198
        DataBinding.DataField = 'Ref2NumExt'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 43
        Width = 65
      end
      object cxLabel108: TcxLabel
        Left = 327
        Top = 199
        Caption = 'N'#250'm. Exterior:'
        Transparent = True
      end
      object cxLabel109: TcxLabel
        Left = 477
        Top = 199
        Caption = 'N'#250'm. Interior:'
        Transparent = True
      end
      object cxDBTextEdit57: TcxDBTextEdit
        Left = 560
        Top = 198
        DataBinding.DataField = 'Ref2NumInt'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 44
        Width = 65
      end
      object cxLabel110: TcxLabel
        Left = 24
        Top = 221
        Caption = 'Colonia:'
        Transparent = True
      end
      object cxDBTextEdit58: TcxDBTextEdit
        Left = 120
        Top = 220
        DataBinding.DataField = 'Ref2Colonia'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 50
        Width = 150
      end
      object cxLabel111: TcxLabel
        Left = 282
        Top = 221
        Caption = 'Ciudad:'
        Transparent = True
      end
      object cxDBTextEdit59: TcxDBTextEdit
        Left = 330
        Top = 220
        DataBinding.DataField = 'Ref2Ciudad'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 51
        Width = 150
      end
      object cxDBTextEdit60: TcxDBTextEdit
        Left = 531
        Top = 220
        DataBinding.DataField = 'Ref2Estado'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 52
        Width = 150
      end
      object cxLabel112: TcxLabel
        Left = 488
        Top = 222
        Caption = 'Estado:'
        Transparent = True
      end
      object cxDBTextEdit61: TcxDBTextEdit
        Left = 715
        Top = 198
        DataBinding.DataField = 'Ref2CP'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 45
        Width = 65
      end
      object cxLabel113: TcxLabel
        Left = 640
        Top = 199
        Caption = 'C'#243'digo Postal:'
        Transparent = True
      end
      object cxLabel114: TcxLabel
        Left = 697
        Top = 222
        Caption = 'Tel'#233'fono:'
        Transparent = True
      end
      object cxDBTextEdit62: TcxDBTextEdit
        Left = 746
        Top = 220
        DataBinding.DataField = 'Ref2Telefono'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 53
        Width = 126
      end
      object cxLabel115: TcxLabel
        Left = 24
        Top = 250
        AutoSize = False
        Caption = 'PERSONAL'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 848
      end
      object cxLabel116: TcxLabel
        Left = 24
        Top = 272
        Caption = 'Nombre (s):'
        Transparent = True
      end
      object cxDBTextEdit63: TcxDBTextEdit
        Left = 120
        Top = 271
        DataBinding.DataField = 'Ref3Nombres'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 59
        Width = 200
      end
      object cxLabel117: TcxLabel
        Left = 330
        Top = 272
        Caption = 'Ap. Paterno:'
        Transparent = True
      end
      object cxDBTextEdit64: TcxDBTextEdit
        Left = 398
        Top = 271
        DataBinding.DataField = 'Ref3Paterno'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 60
        Width = 200
      end
      object cxDBTextEdit65: TcxDBTextEdit
        Left = 672
        Top = 271
        DataBinding.DataField = 'Ref3Materno'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 61
        Width = 200
      end
      object cxLabel118: TcxLabel
        Left = 604
        Top = 272
        Caption = 'Ap. Materno:'
        Transparent = True
      end
      object cxLabel119: TcxLabel
        Left = 24
        Top = 294
        Caption = 'Sexo:'
        Transparent = True
      end
      object cxDBImageComboBox4: TcxDBImageComboBox
        Left = 120
        Top = 293
        DataBinding.DataField = 'Ref3Sexo'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items = <
          item
            Description = 'MASCULINO'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'FEMENINO'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 65
        Width = 125
      end
      object cxLabel120: TcxLabel
        Left = 252
        Top = 294
        Caption = 'Ocupaci'#243'n:'
        Transparent = True
      end
      object cxDBTextEdit66: TcxDBTextEdit
        Left = 316
        Top = 293
        DataBinding.DataField = 'Ref3Ocupacion'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 66
        Width = 250
      end
      object cxLabel121: TcxLabel
        Left = 572
        Top = 295
        Caption = 'Parentesco:'
        Transparent = True
      end
      object cxDBTextEdit67: TcxDBTextEdit
        Left = 636
        Top = 293
        DataBinding.DataField = 'Ref3Parentesco'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 67
        Width = 236
      end
      object cxDBTextEdit68: TcxDBTextEdit
        Left = 120
        Top = 315
        DataBinding.DataField = 'Ref3Calle'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 71
        Width = 200
      end
      object cxLabel122: TcxLabel
        Left = 24
        Top = 316
        Caption = 'Calle:'
        Transparent = True
      end
      object cxDBTextEdit69: TcxDBTextEdit
        Left = 404
        Top = 315
        DataBinding.DataField = 'Ref3NumExt'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 72
        Width = 65
      end
      object cxLabel123: TcxLabel
        Left = 327
        Top = 316
        Caption = 'N'#250'm. Exterior:'
        Transparent = True
      end
      object cxLabel124: TcxLabel
        Left = 477
        Top = 316
        Caption = 'N'#250'm. Interior:'
        Transparent = True
      end
      object cxDBTextEdit70: TcxDBTextEdit
        Left = 560
        Top = 315
        DataBinding.DataField = 'Ref3NumInt'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 73
        Width = 65
      end
      object cxLabel125: TcxLabel
        Left = 24
        Top = 338
        Caption = 'Colonia:'
        Transparent = True
      end
      object cxDBTextEdit71: TcxDBTextEdit
        Left = 120
        Top = 337
        DataBinding.DataField = 'Ref3Colonia'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 79
        Width = 150
      end
      object cxLabel126: TcxLabel
        Left = 282
        Top = 338
        Caption = 'Ciudad:'
        Transparent = True
      end
      object cxDBTextEdit72: TcxDBTextEdit
        Left = 330
        Top = 337
        DataBinding.DataField = 'Ref3Ciudad'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 80
        Width = 150
      end
      object cxDBTextEdit73: TcxDBTextEdit
        Left = 531
        Top = 337
        DataBinding.DataField = 'Ref3Estado'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 81
        Width = 150
      end
      object cxLabel127: TcxLabel
        Left = 488
        Top = 339
        Caption = 'Estado:'
        Transparent = True
      end
      object cxDBTextEdit74: TcxDBTextEdit
        Left = 715
        Top = 315
        DataBinding.DataField = 'Ref3CP'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 74
        Width = 65
      end
      object cxLabel128: TcxLabel
        Left = 640
        Top = 316
        Caption = 'C'#243'digo Postal:'
        Transparent = True
      end
      object cxLabel129: TcxLabel
        Left = 697
        Top = 339
        Caption = 'Tel'#233'fono:'
        Transparent = True
      end
      object cxDBTextEdit75: TcxDBTextEdit
        Left = 746
        Top = 337
        DataBinding.DataField = 'Ref3Telefono'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 82
        Width = 126
      end
      object cxDBTextEdit76: TcxDBTextEdit
        Left = 120
        Top = 454
        DataBinding.DataField = 'Ref4Colonia'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 98
        Width = 150
      end
      object cxDBTextEdit77: TcxDBTextEdit
        Left = 746
        Top = 454
        DataBinding.DataField = 'Ref4Telefono'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 111
        Width = 126
      end
      object cxLabel130: TcxLabel
        Left = 697
        Top = 456
        Caption = 'Tel'#233'fono:'
        Transparent = True
      end
      object cxLabel131: TcxLabel
        Left = 640
        Top = 433
        Caption = 'C'#243'digo Postal:'
        Transparent = True
      end
      object cxDBTextEdit78: TcxDBTextEdit
        Left = 715
        Top = 432
        DataBinding.DataField = 'Ref4CP'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 96
        Width = 65
      end
      object cxLabel132: TcxLabel
        Left = 488
        Top = 456
        Caption = 'Estado:'
        Transparent = True
      end
      object cxDBTextEdit79: TcxDBTextEdit
        Left = 531
        Top = 454
        DataBinding.DataField = 'Ref4Estado'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 105
        Width = 150
      end
      object cxDBTextEdit80: TcxDBTextEdit
        Left = 330
        Top = 454
        DataBinding.DataField = 'Ref4Ciudad'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 100
        Width = 150
      end
      object cxLabel133: TcxLabel
        Left = 282
        Top = 455
        Caption = 'Ciudad:'
        Transparent = True
      end
      object cxLabel134: TcxLabel
        Left = 24
        Top = 455
        Caption = 'Colonia:'
        Transparent = True
      end
      object cxDBTextEdit81: TcxDBTextEdit
        Left = 560
        Top = 432
        DataBinding.DataField = 'Ref4NumInt'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 95
        Width = 65
      end
      object cxLabel135: TcxLabel
        Left = 477
        Top = 433
        Caption = 'N'#250'm. Interior:'
        Transparent = True
      end
      object cxLabel136: TcxLabel
        Left = 327
        Top = 433
        Caption = 'N'#250'm. Exterior:'
        Transparent = True
      end
      object cxDBTextEdit82: TcxDBTextEdit
        Left = 404
        Top = 432
        DataBinding.DataField = 'Ref4NumExt'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 94
        Width = 65
      end
      object cxLabel137: TcxLabel
        Left = 24
        Top = 433
        Caption = 'Calle:'
        Transparent = True
      end
      object cxDBTextEdit83: TcxDBTextEdit
        Left = 120
        Top = 432
        DataBinding.DataField = 'Ref4Calle'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 93
        Width = 200
      end
      object cxDBTextEdit84: TcxDBTextEdit
        Left = 636
        Top = 410
        DataBinding.DataField = 'Ref4Parentesco'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 92
        Width = 236
      end
      object cxLabel138: TcxLabel
        Left = 572
        Top = 412
        Caption = 'Parentesco:'
        Transparent = True
      end
      object cxDBTextEdit85: TcxDBTextEdit
        Left = 316
        Top = 410
        DataBinding.DataField = 'Ref4Ocupacion'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 91
        Width = 250
      end
      object cxLabel139: TcxLabel
        Left = 252
        Top = 411
        Caption = 'Ocupaci'#243'n:'
        Transparent = True
      end
      object cxDBImageComboBox5: TcxDBImageComboBox
        Left = 120
        Top = 410
        DataBinding.DataField = 'Ref4Sexo'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items = <
          item
            Description = 'MASCULINO'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'FEMENINO'
            Value = 2
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 90
        Width = 125
      end
      object cxLabel140: TcxLabel
        Left = 24
        Top = 411
        Caption = 'Sexo:'
        Transparent = True
      end
      object cxLabel141: TcxLabel
        Left = 604
        Top = 389
        Caption = 'Ap. Materno:'
        Transparent = True
      end
      object cxDBTextEdit86: TcxDBTextEdit
        Left = 672
        Top = 388
        DataBinding.DataField = 'Ref4Materno'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 89
        Width = 200
      end
      object cxDBTextEdit87: TcxDBTextEdit
        Left = 398
        Top = 388
        DataBinding.DataField = 'Ref4Paterno'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 88
        Width = 200
      end
      object cxLabel142: TcxLabel
        Left = 330
        Top = 389
        Caption = 'Ap. Paterno:'
        Transparent = True
      end
      object cxDBTextEdit88: TcxDBTextEdit
        Left = 120
        Top = 388
        DataBinding.DataField = 'Ref4Nombres'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 87
        Width = 200
      end
      object cxLabel143: TcxLabel
        Left = 24
        Top = 389
        Caption = 'Nombre (s):'
        Transparent = True
      end
      object cxLabel144: TcxLabel
        Left = 24
        Top = 367
        AutoSize = False
        Caption = 'LABORAL'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 848
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = 'SocioEcon'#243'mico 1'
      ImageIndex = 6
      object cxDBCheckBox12: TcxDBCheckBox
        Left = 24
        Top = 14
        Caption = 'Vive con su Familia'
        DataBinding.DataField = 'vive_familia'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 0
        Transparent = True
        Width = 117
      end
      object cxLabel219: TcxLabel
        Left = 24
        Top = 45
        Caption = 'Ingreso Familiar Adicional:'
        Transparent = True
      end
      object cxDBCurrencyEdit13: TcxDBCurrencyEdit
        Left = 219
        Top = 43
        DataBinding.DataField = 'salario_mensual_bruto'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 2
        Width = 100
      end
      object cxDBRadioGroup33: TcxDBRadioGroup
        Left = 339
        Top = 14
        Caption = 'Su domicilio es:'
        DataBinding.DataField = 'vivienda_tipo'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Columns = 5
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'Propio'
            Value = 0
          end
          item
            Caption = 'Rentado'
            Value = 1
          end
          item
            Caption = 'Hipotecado'
            Value = 2
          end
          item
            Caption = 'Prestado'
            Value = 3
          end
          item
            Caption = 'Familiar'
            Value = 4
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 1
        Height = 48
        Width = 426
      end
      object cxLabel220: TcxLabel
        Left = 24
        Top = 66
        Caption = 'Especificaciones de Inmuebles y Costo:'
        Transparent = True
      end
      object cxDBTextEdit136: TcxDBTextEdit
        Left = 219
        Top = 65
        DataBinding.DataField = 'calle'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 4
        Width = 300
      end
      object cxLabel221: TcxLabel
        Left = 24
        Top = 88
        Caption = 'Inversiones y Costo Aproximado:'
        Transparent = True
      end
      object cxDBTextEdit137: TcxDBTextEdit
        Left = 219
        Top = 87
        DataBinding.DataField = 'colonia'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 6
        Width = 300
      end
      object cxLabel222: TcxLabel
        Left = 24
        Top = 110
        Caption = 'Veh'#237'culo y Costo Aproximado:'
        Transparent = True
      end
      object cxDBTextEdit138: TcxDBTextEdit
        Left = 219
        Top = 109
        DataBinding.DataField = 'calle1'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 8
        Width = 300
      end
      object cxDBRadioGroup34: TcxDBRadioGroup
        Left = 219
        Top = 132
        Caption = 'Tipo de Vivienda'
        DataBinding.DataField = 'registro_cesp'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Columns = 5
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'Casa sola'
            Value = 0
          end
          item
            Caption = 'Departamento'
            Value = 1
          end
          item
            Caption = 'Vecindad'
            Value = 2
          end
          item
            Caption = 'Albergue'
            Value = 3
          end
          item
            Caption = 'Accesor'#237'a'
            Value = 4
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 10
        Height = 48
        Width = 426
      end
      object cxLabel223: TcxLabel
        Left = 24
        Top = 190
        Caption = 'La Vivienda Cuenta con:'
        Transparent = True
      end
      object cxDBCheckBox13: TcxDBCheckBox
        Left = 219
        Top = 189
        Caption = 'Sala'
        DataBinding.DataField = 'vivienda_sala'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 12
        Transparent = True
        Width = 54
      end
      object cxDBCheckBox14: TcxDBCheckBox
        Left = 279
        Top = 189
        Caption = 'Comedor'
        DataBinding.DataField = 'vivienda_comedor'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 13
        Transparent = True
        Width = 75
      end
      object cxDBCheckBox15: TcxDBCheckBox
        Left = 360
        Top = 189
        Caption = 'Cocina'
        DataBinding.DataField = 'vivienda_cocina'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 14
        Transparent = True
        Width = 60
      end
      object cxDBCheckBox16: TcxDBCheckBox
        Left = 426
        Top = 189
        Caption = 'Ba'#241'o Privado'
        DataBinding.DataField = 'vivienda_banio1'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 15
        Transparent = True
        Width = 91
      end
      object cxDBCheckBox17: TcxDBCheckBox
        Left = 531
        Top = 189
        Caption = 'Ba'#241'o Colectivo'
        DataBinding.DataField = 'vivienda_banio2'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 16
        Transparent = True
        Width = 100
      end
      object cxDBCurrencyEdit14: TcxDBCurrencyEdit
        Left = 740
        Top = 188
        DataBinding.DataField = 'vivienda_dormitorios'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = ',0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 11
        Width = 50
      end
      object cxLabel224: TcxLabel
        Left = 645
        Top = 190
        Caption = 'No de Dormitorios:'
        Transparent = True
      end
      object cxDBRadioGroup35: TcxDBRadioGroup
        Left = 219
        Top = 214
        Caption = 'Paredes'
        DataBinding.DataField = 'vivienda_paredes'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'Tabique'
            Value = 0
          end
          item
            Caption = 'Madera'
            Value = 1
          end
          item
            Caption = 'Cart'#243'n'
            Value = 2
          end
          item
            Caption = 'Otros'
            Value = 3
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 19
        Height = 83
        Width = 122
      end
      object cxDBRadioGroup36: TcxDBRadioGroup
        Left = 347
        Top = 214
        Caption = 'Techos'
        DataBinding.DataField = 'vivienda_techos'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'Concreto'
            Value = 0
          end
          item
            Caption = 'L'#225'mina Asbesto'
            Value = 1
          end
          item
            Caption = 'Cart'#243'n'
            Value = 2
          end
          item
            Caption = 'L'#225'mina Met'#225'lica'
            Value = 3
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 20
        Height = 83
        Width = 122
      end
      object cxDBRadioGroup37: TcxDBRadioGroup
        Left = 475
        Top = 214
        Caption = 'Pisos'
        DataBinding.DataField = 'vivienda_pisos'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'Mosaico'
            Value = 0
          end
          item
            Caption = 'Loseta'
            Value = 1
          end
          item
            Caption = 'Cemento'
            Value = 2
          end
          item
            Caption = 'Tierra Apisonada'
            Value = 3
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 22
        Height = 83
        Width = 122
      end
      object cxLabel225: TcxLabel
        Left = 24
        Top = 214
        Caption = 'Material Predominante:'
        Transparent = True
      end
      object cxLabel226: TcxLabel
        Left = 24
        Top = 304
        Caption = 'La Vivienda Cuenta con:'
        Transparent = True
      end
      object cxDBCheckBox18: TcxDBCheckBox
        Left = 219
        Top = 303
        Caption = 'Estereo'
        DataBinding.DataField = 'mobiliario_1'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 23
        Transparent = True
        Width = 63
      end
      object cxDBCheckBox19: TcxDBCheckBox
        Left = 288
        Top = 303
        Caption = 'TV'
        DataBinding.DataField = 'mobiliario_2'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 24
        Transparent = True
        Width = 40
      end
      object cxDBCheckBox21: TcxDBCheckBox
        Left = 339
        Top = 303
        Caption = 'DVD/BluRay'
        DataBinding.DataField = 'mobiliario_3'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 25
        Transparent = True
        Width = 85
      end
      object cxDBCheckBox22: TcxDBCheckBox
        Left = 430
        Top = 303
        Caption = 'Estufa'
        DataBinding.DataField = 'mobiliario_4'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 26
        Transparent = True
        Width = 60
      end
      object cxDBCheckBox23: TcxDBCheckBox
        Left = 496
        Top = 303
        Caption = 'Microondas'
        DataBinding.DataField = 'mobiliario_5'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 27
        Transparent = True
        Width = 75
      end
      object cxDBCheckBox24: TcxDBCheckBox
        Left = 585
        Top = 303
        Caption = 'Lavadora'
        DataBinding.DataField = 'mobiliario_6'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 28
        Transparent = True
        Width = 76
      end
      object cxDBCheckBox25: TcxDBCheckBox
        Left = 667
        Top = 303
        Caption = 'Refrigerador'
        DataBinding.DataField = 'mobiliario_7'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 29
        Transparent = True
        Width = 91
      end
      object cxDBCheckBox26: TcxDBCheckBox
        Left = 759
        Top = 303
        Caption = 'Computadora'
        DataBinding.DataField = 'mobiliario_8'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 30
        Transparent = True
        Width = 100
      end
      object cxLabel227: TcxLabel
        Left = 24
        Top = 336
        AutoSize = False
        Caption = 'EGRESOS'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 698
      end
      object cxLabel228: TcxLabel
        Left = 24
        Top = 357
        Caption = 'Alimentaci'#243'n:'
        Transparent = True
      end
      object cxDBCurrencyEdit15: TcxDBCurrencyEdit
        Left = 124
        Top = 355
        DataBinding.DataField = 'egresos_01'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 33
        Width = 100
      end
      object cxDBCurrencyEdit16: TcxDBCurrencyEdit
        Left = 124
        Top = 377
        DataBinding.DataField = 'egresos_02'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 39
        Width = 100
      end
      object cxLabel229: TcxLabel
        Left = 24
        Top = 379
        Caption = 'Gas o Combustible:'
        Transparent = True
      end
      object cxLabel230: TcxLabel
        Left = 24
        Top = 401
        Caption = 'Renta:'
        Transparent = True
      end
      object cxDBCurrencyEdit17: TcxDBCurrencyEdit
        Left = 124
        Top = 399
        DataBinding.DataField = 'egresos_03'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 42
        Width = 100
      end
      object cxDBCurrencyEdit18: TcxDBCurrencyEdit
        Left = 124
        Top = 421
        DataBinding.DataField = 'egresos_04'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 46
        Width = 100
      end
      object cxLabel231: TcxLabel
        Left = 24
        Top = 423
        Caption = 'Agua:'
        Transparent = True
      end
      object cxDBCurrencyEdit19: TcxDBCurrencyEdit
        Left = 124
        Top = 465
        DataBinding.DataField = 'egresos_06'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 57
        Width = 100
      end
      object cxLabel232: TcxLabel
        Left = 24
        Top = 467
        Caption = 'Electricidad (luz):'
        Transparent = True
      end
      object cxDBCurrencyEdit20: TcxDBCurrencyEdit
        Left = 124
        Top = 443
        DataBinding.DataField = 'egresos_05'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 51
        Width = 100
      end
      object cxLabel233: TcxLabel
        Left = 24
        Top = 445
        Caption = 'Predial:'
        Transparent = True
      end
      object cxLabel234: TcxLabel
        Left = 256
        Top = 357
        Caption = 'Tel'#233'fono:'
        Transparent = True
      end
      object cxDBCurrencyEdit21: TcxDBCurrencyEdit
        Left = 356
        Top = 355
        DataBinding.DataField = 'egresos_07'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 34
        Width = 100
      end
      object cxDBCurrencyEdit22: TcxDBCurrencyEdit
        Left = 356
        Top = 377
        DataBinding.DataField = 'egresos_08'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 40
        Width = 100
      end
      object cxLabel235: TcxLabel
        Left = 256
        Top = 379
        Caption = 'Tel'#233'fono Celular:'
        Transparent = True
      end
      object cxLabel236: TcxLabel
        Left = 256
        Top = 401
        Caption = 'Transporte:'
        Transparent = True
      end
      object cxDBCurrencyEdit23: TcxDBCurrencyEdit
        Left = 356
        Top = 399
        DataBinding.DataField = 'egresos_09'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 43
        Width = 100
      end
      object cxDBCurrencyEdit24: TcxDBCurrencyEdit
        Left = 356
        Top = 421
        DataBinding.DataField = 'egresos_10'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 47
        Width = 100
      end
      object cxLabel237: TcxLabel
        Left = 256
        Top = 423
        Caption = 'Educaci'#243'n:'
        Transparent = True
      end
      object cxDBCurrencyEdit25: TcxDBCurrencyEdit
        Left = 356
        Top = 465
        DataBinding.DataField = 'egresos_12'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 62
        Width = 100
      end
      object cxLabel238: TcxLabel
        Left = 256
        Top = 467
        Caption = 'Recreaci'#243'n:'
        Transparent = True
      end
      object cxDBCurrencyEdit26: TcxDBCurrencyEdit
        Left = 356
        Top = 443
        DataBinding.DataField = 'egresos_11'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 52
        Width = 100
      end
      object cxLabel239: TcxLabel
        Left = 256
        Top = 445
        Caption = 'Gastos M'#233'dicos:'
        Transparent = True
      end
      object cxDBCurrencyEdit27: TcxDBCurrencyEdit
        Left = 622
        Top = 355
        DataBinding.DataField = 'egresos_13'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 35
        Width = 100
      end
      object cxLabel241: TcxLabel
        Left = 492
        Top = 443
        Caption = 'TOTAL DE EGRESOS:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxDBCurrencyEdit29: TcxDBCurrencyEdit
        Tag = 1
        Left = 622
        Top = 441
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        Enabled = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 48
        Width = 100
      end
      object cxDBCurrencyEdit31: TcxDBCurrencyEdit
        Left = 622
        Top = 399
        DataBinding.DataField = 'egresos_15'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 44
        Width = 100
      end
      object cxLabel243: TcxLabel
        Left = 492
        Top = 401
        Caption = 'Cr'#233'ditos de Construcci'#243'n:'
        Transparent = True
      end
      object cxLabel244: TcxLabel
        Left = 492
        Top = 379
        Caption = 'Pr'#233'stamos (rifas, tandas):'
        Transparent = True
      end
      object cxDBCurrencyEdit32: TcxDBCurrencyEdit
        Left = 622
        Top = 377
        DataBinding.DataField = 'egresos_14'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 41
        Width = 100
      end
      object cxLabel245: TcxLabel
        Left = 492
        Top = 357
        Caption = 'Ropa y Calzado:'
        Transparent = True
      end
    end
    object cxTabSheet8: TcxTabSheet
      Caption = 'SocioEcon'#243'mico 2'
      ImageIndex = 7
      object cxLabel240: TcxLabel
        Left = 21
        Top = 6
        AutoSize = False
        Caption = 'SALUD'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 698
      end
      object cxDBRadioGroup38: TcxDBRadioGroup
        Left = 55
        Top = 20
        Caption = 'Servicio M'#233'dico con el que Cuenta'
        DataBinding.DataField = 'servicio_medico'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Columns = 5
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'IMSS'
            Value = 0
          end
          item
            Caption = 'ISSSTE'
            Value = 1
          end
          item
            Caption = 'Centro de Salud'
            Value = 2
          end
          item
            Caption = 'Dispensario'
            Value = 3
          end
          item
            Caption = 'M'#233'dico Privado'
            Value = 4
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 1
        Transparent = True
        Height = 48
        Width = 534
      end
      object cxLabel242: TcxLabel
        Left = 55
        Top = 73
        AutoSize = False
        Caption = 'Enfermedades Frecuentes de la Familia'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 698
      end
      object cxLabel246: TcxLabel
        Left = 60
        Top = 98
        Caption = 'Respiratorias'
        Transparent = True
      end
      object cxDBTextEdit139: TcxDBTextEdit
        Left = 208
        Top = 96
        DataBinding.DataField = 'enf_frec_cual_1'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 3
        Width = 250
      end
      object cxLabel247: TcxLabel
        Left = 156
        Top = 98
        Caption = #191'Cuales?'
        Transparent = True
      end
      object cxLabel248: TcxLabel
        Left = 468
        Top = 98
        Caption = #191'Quien las Padece?'
        Transparent = True
      end
      object cxDBTextEdit140: TcxDBTextEdit
        Left = 570
        Top = 96
        DataBinding.DataField = 'enf_frec_quien_1'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 4
        Width = 250
      end
      object cxDBTextEdit141: TcxDBTextEdit
        Left = 208
        Top = 118
        DataBinding.DataField = 'enf_frec_cual_2'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 8
        Width = 250
      end
      object cxDBTextEdit142: TcxDBTextEdit
        Left = 570
        Top = 118
        DataBinding.DataField = 'enf_frec_quien_2'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 9
        Width = 250
      end
      object cxLabel249: TcxLabel
        Left = 468
        Top = 120
        Caption = #191'Quien las Padece?'
        Transparent = True
      end
      object cxLabel250: TcxLabel
        Left = 156
        Top = 120
        Caption = #191'Cuales?'
        Transparent = True
      end
      object cxLabel251: TcxLabel
        Left = 60
        Top = 120
        Caption = 'Gastrointestinales'
        Transparent = True
      end
      object cxLabel252: TcxLabel
        Left = 60
        Top = 142
        Caption = 'Dermatol'#243'gicas'
        Transparent = True
      end
      object cxDBTextEdit143: TcxDBTextEdit
        Left = 208
        Top = 140
        DataBinding.DataField = 'enf_frec_cual_3'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 13
        Width = 250
      end
      object cxLabel253: TcxLabel
        Left = 156
        Top = 142
        Caption = #191'Cuales?'
        Transparent = True
      end
      object cxLabel254: TcxLabel
        Left = 468
        Top = 142
        Caption = #191'Quien las Padece?'
        Transparent = True
      end
      object cxDBTextEdit144: TcxDBTextEdit
        Left = 570
        Top = 140
        DataBinding.DataField = 'enf_frec_quien_3'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 14
        Width = 250
      end
      object cxDBTextEdit145: TcxDBTextEdit
        Left = 208
        Top = 162
        DataBinding.DataField = 'enf_frec_cual_4'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 18
        Width = 250
      end
      object cxDBTextEdit146: TcxDBTextEdit
        Left = 570
        Top = 162
        DataBinding.DataField = 'enf_frec_quien_4'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 19
        Width = 250
      end
      object cxLabel255: TcxLabel
        Left = 468
        Top = 164
        Caption = #191'Quien las Padece?'
        Transparent = True
      end
      object cxLabel256: TcxLabel
        Left = 156
        Top = 164
        Caption = #191'Cuales?'
        Transparent = True
      end
      object cxLabel257: TcxLabel
        Left = 60
        Top = 164
        Caption = 'Neurol'#243'gicas'
        Transparent = True
      end
      object cxLabel258: TcxLabel
        Left = 60
        Top = 186
        Caption = 'C'#225'ncer'
        Transparent = True
      end
      object cxDBTextEdit147: TcxDBTextEdit
        Left = 208
        Top = 184
        DataBinding.DataField = 'enf_frec_cual_5'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 23
        Width = 250
      end
      object cxLabel259: TcxLabel
        Left = 156
        Top = 186
        Caption = #191'Cuales?'
        Transparent = True
      end
      object cxLabel260: TcxLabel
        Left = 468
        Top = 186
        Caption = #191'Quien las Padece?'
        Transparent = True
      end
      object cxDBTextEdit148: TcxDBTextEdit
        Left = 570
        Top = 184
        DataBinding.DataField = 'enf_frec_quien_5'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 24
        Width = 250
      end
      object cxDBTextEdit149: TcxDBTextEdit
        Left = 208
        Top = 205
        DataBinding.DataField = 'enf_frec_cual_6'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 28
        Width = 250
      end
      object cxDBTextEdit150: TcxDBTextEdit
        Left = 570
        Top = 205
        DataBinding.DataField = 'enf_frec_quien_6'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 29
        Width = 250
      end
      object cxLabel261: TcxLabel
        Left = 468
        Top = 207
        Caption = #191'Quien las Padece?'
        Transparent = True
      end
      object cxLabel262: TcxLabel
        Left = 156
        Top = 207
        Caption = #191'Cuales?'
        Transparent = True
      end
      object cxLabel263: TcxLabel
        Left = 60
        Top = 207
        Caption = 'Hipertensi'#243'n'
        Transparent = True
      end
      object cxLabel264: TcxLabel
        Left = 60
        Top = 229
        Caption = 'Obesidad'
        Transparent = True
      end
      object cxDBTextEdit151: TcxDBTextEdit
        Left = 208
        Top = 227
        DataBinding.DataField = 'enf_frec_cual_7'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 33
        Width = 250
      end
      object cxLabel265: TcxLabel
        Left = 156
        Top = 229
        Caption = #191'Cuales?'
        Transparent = True
      end
      object cxLabel266: TcxLabel
        Left = 468
        Top = 229
        Caption = #191'Quien las Padece?'
        Transparent = True
      end
      object cxDBTextEdit152: TcxDBTextEdit
        Left = 570
        Top = 227
        DataBinding.DataField = 'enf_frec_quien_7'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 34
        Width = 250
      end
      object cxDBTextEdit153: TcxDBTextEdit
        Left = 208
        Top = 248
        DataBinding.DataField = 'enf_frec_cual_8'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 38
        Width = 250
      end
      object cxDBTextEdit154: TcxDBTextEdit
        Left = 570
        Top = 248
        DataBinding.DataField = 'enf_frec_quien_8'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 39
        Width = 250
      end
      object cxLabel267: TcxLabel
        Left = 468
        Top = 250
        Caption = #191'Quien las Padece?'
        Transparent = True
      end
      object cxLabel268: TcxLabel
        Left = 156
        Top = 250
        Caption = #191'Cuales?'
        Transparent = True
      end
      object cxLabel269: TcxLabel
        Left = 60
        Top = 250
        Caption = 'Diabetes Melitus'
        Transparent = True
      end
      object cxLabel270: TcxLabel
        Left = 60
        Top = 272
        Caption = 'Otra Enfermedad'
        Transparent = True
      end
      object cxDBTextEdit155: TcxDBTextEdit
        Left = 208
        Top = 270
        DataBinding.DataField = 'enf_frec_cual_9'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 43
        Width = 250
      end
      object cxLabel271: TcxLabel
        Left = 156
        Top = 272
        Caption = #191'Cuales?'
        Transparent = True
      end
      object cxLabel272: TcxLabel
        Left = 468
        Top = 272
        Caption = #191'Quien las Padece?'
        Transparent = True
      end
      object cxDBTextEdit156: TcxDBTextEdit
        Left = 570
        Top = 270
        DataBinding.DataField = 'enf_frec_quien_9'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 44
        Width = 250
      end
      object cxDBTextEdit157: TcxDBTextEdit
        Left = 208
        Top = 292
        DataBinding.DataField = 'vicios'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 48
        Width = 612
      end
      object cxLabel275: TcxLabel
        Left = 60
        Top = 294
        Caption = 'Vicios'
        Transparent = True
      end
      object cxLabel273: TcxLabel
        Left = 60
        Top = 321
        AutoSize = False
        Caption = 'Alimentaci'#243'n'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 698
      end
      object cxLabel285: TcxLabel
        Left = 305
        Top = 319
        Caption = 'Frecuencia con que los Consume'
        Transparent = True
      end
      object cxDBRadioGroup40: TcxDBRadioGroup
        Left = 60
        Top = 372
        Caption = 'Carne de Pollo'
        DataBinding.DataField = 'alimentacion_02'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        Properties.Columns = 5
        Properties.Items = <
          item
            Caption = 'Diario'
            Value = 0
          end
          item
            Caption = 'Semana'
            Value = 1
          end
          item
            Caption = 'Quincena'
            Value = 2
          end
          item
            Caption = 'Mes'
            Value = 3
          end
          item
            Caption = 'Ocasional'
            Value = 4
          end>
        TabOrder = 54
        Height = 38
        Width = 345
      end
      object cxDBRadioGroup41: TcxDBRadioGroup
        Left = 60
        Top = 409
        Caption = 'Pescado'
        DataBinding.DataField = 'alimentacion_03'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        Properties.Columns = 5
        Properties.Items = <
          item
            Caption = 'Diario'
            Value = 0
          end
          item
            Caption = 'Semana'
            Value = 1
          end
          item
            Caption = 'Quincena'
            Value = 2
          end
          item
            Caption = 'Mes'
            Value = 3
          end
          item
            Caption = 'Ocasional'
            Value = 4
          end>
        TabOrder = 56
        Height = 38
        Width = 345
      end
      object cxDBRadioGroup39: TcxDBRadioGroup
        Left = 60
        Top = 335
        Caption = 'Carne de Res / Cerdo'
        DataBinding.DataField = 'alimentacion_01'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        Properties.Columns = 5
        Properties.Items = <
          item
            Caption = 'Diario'
            Value = 0
          end
          item
            Caption = 'Semana'
            Value = 1
          end
          item
            Caption = 'Quincena'
            Value = 2
          end
          item
            Caption = 'Mes'
            Value = 3
          end
          item
            Caption = 'Ocasional'
            Value = 4
          end>
        TabOrder = 52
        Height = 38
        Width = 345
      end
      object cxDBRadioGroup42: TcxDBRadioGroup
        Left = 426
        Top = 335
        Caption = 'Huevo'
        DataBinding.DataField = 'alimentacion_06'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        Properties.Columns = 5
        Properties.Items = <
          item
            Caption = 'Diario'
            Value = 0
          end
          item
            Caption = 'Semana'
            Value = 1
          end
          item
            Caption = 'Quincena'
            Value = 2
          end
          item
            Caption = 'Mes'
            Value = 3
          end
          item
            Caption = 'Ocasional'
            Value = 4
          end>
        TabOrder = 53
        Height = 38
        Width = 345
      end
      object cxDBRadioGroup43: TcxDBRadioGroup
        Left = 60
        Top = 483
        Caption = 'Cereales'
        DataBinding.DataField = 'alimentacion_05'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        Properties.Columns = 5
        Properties.Items = <
          item
            Caption = 'Diario'
            Value = 0
          end
          item
            Caption = 'Semana'
            Value = 1
          end
          item
            Caption = 'Quincena'
            Value = 2
          end
          item
            Caption = 'Mes'
            Value = 3
          end
          item
            Caption = 'Ocasional'
            Value = 4
          end>
        TabOrder = 60
        Height = 38
        Width = 345
      end
      object cxDBRadioGroup44: TcxDBRadioGroup
        Left = 60
        Top = 446
        Caption = 'Leche'
        DataBinding.DataField = 'alimentacion_04'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        Properties.Columns = 5
        Properties.Items = <
          item
            Caption = 'Diario'
            Value = 0
          end
          item
            Caption = 'Semana'
            Value = 1
          end
          item
            Caption = 'Quincena'
            Value = 2
          end
          item
            Caption = 'Mes'
            Value = 3
          end
          item
            Caption = 'Ocasional'
            Value = 4
          end>
        TabOrder = 58
        Height = 38
        Width = 345
      end
      object cxDBRadioGroup45: TcxDBRadioGroup
        Left = 426
        Top = 372
        Caption = 'Frutas'
        DataBinding.DataField = 'alimentacion_07'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        Properties.Columns = 5
        Properties.Items = <
          item
            Caption = 'Diario'
            Value = 0
          end
          item
            Caption = 'Semana'
            Value = 1
          end
          item
            Caption = 'Quincena'
            Value = 2
          end
          item
            Caption = 'Mes'
            Value = 3
          end
          item
            Caption = 'Ocasional'
            Value = 4
          end>
        TabOrder = 55
        Height = 38
        Width = 345
      end
      object cxDBRadioGroup46: TcxDBRadioGroup
        Left = 426
        Top = 409
        Caption = 'Verduras'
        DataBinding.DataField = 'alimentacion_08'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        Properties.Columns = 5
        Properties.Items = <
          item
            Caption = 'Diario'
            Value = 0
          end
          item
            Caption = 'Semana'
            Value = 1
          end
          item
            Caption = 'Quincena'
            Value = 2
          end
          item
            Caption = 'Mes'
            Value = 3
          end
          item
            Caption = 'Ocasional'
            Value = 4
          end>
        TabOrder = 57
        Height = 38
        Width = 345
      end
      object cxDBRadioGroup47: TcxDBRadioGroup
        Left = 426
        Top = 446
        Caption = 'Pan'
        DataBinding.DataField = 'alimentacion_09'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        Properties.Columns = 5
        Properties.Items = <
          item
            Caption = 'Diario'
            Value = 0
          end
          item
            Caption = 'Semana'
            Value = 1
          end
          item
            Caption = 'Quincena'
            Value = 2
          end
          item
            Caption = 'Mes'
            Value = 3
          end
          item
            Caption = 'Ocasional'
            Value = 4
          end>
        TabOrder = 59
        Height = 38
        Width = 345
      end
      object cxDBRadioGroup48: TcxDBRadioGroup
        Left = 426
        Top = 483
        Caption = 'Tortillas'
        DataBinding.DataField = 'alimentacion_10'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        Properties.Columns = 5
        Properties.Items = <
          item
            Caption = 'Diario'
            Value = 0
          end
          item
            Caption = 'Semana'
            Value = 1
          end
          item
            Caption = 'Quincena'
            Value = 2
          end
          item
            Caption = 'Mes'
            Value = 3
          end
          item
            Caption = 'Ocasional'
            Value = 4
          end>
        TabOrder = 61
        Height = 38
        Width = 345
      end
    end
    object cxTabSheet9: TcxTabSheet
      Caption = 'SocioEcon'#243'mico 3'
      ImageIndex = 8
      object cxLabel274: TcxLabel
        Left = 24
        Top = 23
        Caption = 'Actividades Familiares Fin de Semana:'
        Transparent = True
      end
      object cxDBCheckBox20: TcxDBCheckBox
        Left = 219
        Top = 22
        Caption = 'Practicar Deporte'
        DataBinding.DataField = 'recreacion_1'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 0
        Transparent = True
        Width = 114
      end
      object cxDBCheckBox27: TcxDBCheckBox
        Left = 330
        Top = 22
        Caption = 'Ver TV'
        DataBinding.DataField = 'recreacion_2'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 1
        Transparent = True
        Width = 57
      end
      object cxDBCheckBox28: TcxDBCheckBox
        Left = 393
        Top = 22
        Caption = 'Ir al Cine'
        DataBinding.DataField = 'recreacion_3'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 2
        Transparent = True
        Width = 67
      end
      object cxDBCheckBox29: TcxDBCheckBox
        Left = 471
        Top = 22
        Caption = 'Visitar Familiares'
        DataBinding.DataField = 'recreacion_4'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 3
        Transparent = True
        Width = 106
      end
      object cxDBCheckBox30: TcxDBCheckBox
        Left = 582
        Top = 22
        Caption = 'Actividades al Aire Libre'
        DataBinding.DataField = 'recreacion_5'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 4
        Transparent = True
        Width = 143
      end
      object cxDBCheckBox31: TcxDBCheckBox
        Left = 727
        Top = 22
        Caption = 'Realizar quehaceres hogar'
        DataBinding.DataField = 'recreacion_6'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 5
        Transparent = True
        Width = 160
      end
      object cxDBTextEdit159: TcxDBTextEdit
        Left = 246
        Top = 47
        DataBinding.DataField = 'que_estudia'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 7
        Width = 600
      end
      object cxLabel277: TcxLabel
        Left = 132
        Top = 49
        Caption = 'Qu'#233' Estudia'
        Transparent = True
      end
      object cxDBTextEdit160: TcxDBTextEdit
        Left = 246
        Top = 69
        DataBinding.DataField = 'organizacion_familia'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 10
        Width = 600
      end
      object cxLabel278: TcxLabel
        Left = 27
        Top = 70
        Caption = 'Organizaci'#243'n y Funcionamiento de la Familia'
        Transparent = True
      end
      object cxDBTextEdit161: TcxDBTextEdit
        Left = 246
        Top = 91
        DataBinding.DataField = 'comunicacion'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 12
        Width = 600
      end
      object cxLabel279: TcxLabel
        Left = 27
        Top = 92
        Caption = 'Comunicaci'#243'n'
        Transparent = True
      end
      object cxDBTextEdit162: TcxDBTextEdit
        Left = 246
        Top = 113
        DataBinding.DataField = 'roles'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 14
        Width = 600
      end
      object cxLabel280: TcxLabel
        Left = 27
        Top = 114
        Caption = 'Roles'
        Transparent = True
      end
      object cxDBTextEdit163: TcxDBTextEdit
        Left = 246
        Top = 135
        DataBinding.DataField = 'autoridad'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 16
        Width = 600
      end
      object cxLabel281: TcxLabel
        Left = 27
        Top = 137
        Caption = 'Autoridad'
        Transparent = True
      end
      object cxDBTextEdit164: TcxDBTextEdit
        Left = 246
        Top = 157
        DataBinding.DataField = 'limites'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 18
        Width = 600
      end
      object cxLabel282: TcxLabel
        Left = 27
        Top = 159
        Caption = 'Limites'
        Transparent = True
      end
      object cxDBTextEdit165: TcxDBTextEdit
        Left = 246
        Top = 179
        DataBinding.DataField = 'calidad_vida'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 20
        Width = 600
      end
      object cxLabel283: TcxLabel
        Left = 27
        Top = 181
        Caption = 'Calidad de Vida'
        Transparent = True
      end
      object cxDBTextEdit166: TcxDBTextEdit
        Left = 246
        Top = 201
        DataBinding.DataField = 'imagen_publica'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 22
        Width = 600
      end
      object cxLabel284: TcxLabel
        Left = 27
        Top = 203
        Caption = 'Imagen P'#250'blica'
        Transparent = True
      end
      object cxDBTextEdit167: TcxDBTextEdit
        Left = 246
        Top = 223
        DataBinding.DataField = 'comportamiento_social'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 24
        Width = 600
      end
      object cxDBCheckBox32: TcxDBCheckBox
        Left = 27
        Top = 48
        Caption = 'Estudia'
        DataBinding.DataField = 'estudia'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 8
        Transparent = True
        Width = 66
      end
      object cxLabel286: TcxLabel
        Left = 27
        Top = 225
        Caption = 'Comportamiento Social'
        Transparent = True
      end
      object cxDBTextEdit168: TcxDBTextEdit
        Left = 246
        Top = 252
        DataBinding.DataField = 'observaciones'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 26
        Width = 600
      end
      object cxLabel287: TcxLabel
        Left = 27
        Top = 254
        Caption = 'Observaciones'
        Transparent = True
      end
      object cxDBTextEdit169: TcxDBTextEdit
        Left = 246
        Top = 280
        DataBinding.DataField = 'nombre_padre'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 28
        Width = 300
      end
      object cxLabel288: TcxLabel
        Left = 27
        Top = 282
        Caption = 'Nombre del Padre'
        Transparent = True
      end
      object cxDBTextEdit170: TcxDBTextEdit
        Left = 246
        Top = 302
        DataBinding.DataField = 'nombre_madre'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 30
        Width = 300
      end
      object cxLabel289: TcxLabel
        Left = 27
        Top = 304
        Caption = 'Nombre de la Madre'
        Transparent = True
      end
      object cxDBTextEdit171: TcxDBTextEdit
        Left = 246
        Top = 324
        DataBinding.DataField = 'nombre_conyugue'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 32
        Width = 300
      end
      object cxLabel290: TcxLabel
        Left = 27
        Top = 326
        Caption = 'Nombre del C'#243'nyugue'
        Transparent = True
      end
      object cxDBCurrencyEdit28: TcxDBCurrencyEdit
        Left = 633
        Top = 324
        DataBinding.DataField = 'numero_hijos'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = ',0'
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 33
        Width = 50
      end
      object cxLabel276: TcxLabel
        Left = 564
        Top = 326
        Caption = 'No de Hijos:'
        Transparent = True
      end
      object cxDBTextEdit158: TcxDBTextEdit
        Left = 245
        Top = 385
        DataBinding.DataField = 'depeco1_nombre'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 37
        Width = 300
      end
      object cxLabel291: TcxLabel
        Left = 198
        Top = 387
        Caption = 'Nombre'
        Transparent = True
      end
      object cxDBTextEdit172: TcxDBTextEdit
        Left = 646
        Top = 385
        DataBinding.DataField = 'depeco1_parentesco'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 38
        Width = 200
      end
      object cxLabel292: TcxLabel
        Left = 582
        Top = 386
        Caption = 'Parentesco'
        Transparent = True
      end
      object cxDBTextEdit173: TcxDBTextEdit
        Left = 245
        Top = 406
        DataBinding.DataField = 'depeco2_nombre'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 41
        Width = 300
      end
      object cxLabel293: TcxLabel
        Left = 198
        Top = 408
        Caption = 'Nombre'
        Transparent = True
      end
      object cxDBTextEdit174: TcxDBTextEdit
        Left = 646
        Top = 406
        DataBinding.DataField = 'depeco2_parentesco'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 42
        Width = 200
      end
      object cxLabel294: TcxLabel
        Left = 582
        Top = 407
        Caption = 'Parentesco'
        Transparent = True
      end
      object cxDBTextEdit175: TcxDBTextEdit
        Left = 245
        Top = 427
        DataBinding.DataField = 'depeco3_nombre'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 45
        Width = 300
      end
      object cxLabel295: TcxLabel
        Left = 198
        Top = 429
        Caption = 'Nombre'
        Transparent = True
      end
      object cxDBTextEdit176: TcxDBTextEdit
        Left = 646
        Top = 427
        DataBinding.DataField = 'depeco3_parentesco'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 46
        Width = 200
      end
      object cxLabel296: TcxLabel
        Left = 582
        Top = 428
        Caption = 'Parentesco'
        Transparent = True
      end
      object cxDBTextEdit177: TcxDBTextEdit
        Left = 245
        Top = 448
        DataBinding.DataField = 'depeco4_nombre'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 49
        Width = 300
      end
      object cxLabel297: TcxLabel
        Left = 198
        Top = 450
        Caption = 'Nombre'
        Transparent = True
      end
      object cxDBTextEdit178: TcxDBTextEdit
        Left = 646
        Top = 448
        DataBinding.DataField = 'depeco4_parentesco'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 50
        Width = 200
      end
      object cxLabel298: TcxLabel
        Left = 582
        Top = 449
        Caption = 'Parentesco'
        Transparent = True
      end
      object cxDBTextEdit179: TcxDBTextEdit
        Left = 245
        Top = 469
        DataBinding.DataField = 'depeco5_nombre'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 53
        Width = 300
      end
      object cxLabel299: TcxLabel
        Left = 198
        Top = 471
        Caption = 'Nombre'
        Transparent = True
      end
      object cxDBTextEdit180: TcxDBTextEdit
        Left = 646
        Top = 469
        DataBinding.DataField = 'depeco5_parentesco'
        DataBinding.DataSource = dmMain.dsEmpleadosSocioEconomicoEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 54
        Width = 200
      end
      object cxLabel300: TcxLabel
        Left = 582
        Top = 470
        Caption = 'Parentesco'
        Transparent = True
      end
      object cxLabel301: TcxLabel
        Left = 245
        Top = 361
        Caption = 'Dependientes Econ'#243'micos'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
    object cxTabSheet11: TcxTabSheet
      Caption = 'Empleos Anteriores'
      ImageIndex = 10
      object cxLabel145: TcxLabel
        Left = 24
        Top = 16
        AutoSize = False
        Caption = 'EMPLEO ANTERIOR 1'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 768
      end
      object cxLabel146: TcxLabel
        Left = 24
        Top = 38
        Caption = 'Empresa:'
        Transparent = True
      end
      object cxDBTextEdit89: TcxDBTextEdit
        Left = 120
        Top = 37
        DataBinding.DataField = 'RefTrabAnt1Empresa'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 1
        Width = 300
      end
      object cxLabel147: TcxLabel
        Left = 24
        Top = 60
        Caption = 'Direcci'#243'n:'
        Transparent = True
      end
      object cxDBTextEdit90: TcxDBTextEdit
        Left = 120
        Top = 59
        DataBinding.DataField = 'RefTrabAnt1Direccion'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 3
        Width = 300
      end
      object cxDBTextEdit91: TcxDBTextEdit
        Left = 492
        Top = 59
        DataBinding.DataField = 'RefTrabAnt1Ciudad'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 4
        Width = 300
      end
      object cxLabel148: TcxLabel
        Left = 445
        Top = 60
        Caption = 'Ciudad:'
        Transparent = True
      end
      object cxLabel149: TcxLabel
        Left = 24
        Top = 82
        Caption = 'Tel'#233'fono:'
        Transparent = True
      end
      object cxDBTextEdit92: TcxDBTextEdit
        Left = 120
        Top = 81
        DataBinding.DataField = 'RefTrabAnt1Telefono'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 7
        Width = 100
      end
      object cxLabel150: TcxLabel
        Left = 24
        Top = 104
        Caption = 'Ramo:'
        Transparent = True
      end
      object cxDBTextEdit93: TcxDBTextEdit
        Left = 120
        Top = 103
        DataBinding.DataField = 'RefTrabAnt1Ramo'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 9
        Width = 300
      end
      object cxDBTextEdit94: TcxDBTextEdit
        Left = 492
        Top = 103
        DataBinding.DataField = 'RefTrabAnt1Puesto'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 10
        Width = 300
      end
      object cxLabel151: TcxLabel
        Left = 445
        Top = 104
        Caption = 'Puesto:'
        Transparent = True
      end
      object cxLabel152: TcxLabel
        Left = 24
        Top = 126
        Caption = 'Duraci'#243'n:'
        Transparent = True
      end
      object cxDBTextEdit95: TcxDBTextEdit
        Left = 120
        Top = 125
        DataBinding.DataField = 'RefTrabAnt1Duracion'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 13
        Width = 150
      end
      object cxLabel153: TcxLabel
        Left = 296
        Top = 127
        Caption = 'Motivo Separaci'#243'n:'
        Transparent = True
      end
      object cxDBTextEdit96: TcxDBTextEdit
        Left = 392
        Top = 125
        DataBinding.DataField = 'RefTrabAnt1MotivoSeparacion'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 14
        Width = 400
      end
      object cxLabel154: TcxLabel
        Left = 24
        Top = 148
        Caption = 'Observaciones:'
        Transparent = True
      end
      object cxDBTextEdit97: TcxDBTextEdit
        Left = 120
        Top = 147
        DataBinding.DataField = 'RefTrabAnt1Observaciones'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 17
        Width = 672
      end
      object cxLabel155: TcxLabel
        Left = 24
        Top = 184
        AutoSize = False
        Caption = 'EMPLEO ANTERIOR 2'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 768
      end
      object cxLabel156: TcxLabel
        Left = 24
        Top = 206
        Caption = 'Empresa:'
        Transparent = True
      end
      object cxDBTextEdit98: TcxDBTextEdit
        Left = 120
        Top = 205
        DataBinding.DataField = 'RefTrabAnt2Empresa'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 20
        Width = 300
      end
      object cxLabel157: TcxLabel
        Left = 24
        Top = 228
        Caption = 'Direcci'#243'n:'
        Transparent = True
      end
      object cxDBTextEdit99: TcxDBTextEdit
        Left = 120
        Top = 227
        DataBinding.DataField = 'RefTrabAnt2Direccion'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 22
        Width = 300
      end
      object cxDBTextEdit100: TcxDBTextEdit
        Left = 492
        Top = 227
        DataBinding.DataField = 'RefTrabAnt2Ciudad'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 23
        Width = 300
      end
      object cxLabel158: TcxLabel
        Left = 445
        Top = 228
        Caption = 'Ciudad:'
        Transparent = True
      end
      object cxLabel159: TcxLabel
        Left = 24
        Top = 250
        Caption = 'Tel'#233'fono:'
        Transparent = True
      end
      object cxDBTextEdit101: TcxDBTextEdit
        Left = 120
        Top = 249
        DataBinding.DataField = 'RefTrabAnt2Telefono'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 26
        Width = 100
      end
      object cxLabel160: TcxLabel
        Left = 24
        Top = 272
        Caption = 'Ramo:'
        Transparent = True
      end
      object cxDBTextEdit102: TcxDBTextEdit
        Left = 120
        Top = 271
        DataBinding.DataField = 'RefTrabAnt2Ramo'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 28
        Width = 300
      end
      object cxDBTextEdit103: TcxDBTextEdit
        Left = 492
        Top = 271
        DataBinding.DataField = 'RefTrabAnt2Puesto'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 29
        Width = 300
      end
      object cxLabel161: TcxLabel
        Left = 445
        Top = 272
        Caption = 'Puesto:'
        Transparent = True
      end
      object cxLabel162: TcxLabel
        Left = 24
        Top = 294
        Caption = 'Duraci'#243'n:'
        Transparent = True
      end
      object cxDBTextEdit104: TcxDBTextEdit
        Left = 120
        Top = 293
        DataBinding.DataField = 'RefTrabAnt2Duracion'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 32
        Width = 150
      end
      object cxLabel163: TcxLabel
        Left = 296
        Top = 295
        Caption = 'Motivo Separaci'#243'n:'
        Transparent = True
      end
      object cxDBTextEdit105: TcxDBTextEdit
        Left = 392
        Top = 293
        DataBinding.DataField = 'RefTrabAnt2MotivoSeparacion'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 33
        Width = 400
      end
      object cxLabel164: TcxLabel
        Left = 24
        Top = 316
        Caption = 'Observaciones:'
        Transparent = True
      end
      object cxDBTextEdit106: TcxDBTextEdit
        Left = 120
        Top = 315
        DataBinding.DataField = 'RefTrabAnt2Observaciones'
        DataBinding.DataSource = dmMain.dsEmpleadosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 36
        Width = 672
      end
    end
    object cxTabSheet12: TcxTabSheet
      Caption = 'Capacitaci'#243'n'
      ImageIndex = 11
      object cxLabel198: TcxLabel
        Left = 24
        Top = 16
        AutoSize = False
        Caption = 'CURSO 1'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 812
      end
      object cxLabel199: TcxLabel
        Left = 24
        Top = 38
        Caption = 'Instituci'#243'n o Empresa:'
        Transparent = True
      end
      object cxDBTextEdit127: TcxDBTextEdit
        Left = 141
        Top = 37
        DataBinding.DataField = 'institucion1'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 1
        Width = 300
      end
      object cxLabel200: TcxLabel
        Left = 447
        Top = 39
        Caption = 'Estudio o Curso:'
        Transparent = True
      end
      object cxDBTextEdit128: TcxDBTextEdit
        Left = 536
        Top = 37
        DataBinding.DataField = 'curso1'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 2
        Width = 300
      end
      object cxDBRadioGroup27: TcxDBRadioGroup
        Left = 141
        Top = 82
        Caption = 'El curso fu'#233':'
        DataBinding.DataField = 'rol1'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentBackground = False
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'Impartido'
            Value = 0
          end
          item
            Caption = 'Recibido'
            Value = 1
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 7
        Height = 48
        Width = 168
      end
      object cxLabel201: TcxLabel
        Left = 24
        Top = 61
        Caption = 'Tipo de Curso:'
        Transparent = True
      end
      object cxDBLookupComboBox20: TcxDBLookupComboBox
        Left = 141
        Top = 59
        DataBinding.DataField = 'id_tipo_curso1'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'id_tipo_curso'
        Properties.ListColumns = <
          item
            MinWidth = 350
            Width = 350
            FieldName = 'descripcion_tipo_curso'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsTiposCurso
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 5
        Width = 350
      end
      object cxDBRadioGroup28: TcxDBRadioGroup
        Left = 315
        Top = 82
        Caption = 'Eficiencia'
        DataBinding.DataField = 'eficiencia1'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentBackground = False
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'Inconcluso'
            Value = 0
          end
          item
            Caption = 'Concluido'
            Value = 1
          end
          item
            Caption = 'Cursando'
            Value = 2
          end
          item
            Caption = 'Solicitud'
            Value = 3
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 8
        Height = 48
        Width = 322
      end
      object cxLabel202: TcxLabel
        Left = 24
        Top = 134
        Caption = 'Fecha Inicio:'
        Transparent = True
      end
      object cxDBDateEdit24: TcxDBDateEdit
        Left = 141
        Top = 132
        DataBinding.DataField = 'inicio1'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 9
        Width = 100
      end
      object cxLabel203: TcxLabel
        Left = 252
        Top = 134
        Caption = 'Fecha Fin:'
        Transparent = True
      end
      object cxDBDateEdit25: TcxDBDateEdit
        Left = 315
        Top = 132
        DataBinding.DataField = 'fin1'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 10
        Width = 100
      end
      object cxDBTextEdit129: TcxDBTextEdit
        Left = 524
        Top = 132
        DataBinding.DataField = 'horas1'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 11
        Width = 50
      end
      object cxLabel204: TcxLabel
        Left = 428
        Top = 134
        Caption = 'Duraci'#243'n (horas):'
        Transparent = True
      end
      object cxLabel205: TcxLabel
        Left = 24
        Top = 172
        AutoSize = False
        Caption = 'CURSO 2'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 812
      end
      object cxLabel206: TcxLabel
        Left = 24
        Top = 194
        Caption = 'Instituci'#243'n o Empresa:'
        Transparent = True
      end
      object cxDBTextEdit130: TcxDBTextEdit
        Left = 141
        Top = 193
        DataBinding.DataField = 'institucion2'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 16
        Width = 300
      end
      object cxLabel207: TcxLabel
        Left = 447
        Top = 195
        Caption = 'Estudio o Curso:'
        Transparent = True
      end
      object cxDBTextEdit131: TcxDBTextEdit
        Left = 536
        Top = 193
        DataBinding.DataField = 'curso2'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 17
        Width = 300
      end
      object cxDBRadioGroup29: TcxDBRadioGroup
        Left = 141
        Top = 238
        Caption = 'El curso fu'#233':'
        DataBinding.DataField = 'rol2'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentBackground = False
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'Impartido'
            Value = 0
          end
          item
            Caption = 'Recibido'
            Value = 1
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 22
        Height = 48
        Width = 168
      end
      object cxLabel208: TcxLabel
        Left = 24
        Top = 217
        Caption = 'Tipo de Curso:'
        Transparent = True
      end
      object cxDBLookupComboBox21: TcxDBLookupComboBox
        Left = 141
        Top = 215
        DataBinding.DataField = 'id_tipo_curso2'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'id_tipo_curso'
        Properties.ListColumns = <
          item
            MinWidth = 350
            Width = 350
            FieldName = 'descripcion_tipo_curso'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsTiposCurso
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 20
        Width = 350
      end
      object cxDBRadioGroup30: TcxDBRadioGroup
        Left = 315
        Top = 238
        Caption = 'Eficiencia'
        DataBinding.DataField = 'eficiencia2'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentBackground = False
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'Inconcluso'
            Value = 0
          end
          item
            Caption = 'Concluido'
            Value = 1
          end
          item
            Caption = 'Cursando'
            Value = 2
          end
          item
            Caption = 'Solicitud'
            Value = 3
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 23
        Height = 48
        Width = 322
      end
      object cxLabel209: TcxLabel
        Left = 24
        Top = 290
        Caption = 'Fecha Inicio:'
        Transparent = True
      end
      object cxDBDateEdit26: TcxDBDateEdit
        Left = 141
        Top = 288
        DataBinding.DataField = 'inicio2'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 24
        Width = 100
      end
      object cxLabel210: TcxLabel
        Left = 252
        Top = 290
        Caption = 'Fecha Fin:'
        Transparent = True
      end
      object cxDBDateEdit27: TcxDBDateEdit
        Left = 315
        Top = 288
        DataBinding.DataField = 'fin2'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 25
        Width = 100
      end
      object cxDBTextEdit132: TcxDBTextEdit
        Left = 524
        Top = 288
        DataBinding.DataField = 'horas2'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 26
        Width = 50
      end
      object cxLabel211: TcxLabel
        Left = 428
        Top = 290
        Caption = 'Duraci'#243'n (horas):'
        Transparent = True
      end
      object cxDBDateEdit28: TcxDBDateEdit
        Left = 141
        Top = 448
        DataBinding.DataField = 'inicio3'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 36
        Width = 100
      end
      object cxLabel212: TcxLabel
        Left = 428
        Top = 450
        Caption = 'Duraci'#243'n (horas):'
        Transparent = True
      end
      object cxDBTextEdit133: TcxDBTextEdit
        Left = 524
        Top = 448
        DataBinding.DataField = 'horas3'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 41
        Width = 50
      end
      object cxDBDateEdit29: TcxDBDateEdit
        Left = 315
        Top = 448
        DataBinding.DataField = 'fin3'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 37
        Width = 100
      end
      object cxLabel213: TcxLabel
        Left = 252
        Top = 450
        Caption = 'Fecha Fin:'
        Transparent = True
      end
      object cxLabel214: TcxLabel
        Left = 24
        Top = 450
        Caption = 'Fecha Inicio:'
        Transparent = True
      end
      object cxDBRadioGroup31: TcxDBRadioGroup
        Left = 315
        Top = 398
        Caption = 'Eficiencia'
        DataBinding.DataField = 'eficiencia3'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentBackground = False
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'Inconcluso'
            Value = 0
          end
          item
            Caption = 'Concluido'
            Value = 1
          end
          item
            Caption = 'Cursando'
            Value = 2
          end
          item
            Caption = 'Solicitud'
            Value = 3
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 34
        Height = 48
        Width = 322
      end
      object cxDBLookupComboBox22: TcxDBLookupComboBox
        Left = 141
        Top = 375
        DataBinding.DataField = 'id_tipo_curso3'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'id_tipo_curso'
        Properties.ListColumns = <
          item
            MinWidth = 350
            Width = 350
            FieldName = 'descripcion_tipo_curso'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmMain.dsTiposCurso
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 32
        Width = 350
      end
      object cxLabel215: TcxLabel
        Left = 24
        Top = 377
        Caption = 'Tipo de Curso:'
        Transparent = True
      end
      object cxDBRadioGroup32: TcxDBRadioGroup
        Left = 141
        Top = 398
        Caption = 'El curso fu'#233':'
        DataBinding.DataField = 'rol3'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentBackground = False
        ParentFont = False
        Properties.Columns = 4
        Properties.DefaultValue = '0'
        Properties.Items = <
          item
            Caption = 'Impartido'
            Value = 0
          end
          item
            Caption = 'Recibido'
            Value = 1
          end>
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 33
        Height = 48
        Width = 168
      end
      object cxDBTextEdit134: TcxDBTextEdit
        Left = 536
        Top = 353
        DataBinding.DataField = 'curso3'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 31
        Width = 300
      end
      object cxLabel216: TcxLabel
        Left = 447
        Top = 355
        Caption = 'Estudio o Curso:'
        Transparent = True
      end
      object cxDBTextEdit135: TcxDBTextEdit
        Left = 141
        Top = 353
        DataBinding.DataField = 'institucion3'
        DataBinding.DataSource = dmMain.dsEmpleadosCursosEdit
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 30
        Width = 300
      end
      object cxLabel217: TcxLabel
        Left = 24
        Top = 354
        Caption = 'Instituci'#243'n o Empresa:'
        Transparent = True
      end
      object cxLabel218: TcxLabel
        Left = 24
        Top = 332
        AutoSize = False
        Caption = 'CURSO 3'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 812
      end
    end
  end
  object ActionList1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 456
    Top = 8
    object actGuardar: TAction
      Caption = 'Guardar [F2]'
      ImageIndex = 6
      ShortCut = 113
      OnExecute = actGuardarExecute
    end
    object actCerrar: TAction
      Caption = 'Cerrar'
      ImageIndex = 15
      OnExecute = actCerrarExecute
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.pdf'
    Filter = 'Archivos PDF|*.pdf'
    Title = 'Seleccionar CURP'
    Left = 800
    Top = 264
  end
end

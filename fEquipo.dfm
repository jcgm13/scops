object frmEquipo: TfrmEquipo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Equipo'
  ClientHeight = 572
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Tag = 1
    Left = 0
    Top = 536
    Width = 555
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 41
    object cxButton4: TcxButton
      Tag = 1
      Left = 351
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
      Tag = 1
      Left = 451
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
  end
  object Label1: TcxLabel
    Left = 23
    Top = 33
    Caption = 'Equipo'
    Transparent = True
  end
  object xequipo_id: TcxDBTextEdit
    Tag = 1
    Left = 119
    Top = 31
    DataBinding.DataField = 'equipo_id'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    Enabled = False
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.CharCase = ecUpperCase
    Properties.UseLeftAlignmentOnEditing = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 0
    Width = 75
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox
    Tag = 1
    Left = 119
    Top = 54
    DataBinding.DataField = 'empresa_id'
    DataBinding.DataSource = dmMain.dsEquipoEdit
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
    TabOrder = 1
    Width = 400
  end
  object cxLabel1: TcxLabel
    Left = 23
    Top = 56
    Caption = 'Empresa:'
    Transparent = True
  end
  object cxLabel20: TcxLabel
    Left = 23
    Top = 76
    Caption = 'Tipo:'
    Transparent = True
  end
  object cxDBTextEdit5: TcxDBTextEdit
    Left = 119
    Top = 75
    DataBinding.DataField = 'tipo'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 2
    Width = 200
  end
  object cxLabel2: TcxLabel
    Left = 23
    Top = 96
    Caption = 'Descripci'#243'n:'
    Transparent = True
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 119
    Top = 95
    DataBinding.DataField = 'descripcion'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 3
    Width = 400
  end
  object cxLabel3: TcxLabel
    Left = 23
    Top = 116
    Caption = 'Marca:'
    Transparent = True
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 119
    Top = 115
    DataBinding.DataField = 'marca'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 4
    Width = 200
  end
  object cxLabel4: TcxLabel
    Left = 23
    Top = 136
    Caption = 'Modelo:'
    Transparent = True
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 119
    Top = 135
    DataBinding.DataField = 'modelo'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 6
    Width = 200
  end
  object cxLabel5: TcxLabel
    Left = 23
    Top = 176
    Caption = 'Nombre'
    Transparent = True
  end
  object cxDBTextEdit4: TcxDBTextEdit
    Left = 119
    Top = 175
    DataBinding.DataField = 'proveedor_nombre'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 9
    Width = 400
  end
  object cxLabel6: TcxLabel
    Left = 23
    Top = 196
    Caption = 'Domicilio:'
    Transparent = True
  end
  object cxDBTextEdit6: TcxDBTextEdit
    Left = 119
    Top = 195
    DataBinding.DataField = 'proveedor_domicilio'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 11
    Width = 400
  end
  object cxLabel7: TcxLabel
    Left = 23
    Top = 216
    Caption = 'Tel'#233'fono 1:'
    Transparent = True
  end
  object cxDBTextEdit7: TcxDBTextEdit
    Left = 119
    Top = 215
    DataBinding.DataField = 'proveedor_tel1'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 13
    Width = 100
  end
  object cxLabel8: TcxLabel
    Left = 23
    Top = 236
    Caption = 'Tel'#233'fono 2:'
    Transparent = True
  end
  object cxDBTextEdit8: TcxDBTextEdit
    Left = 119
    Top = 235
    DataBinding.DataField = 'proveedor_tel2'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 15
    Width = 100
  end
  object cxLabel9: TcxLabel
    Left = 23
    Top = 256
    Caption = 'Email:'
    Transparent = True
  end
  object cxDBTextEdit9: TcxDBTextEdit
    Left = 119
    Top = 255
    DataBinding.DataField = 'proveedor_email'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 17
    Width = 150
  end
  object cxLabel10: TcxLabel
    Left = 23
    Top = 276
    Caption = 'P'#225'gina Web:'
    Transparent = True
  end
  object cxDBTextEdit10: TcxDBTextEdit
    Left = 119
    Top = 275
    DataBinding.DataField = 'proveedor_web'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 19
    Width = 200
  end
  object cxLabel11: TcxLabel
    Left = 23
    Top = 304
    Caption = 'Talla:'
    Transparent = True
  end
  object cxDBTextEdit11: TcxDBTextEdit
    Left = 119
    Top = 303
    DataBinding.DataField = 'talla'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 21
    Width = 50
  end
  object cxLabel12: TcxLabel
    Left = 23
    Top = 324
    Caption = 'Color:'
    Transparent = True
  end
  object cxDBTextEdit12: TcxDBTextEdit
    Left = 119
    Top = 323
    DataBinding.DataField = 'color'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 23
    Width = 150
  end
  object cxLabel13: TcxLabel
    Left = 23
    Top = 344
    Caption = 'Serie:'
    Transparent = True
  end
  object cxDBTextEdit13: TcxDBTextEdit
    Left = 119
    Top = 343
    DataBinding.DataField = 'serie'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 25
    Width = 200
  end
  object cxLabel14: TcxLabel
    Left = 23
    Top = 364
    Caption = 'Material:'
    Transparent = True
  end
  object cxDBTextEdit14: TcxDBTextEdit
    Left = 119
    Top = 363
    DataBinding.DataField = 'material'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 27
    Width = 200
  end
  object cxLabel192: TcxLabel
    Left = 23
    Top = 159
    AutoSize = False
    Caption = 'Proveedor'
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
    Width = 496
  end
  object cxLabel72: TcxLabel
    Left = 23
    Top = 385
    Caption = 'Costo:'
    Transparent = True
  end
  object cxDBCurrencyEdit1: TcxDBCurrencyEdit
    Left = 119
    Top = 383
    DataBinding.DataField = 'costo'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = ',0.00'
    Properties.UseLeftAlignmentOnEditing = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 29
    Width = 100
  end
  object cxLabel15: TcxLabel
    Left = 23
    Top = 405
    Caption = 'Existencia:'
    Transparent = True
  end
  object cxDBCurrencyEdit2: TcxDBCurrencyEdit
    Left = 119
    Top = 403
    DataBinding.DataField = 'existencia'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DecimalPlaces = 0
    Properties.DisplayFormat = ',0'
    Properties.UseLeftAlignmentOnEditing = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 31
    Width = 50
  end
  object cxLabel16: TcxLabel
    Left = 23
    Top = 424
    Caption = 'Estado:'
    Transparent = True
  end
  object cxDBTextEdit15: TcxDBTextEdit
    Left = 119
    Top = 423
    DataBinding.DataField = 'estado'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 33
    Width = 200
  end
  object cxLabel84: TcxLabel
    Left = 23
    Top = 443
    Caption = 'Observaciones:'
    Transparent = True
  end
  object cxDBMemo2: TcxDBMemo
    Left = 119
    Top = 443
    DataBinding.DataField = 'observaciones'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ScrollBars = ssVertical
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 36
    Height = 85
    Width = 400
  end
  object xActivo: TcxDBImageComboBox
    Left = 420
    Top = 31
    DataBinding.DataField = 'activo'
    DataBinding.DataSource = dmMain.dsEquipoEdit
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
    Properties.ReadOnly = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 42
    Width = 99
  end
  object ActionList1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 328
    Top = 12
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
end

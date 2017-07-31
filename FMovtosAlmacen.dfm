object frmMovtosAlmacen: TfrmMovtosAlmacen
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimientos de Almac'#233'n'
  ClientHeight = 515
  ClientWidth = 744
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
  object pnl1: TPanel
    Tag = 1
    Left = 0
    Top = 479
    Width = 744
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 0
    object cxButton4: TcxButton
      Tag = 1
      Left = 540
      Top = 4
      Width = 100
      Height = 28
      Align = alRight
      Action = actGuardar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 0
    end
    object cxButton5: TcxButton
      Tag = 1
      Left = 640
      Top = 4
      Width = 100
      Height = 28
      Align = alRight
      Action = actCerrar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 1
    end
  end
  object Label1: TcxLabel
    Left = 23
    Top = 33
    Caption = 'Movimiento'
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
    TabOrder = 2
    Width = 75
  end
  object xActivo: TcxDBImageComboBox
    Left = 548
    Top = 30
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
    TabOrder = 3
    Width = 99
  end
  object cxLabel1: TcxLabel
    Left = 23
    Top = 56
    Caption = 'Empresa:'
    Transparent = True
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
    TabOrder = 5
    Width = 400
  end
  object cxLabel20: TcxLabel
    Left = 23
    Top = 76
    Caption = 'Tipo:'
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 23
    Top = 154
    Caption = 'Buscar Equipo:'
    Style.TextStyle = [fsBold]
    Transparent = True
  end
  object cxGrid1: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 180
    Width = 738
    Height = 299
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 10
    LookAndFeel.SkinName = 'Office2016Colorful'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0'
          Kind = skSum
          Column = cxGrid1DBTableView1ColCantidad
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1ColCosto
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ScrollBars = ssVertical
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ColId: TcxGridDBColumn
        MinWidth = 0
        Width = 0
      end
      object cxGrid1DBTableView1ColTipo: TcxGridDBColumn
        Caption = 'Tipo'
        Width = 200
      end
      object cxGrid1DBTableView1ColDescripcion: TcxGridDBColumn
        Caption = 'Descripci'#243'n'
        Width = 300
      end
      object cxGrid1DBTableView1ColCantidad: TcxGridDBColumn
        Caption = 'Cantidad'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = ',0'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taRightJustify
        Width = 100
      end
      object cxGrid1DBTableView1ColCosto: TcxGridDBColumn
        Caption = 'Costo'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        Properties.EditFormat = ',0.00'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taRightJustify
        Width = 120
      end
      object cxGrid1DBTableView1ColButton: TcxGridDBColumn
        Caption = 'Eliminar'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 24
            Kind = bkGlyph
          end>
        Properties.Images = frmPrincipal.imgListAcciones
        Properties.ViewStyle = vsButtonsAutoWidth
        HeaderAlignmentHorz = taCenter
        MinWidth = 45
        Options.Editing = False
        Width = 45
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxLabel3: TcxLabel
    Left = 23
    Top = 99
    Caption = 'Proveedor:'
    Transparent = True
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 119
    Top = 97
    DataBinding.DataField = 'tipo'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 12
    Width = 400
  end
  object cxDBDateEdit1: TcxDBDateEdit
    Left = 421
    Top = 30
    Properties.DateButtons = [btnToday]
    Properties.DateOnError = deToday
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 13
    Width = 100
  end
  object cxLabel4: TcxLabel
    Left = 379
    Top = 32
    Caption = 'Fecha'
    Transparent = True
  end
  object cxDBTextEdit5: TcxDBComboBox
    Left = 119
    Top = 75
    DataBinding.DataField = 'tipo'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      'ENTRADA'
      'SALIDA')
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 7
    Width = 120
  end
  object cxDBTextEdit1: TcxButtonEdit
    Left = 119
    Top = 153
    ParentFont = False
    Properties.Buttons = <
      item
        Default = True
        ImageIndex = 90
        Kind = bkGlyph
      end>
    Properties.Images = frmPrincipal.imgListAcciones
    TabOrder = 9
    Text = 'cxDBTextEdit1'
    Width = 300
  end
  object cxLabel5: TcxLabel
    Left = 23
    Top = 121
    Caption = 'Referencia:'
    Transparent = True
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 119
    Top = 120
    DataBinding.DataField = 'tipo'
    DataBinding.DataSource = dmMain.dsEquipoEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 16
    Width = 400
  end
  object actlst1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 552
    Top = 108
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
    object actAgregarEquipo: TAction
      Caption = 'Agregar Equipo'
      ImageIndex = 1
      OnExecute = actAgregarEquipoExecute
    end
    object actEliminarEquipo: TAction
      Caption = 'Eliminar Equipo'
      ImageIndex = 24
      OnExecute = actEliminarEquipoExecute
    end
  end
end

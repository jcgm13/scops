object frmVehiculosCombustible: TfrmVehiculosCombustible
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Veh'#237'culos - Combustible'
  ClientHeight = 380
  ClientWidth = 478
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ScreenSnap = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Tag = 1
    Left = 0
    Top = 344
    Width = 478
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 22
    object cxButton4: TcxButton
      Left = 274
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
      Left = 374
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
  object cxLabel1: TcxLabel
    Left = 36
    Top = 66
    Caption = 'Marca'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object cxLabel2: TcxLabel
    Left = 36
    Top = 86
    Caption = 'Modelo'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object edMarca: TcxTextEdit
    Tag = 1
    Left = 125
    Top = 65
    Enabled = False
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 1
    Text = 'edMarca'
    Width = 300
  end
  object edModelo: TcxTextEdit
    Tag = 1
    Left = 125
    Top = 85
    Enabled = False
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 2
    Text = 'edModelo'
    Width = 200
  end
  object cxLabel3: TcxLabel
    Left = 36
    Top = 46
    Caption = 'Veh'#237'culo'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object cxLabel4: TcxLabel
    Left = 36
    Top = 106
    Caption = 'Color'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object edColor: TcxTextEdit
    Tag = 1
    Left = 125
    Top = 105
    Enabled = False
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 3
    Text = 'edFuncion'
    Width = 200
  end
  object xvehiculo: TcxDBTextEdit
    Tag = 1
    Left = 125
    Top = 45
    DataBinding.DataField = 'vehiculo_id'
    DataBinding.DataSource = dmMain.dsVehiculosCombustibleEdit
    Enabled = False
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 0
    Width = 75
  end
  object cxLabel100: TcxLabel
    Left = 36
    Top = 146
    AutoSize = False
    Caption = 'Carga de Combustible'
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
    Width = 389
  end
  object cxLabel5: TcxLabel
    Left = 36
    Top = 23
    AutoSize = False
    Caption = 'Datos del Veh'#237'culo'
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
    Width = 381
  end
  object cxLabel185: TcxLabel
    Left = 36
    Top = 171
    Caption = 'Fecha:'
    Transparent = True
  end
  object cxDBDateEdit23: TcxDBDateEdit
    Left = 125
    Top = 170
    DataBinding.DataField = 'fecha'
    DataBinding.DataSource = dmMain.dsVehiculosCombustibleEdit
    ParentFont = False
    Properties.DateButtons = [btnToday]
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 6
    Width = 100
  end
  object cxLabel62: TcxLabel
    Left = 36
    Top = 195
    Caption = 'Kilometraje:'
    Transparent = True
  end
  object cxCurrencyEdit2: TcxDBCurrencyEdit
    Left = 125
    Top = 193
    DataBinding.DataField = 'kilometraje'
    DataBinding.DataSource = dmMain.dsVehiculosCombustibleEdit
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DecimalPlaces = 0
    Properties.DisplayFormat = ',0'
    Properties.UseLeftAlignmentOnEditing = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 8
    Width = 60
  end
  object cxDBImageComboBox1: TcxDBImageComboBox
    Left = 125
    Top = 216
    DataBinding.DataField = 'tipo_combustible'
    DataBinding.DataSource = dmMain.dsVehiculosCombustibleEdit
    ParentFont = False
    Properties.Alignment.Horz = taLeftJustify
    Properties.Items = <
      item
        Description = 'MAGNA'
        ImageIndex = 0
        Value = 1
      end
      item
        Description = 'PREMIUM'
        Value = 2
      end
      item
        Description = 'DIESEL'
        Value = 3
      end
      item
        Description = 'GAS'
        Value = 4
      end
      item
        Description = 'OTRO'
        Value = 5
      end>
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 10
    Width = 100
  end
  object cxLabel6: TcxLabel
    Left = 36
    Top = 218
    Caption = 'Tipo Combustible:'
    Transparent = True
  end
  object cxLabel7: TcxLabel
    Left = 36
    Top = 243
    Caption = 'Litros:'
    Transparent = True
  end
  object cxDBCurrencyEdit1: TcxDBCurrencyEdit
    Left = 125
    Top = 241
    DataBinding.DataField = 'litros'
    DataBinding.DataSource = dmMain.dsVehiculosCombustibleEdit
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DecimalPlaces = 0
    Properties.DisplayFormat = ',0'
    Properties.UseLeftAlignmentOnEditing = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 12
    Width = 75
  end
  object cxDBCurrencyEdit2: TcxDBCurrencyEdit
    Left = 125
    Top = 265
    DataBinding.DataField = 'cantidad'
    DataBinding.DataSource = dmMain.dsVehiculosCombustibleEdit
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DecimalPlaces = 2
    Properties.DisplayFormat = ',0.00'
    Properties.UseLeftAlignmentOnEditing = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 14
    Width = 75
  end
  object cxLabel8: TcxLabel
    Left = 36
    Top = 267
    Caption = 'Cantidad:'
    Transparent = True
  end
  object cxLabel9: TcxLabel
    Left = 36
    Top = 291
    Caption = 'Gasoliner'#237'a'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object cxTextEdit1: TcxDBTextEdit
    Left = 125
    Top = 289
    DataBinding.DataField = 'gasolineria'
    DataBinding.DataSource = dmMain.dsVehiculosCombustibleEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 16
    Width = 300
  end
  object ActionList1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 288
    Top = 172
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

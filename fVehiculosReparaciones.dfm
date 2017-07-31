object frmVehiculosReparaciones: TfrmVehiculosReparaciones
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Veh'#237'culos - Reparaciones'
  ClientHeight = 433
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
    Top = 397
    Width = 478
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 24
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
    TabOrder = 2
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
    TabOrder = 4
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
    TabOrder = 6
    Text = 'edFuncion'
    Width = 200
  end
  object xvehiculo: TcxDBTextEdit
    Tag = 1
    Left = 125
    Top = 45
    DataBinding.DataField = 'vehiculo_id'
    DataBinding.DataSource = dmMain.dsVehiculosReparacionesEdit
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
    Caption = 'Reparaci'#243'n / Mantenimiento'
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
    Top = 172
    Caption = 'Fecha Entrada:'
    Transparent = True
  end
  object cxDBDateEdit23: TcxDBDateEdit
    Left = 125
    Top = 170
    DataBinding.DataField = 'fecha_entrada'
    DataBinding.DataSource = dmMain.dsVehiculosReparacionesEdit
    ParentFont = False
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 9
    Width = 100
  end
  object cxLabel62: TcxLabel
    Left = 36
    Top = 219
    Caption = 'Kilometraje:'
    Transparent = True
  end
  object cxCurrencyEdit2: TcxDBCurrencyEdit
    Left = 125
    Top = 217
    DataBinding.DataField = 'kilometraje'
    DataBinding.DataSource = dmMain.dsVehiculosReparacionesEdit
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DecimalPlaces = 0
    Properties.DisplayFormat = ',0'
    Properties.UseLeftAlignmentOnEditing = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 13
    Width = 60
  end
  object cxDBCurrencyEdit2: TcxDBCurrencyEdit
    Left = 125
    Top = 265
    DataBinding.DataField = 'costo'
    DataBinding.DataSource = dmMain.dsVehiculosReparacionesEdit
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DecimalPlaces = 2
    Properties.DisplayFormat = ',0.00'
    Properties.UseLeftAlignmentOnEditing = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 17
    Width = 75
  end
  object cxLabel8: TcxLabel
    Left = 36
    Top = 267
    Caption = 'Costo:'
    Transparent = True
  end
  object cxLabel9: TcxLabel
    Left = 36
    Top = 243
    Caption = 'Descripci'#243'n:'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    Transparent = True
  end
  object cxTextEdit1: TcxDBTextEdit
    Left = 125
    Top = 241
    DataBinding.DataField = 'descripcion'
    DataBinding.DataSource = dmMain.dsVehiculosReparacionesEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 15
    Width = 300
  end
  object cxLabel10: TcxLabel
    Left = 36
    Top = 196
    Caption = 'Fecha Salida:'
    Transparent = True
  end
  object cxDBDateEdit1: TcxDBDateEdit
    Left = 125
    Top = 194
    DataBinding.DataField = 'fecha_salida'
    DataBinding.DataSource = dmMain.dsVehiculosReparacionesEdit
    ParentFont = False
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 11
    Width = 100
  end
  object cxLabel6: TcxLabel
    Left = 36
    Top = 291
    Caption = 'Taller:'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    Transparent = True
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 125
    Top = 289
    DataBinding.DataField = 'taller'
    DataBinding.DataSource = dmMain.dsVehiculosReparacionesEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 19
    Width = 300
  end
  object cxDBMemo1: TcxDBMemo
    Left = 125
    Top = 316
    DataBinding.DataField = 'detalle'
    DataBinding.DataSource = dmMain.dsVehiculosReparacionesEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ScrollBars = ssVertical
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 21
    Height = 69
    Width = 300
  end
  object cxLabel7: TcxLabel
    Left = 35
    Top = 317
    AutoSize = False
    Caption = 'Detalle de la reparaci'#243'n:'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    Properties.WordWrap = True
    Transparent = True
    Height = 32
    Width = 79
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

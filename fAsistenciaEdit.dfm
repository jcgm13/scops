object frmAsistenciaEdit: TfrmAsistenciaEdit
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Modificar Asistencia'
  ClientHeight = 423
  ClientWidth = 469
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Empleado: TcxLabel
    Left = 36
    Top = 74
    Caption = 'Empleado'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object cxLabel1: TcxLabel
    Left = 36
    Top = 94
    Caption = 'Servicio'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object cxLabel2: TcxLabel
    Left = 36
    Top = 114
    Caption = 'Funci'#243'n'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object Panel1: TPanel
    Left = 0
    Top = 387
    Width = 469
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 6
    object cxButton4: TcxButton
      Left = 265
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
      Left = 365
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
  object edEntrada: TcxTimeEdit
    Left = 117
    Top = 212
    EditValue = 0d
    ParentFont = False
    Properties.TimeFormat = tfHourMin
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.StyleController = frmPrincipal.cxEditStyleController1
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 80
  end
  object lblEntrada: TcxLabel
    Left = 36
    Top = 214
    Caption = 'Entrada'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.StyleController = frmPrincipal.cxEditStyleController1
    Style.TextColor = clBlack
    Style.IsFontAssigned = True
  end
  object edSalida: TcxTimeEdit
    Left = 117
    Top = 240
    EditValue = 0d
    ParentFont = False
    Properties.TimeFormat = tfHourMin
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.StyleController = frmPrincipal.cxEditStyleController1
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 80
  end
  object lblSalida: TcxLabel
    Left = 36
    Top = 242
    Caption = 'Salida'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.StyleController = frmPrincipal.cxEditStyleController1
    Style.TextColor = clBlack
    Style.IsFontAssigned = True
  end
  object cxLabel7: TcxLabel
    Left = 36
    Top = 282
    Caption = 'Observaciones'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object edServicio: TcxTextEdit
    Left = 117
    Top = 92
    Enabled = False
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 8
    Text = 'edServicio'
    Width = 300
  end
  object edFuncion: TcxTextEdit
    Left = 117
    Top = 112
    Enabled = False
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 10
    Text = 'edFuncion'
    Width = 200
  end
  object edEmpleado: TcxButtonEdit
    Left = 117
    Top = 72
    ParentFont = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ReadOnly = True
    Properties.OnButtonClick = edEmpleadoPropertiesButtonClick
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 0
    Text = 'edEmpleado'
    Width = 300
  end
  object edObservaciones: TcxMemo
    Left = 117
    Top = 282
    Lines.Strings = (
      'EDOBSERVACIONES')
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ScrollBars = ssVertical
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 5
    Height = 89
    Width = 300
  end
  object lblHorasExtra: TcxLabel
    Left = 243
    Top = 243
    Caption = 'Horas Extras:'
    Transparent = True
  end
  object edHorasExtra: TcxCurrencyEdit
    Left = 324
    Top = 241
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DecimalPlaces = 0
    Properties.DisplayFormat = ',0'
    Properties.UseLeftAlignmentOnEditing = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 4
    Width = 50
  end
  object pnlFecha: TPanel
    Left = 0
    Top = 0
    Width = 469
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Asistencia del '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    object dxBevel1: TdxBevel
      Left = 0
      Top = 40
      Width = 469
      Height = 1
      Align = alBottom
      Shape = dxbsLineBottom
    end
  end
  object cxLabel3: TcxLabel
    Left = 324
    Top = 114
    Caption = 'Asignaci'#243'n'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object edAsignacion: TcxTextEdit
    Left = 385
    Top = 112
    Enabled = False
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 18
    Text = 'edFuncion'
    Width = 32
  end
  object rgTipoRegistro: TcxRadioGroup
    Left = 117
    Top = 155
    Caption = 'Tipo de Registro'
    ParentFont = False
    Properties.Columns = 3
    Properties.DefaultValue = 'A'
    Properties.Items = <
      item
        Caption = 'Asistencia'
        Value = 'A'
      end
      item
        Caption = 'Descanso'
        Value = 'D'
      end
      item
        Caption = 'Falta'
        Value = 'F'
      end>
    Properties.OnChange = rgTipoRegistroPropertiesChange
    ItemIndex = 0
    Style.BorderStyle = ebsUltraFlat
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.SkinName = 'Office2016Colorful'
    Style.Shadow = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.SkinName = 'Office2016Colorful'
    TabOrder = 1
    Transparent = True
    Height = 51
    Width = 300
  end
  object ActionList1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 68
    Top = 16
    object actGuardar: TAction
      Caption = 'Guardar [F2]'
      ImageIndex = 6
      ShortCut = 113
      OnExecute = actGuardarExecute
    end
    object actCerrar: TAction
      Caption = 'Cerrar [Esc]'
      ImageIndex = 15
      ShortCut = 27
      OnExecute = actCerrarExecute
    end
  end
end

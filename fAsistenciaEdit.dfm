object frmAsistenciaEdit: TfrmAsistenciaEdit
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Modificar Asistencia'
  ClientHeight = 340
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
    Top = 34
    Caption = 'Empleado'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object cxLabel1: TcxLabel
    Left = 36
    Top = 54
    Caption = 'Servicio'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object cxLabel2: TcxLabel
    Left = 36
    Top = 74
    Caption = 'Funci'#243'n'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object Panel1: TPanel
    Left = 0
    Top = 304
    Width = 469
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 15
    object cxButton4: TcxButton
      Left = 265
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
      Left = 365
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
  object edEntrada: TcxTimeEdit
    Left = 117
    Top = 132
    EditValue = 0d
    ParentFont = False
    Properties.TimeFormat = tfHourMin
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 6
    Width = 80
  end
  object cxLabel5: TcxLabel
    Left = 117
    Top = 113
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
    Left = 248
    Top = 132
    EditValue = 0d
    ParentFont = False
    Properties.TimeFormat = tfHourMin
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 7
    Width = 80
  end
  object cxLabel6: TcxLabel
    Left = 248
    Top = 113
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
    Top = 186
    Caption = 'Observaciones'
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
  end
  object edServicio: TcxTextEdit
    Left = 117
    Top = 52
    Enabled = False
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 2
    Text = 'edServicio'
    Width = 300
  end
  object edFuncion: TcxTextEdit
    Left = 117
    Top = 72
    Enabled = False
    ParentFont = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 4
    Text = 'edFuncion'
    Width = 200
  end
  object edEmpleado: TcxButtonEdit
    Left = 117
    Top = 32
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
    Top = 186
    Lines.Strings = (
      'EDOBSERVACIONES')
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ScrollBars = ssVertical
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 11
    Height = 89
    Width = 300
  end
  object cxLabel8: TcxLabel
    Left = 36
    Top = 161
    Caption = 'Horas Extras:'
    Transparent = True
  end
  object edHorasExtra: TcxCurrencyEdit
    Left = 117
    Top = 159
    ParentFont = False
    Properties.Alignment.Horz = taRightJustify
    Properties.DecimalPlaces = 0
    Properties.DisplayFormat = ',0'
    Properties.UseLeftAlignmentOnEditing = False
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 8
    Width = 75
  end
  object chkDescansa: TcxCheckBox
    Left = 248
    Top = 160
    Caption = 'Descansa'
    Properties.ValueChecked = 'S'
    Properties.ValueUnchecked = 'N'
    State = cbsGrayed
    TabOrder = 9
    Width = 121
  end
  object ActionList1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 12
    Top = 104
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

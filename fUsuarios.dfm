object frmUsuarios: TfrmUsuarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Usuario'
  ClientHeight = 195
  ClientWidth = 361
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
  object pnl1: TPanel
    Tag = 1
    Left = 0
    Top = 159
    Width = 361
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
      Left = 157
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
      Left = 257
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
  object xusuario: TcxDBTextEdit
    Left = 106
    Top = 61
    DataBinding.DataField = 'nombre'
    DataBinding.DataSource = dmMain.dsUsuariosEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 1
    Width = 200
  end
  object xpassword: TcxDBTextEdit
    Left = 106
    Top = 84
    DataBinding.DataField = 'password'
    DataBinding.DataSource = dmMain.dsUsuariosEdit
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.EchoMode = eemPassword
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 2
    Width = 200
  end
  object Label1: TcxLabel
    Left = 40
    Top = 62
    Caption = 'Usuario'
    Transparent = True
  end
  object Label2: TcxLabel
    Left = 40
    Top = 85
    Caption = 'Contrase'#241'a'
    Transparent = True
  end
  object actlst1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 217
    Top = 9
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

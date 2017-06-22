object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  ClientHeight = 301
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 509
    Height = 301
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    ExplicitHeight = 328
    object lblError: TLabel
      Left = 5
      Top = 46
      Width = 495
      Height = 18
      Align = alTop
      Alignment = taCenter
      Caption = 'Usuario o Contrase'#241'a Incorrectos'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      GlowSize = 1
      ParentColor = False
      ParentFont = False
      Transparent = False
      Visible = False
      ExplicitWidth = 193
    end
    object Bevel1: TBevel
      Left = 10
      Top = 188
      Width = 485
      Height = 5
      Shape = bsTopLine
    end
    object Panel2: TPanel
      Left = 5
      Top = 5
      Width = 495
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = 11360858
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 3
      object Label1: TcxLabel
        Left = 5
        Top = 5
        Align = alLeft
        Caption = 'Acceso al Sistema'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWhite
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 21
      end
      object lblVersion: TcxLabel
        Left = 482
        Top = 5
        Align = alRight
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBtnFace
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 21
      end
    end
    object xUsuario: TcxTextEdit
      Left = 144
      Top = 115
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.CharCase = ecUpperCase
      Properties.UseLeftAlignmentOnEditing = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.StyleController = frmPrincipal.cxEditStyleController1
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyPress = xUsuarioKeyPress
      Width = 200
    end
    object xPassword: TcxTextEdit
      Left = 144
      Top = 148
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.CharCase = ecUpperCase
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = 'l'
      Properties.UseLeftAlignmentOnEditing = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -16
      Style.Font.Name = 'Wingdings'
      Style.Font.Style = [fsBold]
      Style.StyleController = frmPrincipal.cxEditStyleController1
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyPress = xUsuarioKeyPress
      Width = 200
    end
    object cbEmpresas: TcxLookupComboBox
      Left = 144
      Top = 204
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediateDropDownWhenActivated = True
      Properties.KeyFieldNames = 'Empresa'
      Properties.ListColumns = <
        item
          MinWidth = 0
          Width = 0
          FieldName = 'Empresa'
        end
        item
          MinWidth = 250
          FieldName = 'Descripcion'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmMain.dsEmpresas
      TabOrder = 2
      Width = 300
    end
    object Label2: TcxLabel
      Left = 78
      Top = 120
      Caption = 'Usuario:'
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 78
      Top = 153
      Caption = 'Contrase'#241'a:'
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 78
      Top = 206
      Caption = 'Empresa:'
      Transparent = True
    end
    object Panel3: TPanel
      Left = 5
      Top = 256
      Width = 495
      Height = 36
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 4
      Padding.Top = 4
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 7
      ExplicitTop = 283
      object cxButton1: TcxButton
        Left = 291
        Top = 4
        Width = 100
        Height = 28
        Align = alRight
        Action = actAceptar
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 0
      end
      object cxButton2: TcxButton
        Left = 391
        Top = 4
        Width = 100
        Height = 28
        Align = alRight
        Action = actCerrar
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 1
      end
    end
  end
  object ActionList1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 332
    Top = 212
    object actAceptar: TAction
      Caption = 'Aceptar'
      ImageIndex = 6
      OnExecute = actAceptarExecute
    end
    object actCerrar: TAction
      Caption = 'Cerrar'
      ImageIndex = 15
      OnExecute = actCerrarExecute
    end
  end
end

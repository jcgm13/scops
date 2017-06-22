object frmAsignarFoto: TfrmAsignarFoto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Asignar Foto'
  ClientHeight = 579
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 388
    Height = 69
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 377
    DesignSize = (
      388
      69)
    object xempleado_id: TcxDBTextEdit
      Left = 70
      Top = 11
      TabStop = False
      DataBinding.DataField = 'empleado_id'
      DataBinding.DataSource = dmMain.dsEmpleadosFotosEdit
      Enabled = False
      ParentFont = False
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 1
      Width = 75
    end
    object xNombres: TcxTextEdit
      Left = 70
      Top = 33
      Anchors = [akLeft, akTop, akRight]
      Enabled = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 0
      Text = 'CXTEXTEDIT1'
      ExplicitWidth = 292
      Width = 303
    end
    object Label2: TcxLabel
      Left = 11
      Top = 35
      Caption = 'Nombre (s)'
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 11
      Top = 13
      Caption = 'Empleado'
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 543
    Width = 388
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 1
    ExplicitWidth = 377
    object cxButton4: TcxButton
      Left = 152
      Top = 4
      Width = 116
      Height = 28
      Align = alRight
      Action = actGuardar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 0
      ExplicitLeft = 141
    end
    object cxButton5: TcxButton
      Left = 268
      Top = 4
      Width = 116
      Height = 28
      Align = alRight
      Action = actCerrar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 1
      ExplicitLeft = 257
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 69
    Width = 388
    Height = 474
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet3
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    ExplicitWidth = 377
    ClientRectBottom = 468
    ClientRectLeft = 2
    ClientRectRight = 382
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = 'Foto Actual'
      ImageIndex = 0
      ExplicitWidth = 369
      DesignSize = (
        380
        441)
      object Label3: TLabel
        Left = 21
        Top = 357
        Width = 342
        Height = 32
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 
          'Clic derecho sobre la imagen para seleccionar la foto desde un a' +
          'rchivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExplicitWidth = 331
      end
      object cxDBImage1: TcxDBImage
        Left = 21
        Top = 20
        DataBinding.DataField = 'foto'
        DataBinding.DataSource = dmMain.dsEmpleadosFotosEdit
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.PopupMenuLayout.MenuItems = [pmiPaste, pmiDelete, pmiLoad]
        Style.StyleController = frmPrincipal.cxEditStyleController1
        TabOrder = 0
        Height = 325
        Width = 292
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Capturar imagen desde Camara Web...'
      ImageIndex = 2
      ExplicitWidth = 369
      object PaintBox1: TPaintBox
        Left = 0
        Top = 41
        Width = 380
        Height = 400
        Cursor = crHandPoint
        Align = alClient
        ExplicitWidth = 369
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 380
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 369
        DesignSize = (
          380
          41)
        object btnActivarCamara: TcxButton
          Left = 254
          Top = 10
          Width = 120
          Height = 25
          Action = actActivarCamara
          Anchors = [akTop, akRight]
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          ExplicitLeft = 243
        end
        object cxButton2: TcxButton
          Left = 9
          Top = 10
          Width = 104
          Height = 25
          Action = actAsignarFoto
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 1
        end
      end
    end
  end
  object xVideoSizes: TcxComboBox
    Left = 121
    Top = 107
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 3
    Width = 129
  end
  object ActionList1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 264
    Top = 4
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
    object actActivarCamara: TAction
      Caption = 'Activar C'#225'mara'
      ImageIndex = 9
      OnExecute = actActivarCamaraExecute
    end
    object actDesactivarCamara: TAction
      Caption = 'Desactivar Camara'
      ImageIndex = 10
      OnExecute = actDesactivarCamaraExecute
    end
    object actAsignarFoto: TAction
      Caption = 'Asignar Foto'
      ImageIndex = 54
      OnExecute = actAsignarFotoExecute
    end
  end
end

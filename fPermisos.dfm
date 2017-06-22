object frmPermisos: TfrmPermisos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Asignaci'#243'n de Permisos'
  ClientHeight = 452
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 533
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 23
      Top = 15
      Width = 36
      Height = 13
      Caption = 'Usuario'
      Transparent = True
    end
    object xusuario: TcxDBTextEdit
      Left = 73
      Top = 12
      TabStop = False
      DataBinding.DataField = 'usuario'
      DataBinding.DataSource = dmMain.dsPermisos
      Enabled = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 0
      Width = 120
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 416
    Width = 533
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 4
      Top = 4
      Width = 40
      Height = 28
      Align = alLeft
      Action = actExpandir
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 44
      Top = 4
      Width = 40
      Height = 28
      Align = alLeft
      Action = actContraer
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object cxButton4: TcxButton
      Left = 297
      Top = 4
      Width = 116
      Height = 28
      Align = alRight
      Action = actGuardar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 0
    end
    object cxButton5: TcxButton
      Left = 413
      Top = 4
      Width = 116
      Height = 28
      Align = alRight
      Action = actCerrar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 3
    end
  end
  object cxGridMain: TcxGrid
    Left = 0
    Top = 45
    Width = 533
    Height = 371
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    object ViewPermisos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmMain.dsPermisos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object ViewPermisosColumnCategoria: TcxGridDBColumn
        Caption = 'Categoria'
        DataBinding.FieldName = 'categoria'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
        Width = 80
      end
      object ViewPermisosColumnDescripcion: TcxGridDBColumn
        Caption = 'Descripci'#243'n'
        DataBinding.FieldName = 'descripcion'
        PropertiesClassName = 'TcxTextEditProperties'
        Options.Editing = False
        Width = 150
      end
      object ViewPermisosColumnPermiso: TcxGridDBColumn
        Caption = 'Permiso'
        DataBinding.FieldName = 'permiso'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 50
      end
    end
    object cxGridMainLevelMain: TcxGridLevel
      GridView = ViewPermisos
    end
  end
  object ActionList1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 332
    Top = 212
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
    object actExpandir: TAction
      Hint = 'Expandir Todo'
      ImageIndex = 110
      ShortCut = 117
      OnExecute = actExpandirExecute
    end
    object actContraer: TAction
      Hint = 'Contraer Todo'
      ImageIndex = 111
      ShortCut = 118
      OnExecute = actContraerExecute
    end
  end
end

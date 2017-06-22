object frmEmpleadosBaja: TfrmEmpleadosBaja
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Baja de Empleados'
  ClientHeight = 273
  ClientWidth = 694
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
  object Panel1: TPanel
    Left = 0
    Top = 237
    Width = 694
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 2
    object cxButton4: TcxButton
      Left = 458
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
      Left = 574
      Top = 4
      Width = 116
      Height = 28
      Align = alRight
      Action = actCerrar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 1
    end
  end
  object vGridElementos: TcxDBVerticalGrid
    Left = 0
    Top = 94
    Width = 694
    Height = 143
    BorderStyle = cxcbsNone
    Align = alClient
    Images = frmPrincipal.imgListAcciones
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    OptionsView.CellAutoHeight = True
    OptionsView.CellEndEllipsis = True
    OptionsView.ScrollBars = ssVertical
    OptionsView.ShowEditButtons = ecsbFocused
    OptionsView.RowHeaderWidth = 197
    OptionsView.ShowEmptyRowImage = True
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsBehavior.HeaderSizing = False
    OptionsData.CancelOnExit = False
    OptionsData.Appending = False
    OptionsData.Deleting = False
    OptionsData.DeletingConfirmation = False
    OptionsData.Inserting = False
    Navigator.Buttons.CustomButtons = <>
    Navigator.Buttons.PriorPage.Visible = False
    Navigator.Buttons.NextPage.Visible = False
    Navigator.Buttons.Cancel.Enabled = False
    Navigator.Buttons.Cancel.Visible = False
    Navigator.Buttons.Refresh.Visible = False
    Navigator.Buttons.SaveBookmark.Visible = False
    Navigator.Buttons.GotoBookmark.Visible = False
    Navigator.Buttons.Filter.Visible = False
    Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount] elementos'
    Navigator.InfoPanel.Visible = True
    TabOrder = 1
    DataController.DataSource = dmMain.dsEmpleadosEdit
    DataController.GridMode = True
    Version = 1
    object vGridElementosDBEditorRow7: TcxDBEditorRow
      Properties.Caption = 'Fecha Baja'
      Properties.ImageIndex = 14
      Properties.EditPropertiesClassName = 'TcxDateEditProperties'
      Properties.EditProperties.DateOnError = deToday
      Properties.EditProperties.ShowTime = False
      Properties.DataBinding.FieldName = 'fecha_baja'
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object vGridElementosDBEditorRow191: TcxDBEditorRow
      Properties.Caption = 'Motivo Baja'
      Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.EditProperties.Alignment.Horz = taLeftJustify
      Properties.EditProperties.ImmediateDropDownWhenActivated = True
      Properties.EditProperties.Items = <
        item
          Description = 'RENUNCIA'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'CAUSA ADMINISTRATIVA'
          Value = 1
        end
        item
          Description = 'COMETER DELITO'
          Value = 2
        end
        item
          Description = 'PENSIONADO'
          Value = 3
        end
        item
          Description = 'DEFUNCI'#211'N'
          Value = 4
        end
        item
          Description = 'ABANDONO DE TRABAJO'
          Value = 5
        end>
      Properties.DataBinding.FieldName = 'motivo_baja'
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object vGridElementosDBEditorRow192: TcxDBEditorRow
      Height = 100
      Properties.Caption = 'Observaciones Baja'
      Properties.EditPropertiesClassName = 'TcxMemoProperties'
      Properties.EditProperties.CharCase = ecUpperCase
      Properties.DataBinding.FieldName = 'comentarios_baja'
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 94
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object xempleado_id: TcxDBTextEdit
      Left = 73
      Top = 12
      TabStop = False
      DataBinding.DataField = 'empleado_id'
      DataBinding.DataSource = dmMain.dsEmpleadosEdit
      Enabled = False
      ParentFont = False
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 3
      Width = 75
    end
    object xNombres: TcxDBTextEdit
      Left = 23
      Top = 55
      DataBinding.DataField = 'nombres'
      DataBinding.DataSource = dmMain.dsEmpleadosEdit
      Enabled = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 0
      OnKeyPress = xNombresKeyPress
      Width = 180
    end
    object xapellido_paterno: TcxDBTextEdit
      Left = 209
      Top = 55
      DataBinding.DataField = 'apellido_paterno'
      DataBinding.DataSource = dmMain.dsEmpleadosEdit
      Enabled = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 1
      OnKeyPress = xNombresKeyPress
      Width = 180
    end
    object xapellido_materno: TcxDBTextEdit
      Left = 395
      Top = 55
      DataBinding.DataField = 'apellido_materno'
      DataBinding.DataSource = dmMain.dsEmpleadosEdit
      Enabled = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 2
      OnKeyPress = xNombresKeyPress
      Width = 180
    end
    object Label1: TcxLabel
      Left = 23
      Top = 15
      Caption = 'Empleado'
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 23
      Top = 41
      Caption = 'Nombre (s)'
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 209
      Top = 41
      Caption = 'Apellido Paterno'
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 395
      Top = 41
      Caption = 'Apellido Materno'
      Transparent = True
    end
    object lblBaja: TcxLabel
      Left = 0
      Top = 74
      Align = alBottom
      Caption = 
        'Este Empleado tiene un servicio asignado, no se puede dar de baj' +
        'a'
      ParentColor = False
      ParentFont = False
      Style.Color = clRed
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clWhite
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      AnchorX = 347
    end
  end
  object ActionList1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 324
    Top = 16
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
      Caption = 'Expandir Todo [F6]'
      ImageIndex = 110
      ShortCut = 117
      OnExecute = actExpandirExecute
    end
    object actContraer: TAction
      Caption = 'Contraer Todo [F7]'
      ImageIndex = 111
      ShortCut = 118
      OnExecute = actContraerExecute
    end
  end
end

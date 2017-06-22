object frmServicios: TfrmServicios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Servicios'
  ClientHeight = 634
  ClientWidth = 894
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 894
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object xservicio_id: TcxDBTextEdit
      Left = 81
      Top = 13
      DataBinding.DataField = 'servicio_id'
      DataBinding.DataSource = dmMain.dsServiciosEdit
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 0
      OnKeyPress = xdescripcionKeyPress
      Width = 100
    end
    object xdescripcion: TcxDBTextEdit
      Left = 81
      Top = 38
      DataBinding.DataField = 'descripcion'
      DataBinding.DataSource = dmMain.dsServiciosEdit
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 1
      OnKeyPress = xdescripcionKeyPress
      Width = 400
    end
    object xcliente_id: TcxDBLookupComboBox
      Left = 81
      Top = 62
      DataBinding.DataField = 'cliente_id'
      DataBinding.DataSource = dmMain.dsServiciosEdit
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'cliente_id'
      Properties.ListColumns = <
        item
          MinWidth = 75
          FieldName = 'cliente_id'
        end
        item
          MinWidth = 250
          FieldName = 'descripcion'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmMain.dsClientesList
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 2
      Width = 400
    end
    object cxButton3: TcxButton
      Left = 500
      Top = 60
      Width = 113
      Height = 25
      Action = actCopiarInfoCliente
      LookAndFeel.NativeStyle = False
      TabOrder = 3
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 764
      Top = 11
      TabStop = False
      DataBinding.DataField = 'activo'
      DataBinding.DataSource = dmMain.dsServiciosEdit
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
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
      Properties.ReadOnly = True
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 4
      OnEnter = cxDBImageComboBox1Enter
      Width = 99
    end
    object Label1: TcxLabel
      Left = 23
      Top = 15
      Caption = 'Servicio'
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 23
      Top = 40
      Caption = 'Descripci'#243'n'
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 23
      Top = 64
      Caption = 'Cliente'
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 598
    Width = 894
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 1
    object cxButton4: TcxButton
      Left = 690
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
      Left = 790
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 89
    Width = 894
    Height = 509
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet5
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    OnPageChanging = cxPageControl1PageChanging
    ClientRectBottom = 503
    ClientRectLeft = 2
    ClientRectRight = 888
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = 'Informaci'#243'n General'
      ImageIndex = 0
      object vGridServicios: TcxDBVerticalGrid
        Left = 0
        Top = 0
        Width = 886
        Height = 440
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
        TabOrder = 0
        DataController.DataSource = dmMain.dsServiciosEdit
        DataController.GridMode = True
        Version = 1
        object vGridServiciosCategoryRow1: TcxCategoryRow
          Options.Focusing = False
          Properties.Caption = 'INFORMACI'#211'N GENERAL'
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object vGridServiciosDBEditorRow4: TcxDBEditorRow
          Properties.Caption = 'Calle'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomCalle'
          ID = 1
          ParentID = 0
          Index = 0
          Version = 1
        end
        object vGridServiciosDBEditorRow2: TcxDBEditorRow
          Properties.Caption = 'N'#250'm. Exterior'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomNoExt'
          ID = 2
          ParentID = 0
          Index = 1
          Version = 1
        end
        object vGridServiciosDBEditorRow3: TcxDBEditorRow
          Properties.Caption = 'N'#250'm. Interior'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomNoInt'
          ID = 3
          ParentID = 0
          Index = 2
          Version = 1
        end
        object vGridServiciosDBEditorRow6: TcxDBEditorRow
          Properties.Caption = 'Colonia'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomColonia'
          ID = 4
          ParentID = 0
          Index = 3
          Version = 1
        end
        object vGridServiciosDBEditorRow7: TcxDBEditorRow
          Properties.Caption = 'C'#243'digo Postal'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomCP'
          ID = 5
          ParentID = 0
          Index = 4
          Version = 1
        end
        object vGridServiciosDBEditorRow8: TcxDBEditorRow
          Properties.Caption = 'Ciudad'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomCiudad'
          ID = 6
          ParentID = 0
          Index = 5
          Version = 1
        end
        object vGridServiciosDBEditorRow9: TcxDBEditorRow
          Properties.Caption = 'Estado'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomEstado'
          ID = 7
          ParentID = 0
          Index = 6
          Version = 1
        end
        object vGridServiciosDBEditorRow10: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono 1'
          Properties.ImageIndex = 78
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'Telefono1'
          ID = 8
          ParentID = 0
          Index = 7
          Version = 1
        end
        object vGridServiciosDBEditorRow11: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono 2'
          Properties.ImageIndex = 78
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'Telefono2'
          ID = 9
          ParentID = 0
          Index = 8
          Version = 1
        end
        object vGridServiciosDBEditorRow12: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono Emergencia 1'
          Properties.ImageIndex = 78
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'TelefEmer1'
          ID = 10
          ParentID = 0
          Index = 9
          Version = 1
        end
        object vGridServiciosDBEditorRow1: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono Emergencia 2'
          Properties.ImageIndex = 78
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.DataBinding.FieldName = 'TelefEmer2'
          ID = 11
          ParentID = 0
          Index = 10
          Version = 1
        end
        object vGridServiciosDBEditorRow33: TcxDBEditorRow
          Properties.Caption = 'Fecha Inicio'
          Properties.ImageIndex = 14
          Properties.EditPropertiesClassName = 'TcxDateEditProperties'
          Properties.EditProperties.SaveTime = False
          Properties.EditProperties.ShowTime = False
          Properties.DataBinding.FieldName = 'FechaIni'
          ID = 12
          ParentID = 0
          Index = 11
          Version = 1
        end
        object vGridServiciosDBEditorRow34: TcxDBEditorRow
          Properties.Caption = 'Fecha Final'
          Properties.ImageIndex = 14
          Properties.EditPropertiesClassName = 'TcxDateEditProperties'
          Properties.EditProperties.SaveTime = False
          Properties.EditProperties.ShowTime = False
          Properties.DataBinding.FieldName = 'FechaFin'
          ID = 13
          ParentID = 0
          Index = 12
          Version = 1
        end
        object vGridServiciosCategoryRow3: TcxCategoryRow
          Properties.Caption = 'REPRESENTANTE DE SEGURIDAD'
          ID = 14
          ParentID = -1
          Index = 1
          Version = 1
        end
        object vGridServiciosDBEditorRow19: TcxDBEditorRow
          Properties.Caption = 'Nombre'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'RepSeg'
          ID = 15
          ParentID = 14
          Index = 0
          Version = 1
        end
        object vGridServiciosDBEditorRow20: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono Domicilio'
          Properties.ImageIndex = 78
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'RepSegTD'
          ID = 16
          ParentID = 14
          Index = 1
          Version = 1
        end
        object vGridServiciosDBEditorRow21: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono Celular'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'RepSegTC'
          ID = 17
          ParentID = 14
          Index = 2
          Version = 1
        end
        object vGridServiciosDBEditorRow23: TcxDBEditorRow
          Properties.Caption = 'Email'
          Properties.EditPropertiesClassName = 'TcxHyperLinkEditProperties'
          Properties.EditProperties.Prefix = ''
          Properties.DataBinding.FieldName = 'RepSegEmail'
          ID = 18
          ParentID = 14
          Index = 3
          Version = 1
        end
        object vGridServiciosDBEditorRow46: TcxDBEditorRow
          Height = 50
          Properties.EditPropertiesClassName = 'TcxMemoProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'Comentarios'
          ID = 19
          ParentID = -1
          Index = 2
          Version = 1
        end
        object vGridServiciosDBEditorRow5: TcxDBEditorRow
          Height = 200
          Properties.Caption = 'Consignas Especiales'
          Properties.EditPropertiesClassName = 'TcxMemoProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.EditProperties.ScrollBars = ssVertical
          Properties.DataBinding.FieldName = 'consignas_especiales'
          ID = 20
          ParentID = -1
          Index = 3
          Version = 1
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 440
        Width = 886
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
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 0
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
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Funciones'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 886
        Height = 440
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          DataController.DataSource = dmMain.dsServiciosFunciones
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Funci'#243'n'
            DataBinding.FieldName = 'funcion'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 40
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'tipo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 200
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = 'Horario'
            DataBinding.FieldName = 'horario'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 200
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 440
        Width = 886
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        DoubleBuffered = True
        Padding.Left = 4
        Padding.Top = 4
        Padding.Right = 4
        Padding.Bottom = 4
        ParentColor = True
        ParentDoubleBuffered = False
        TabOrder = 1
        object cxButton6: TcxButton
          Left = 4
          Top = 4
          Width = 100
          Height = 28
          Align = alLeft
          Action = actAgregarFuncion
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 0
        end
        object cxButton7: TcxButton
          Left = 204
          Top = 4
          Width = 100
          Height = 28
          Align = alLeft
          Action = actEliminarFuncion
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 1
        end
        object cxButton8: TcxButton
          Left = 104
          Top = 4
          Width = 100
          Height = 28
          Align = alLeft
          Action = actModificarFuncion
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 2
        end
        object cxButton15: TcxButton
          Left = 304
          Top = 4
          Width = 100
          Height = 28
          Align = alLeft
          Action = actConsultarFuncion
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 3
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Elementos Asignados'
      ImageIndex = 2
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 886
        Height = 476
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmMain.dsServiciosFuncionesEmpleados
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'Funci'#243'n'
            DataBinding.FieldName = 'funcion'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Moving = False
            Width = 40
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'tipo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Moving = False
            Width = 200
          end
          object cxGridDBTableView1Column3: TcxGridDBColumn
            Caption = 'Horario'
            DataBinding.FieldName = 'horario'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Moving = False
            Width = 200
          end
          object cxGridDBTableView1Column4: TcxGridDBColumn
            Caption = '#'
            DataBinding.FieldName = 'asignacion_id'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Moving = False
            Width = 50
          end
          object cxGridDBTableView1Column5: TcxGridDBColumn
            Caption = 'Empleado'
            DataBinding.FieldName = 'empleado_id'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Moving = False
            Width = 50
          end
          object cxGridDBTableView1Column6: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'nombre_empleado'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                ImageIndex = 90
                Kind = bkGlyph
              end
              item
                ImageIndex = 24
                Kind = bkGlyph
              end>
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.OnButtonClick = cxGridDBTableView1Column6PropertiesButtonClick
            MinWidth = 200
            Options.Filtering = False
            Options.ShowEditButtons = isebAlways
            Options.Grouping = False
            Options.Moving = False
            Width = 200
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Preasignaci'#243'n Semanal'
      ImageIndex = 3
      object cxGrid3: TcxGrid
        Left = 0
        Top = 128
        Width = 886
        Height = 348
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmMain.dsServiciosPreasignacionSemanal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Images = frmPrincipal.imgListAcciones
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<No hay Informaci'#243'n>'
          OptionsView.ScrollBars = ssHorizontal
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Bands = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
              Caption = 'Lunes'
            end
            item
              Caption = 'Martes'
            end
            item
              Caption = 'Mi'#233'rcoles'
            end
            item
              Caption = 'Jueves'
            end
            item
              Caption = 'Viernes'
            end
            item
              Caption = 'S'#225'bado'
            end
            item
              Caption = 'Domingo'
            end>
          object cxGrid3DBBandedTableView1Column1: TcxGridDBBandedColumn
            Caption = 'Consec.'
            DataBinding.FieldName = 'funcion_id'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column2: TcxGridDBBandedColumn
            Caption = 'Funci'#243'n (Puesto)'
            DataBinding.FieldName = 'tipo'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 100
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column3: TcxGridDBBandedColumn
            Caption = 'Horario'
            DataBinding.FieldName = 'horario'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 100
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column4: TcxGridDBBandedColumn
            Caption = 'Id'
            DataBinding.FieldName = 'asignacion_id'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column5: TcxGridDBBandedColumn
            Caption = 'Empleado'
            DataBinding.FieldName = 'nombre_empleado'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 100
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column6: TcxGridDBBandedColumn
            Caption = 'D'
            DataBinding.FieldName = 'lund'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column7: TcxGridDBBandedColumn
            Caption = 'T'
            DataBinding.FieldName = 'lunt'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column8: TcxGridDBBandedColumn
            Caption = 'N'
            DataBinding.FieldName = 'lunn'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column9: TcxGridDBBandedColumn
            Caption = 'D'
            DataBinding.FieldName = 'mard'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column10: TcxGridDBBandedColumn
            Caption = 'T'
            DataBinding.FieldName = 'mart'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 6
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column11: TcxGridDBBandedColumn
            Caption = 'N'
            DataBinding.FieldName = 'marn'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 6
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column12: TcxGridDBBandedColumn
            Caption = 'D'
            DataBinding.FieldName = 'mied'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column13: TcxGridDBBandedColumn
            Caption = 'T'
            DataBinding.FieldName = 'miet'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 7
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column14: TcxGridDBBandedColumn
            Caption = 'N'
            DataBinding.FieldName = 'mien'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 7
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column15: TcxGridDBBandedColumn
            Caption = 'D'
            DataBinding.FieldName = 'jued'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 8
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column16: TcxGridDBBandedColumn
            Caption = 'T'
            DataBinding.FieldName = 'juet'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 8
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column17: TcxGridDBBandedColumn
            Caption = 'N'
            DataBinding.FieldName = 'juen'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 8
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column18: TcxGridDBBandedColumn
            Caption = 'D'
            DataBinding.FieldName = 'vied'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 9
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column19: TcxGridDBBandedColumn
            Caption = 'T'
            DataBinding.FieldName = 'viet'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 9
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column20: TcxGridDBBandedColumn
            Caption = 'N'
            DataBinding.FieldName = 'vien'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 9
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column21: TcxGridDBBandedColumn
            Caption = 'D'
            DataBinding.FieldName = 'sabd'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 10
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column22: TcxGridDBBandedColumn
            Caption = 'T'
            DataBinding.FieldName = 'sabt'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 10
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column23: TcxGridDBBandedColumn
            Caption = 'N'
            DataBinding.FieldName = 'sabn'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 10
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column24: TcxGridDBBandedColumn
            Caption = 'D'
            DataBinding.FieldName = 'domd'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 11
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column25: TcxGridDBBandedColumn
            Caption = 'T'
            DataBinding.FieldName = 'domt'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 11
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1Column26: TcxGridDBBandedColumn
            Caption = 'N'
            DataBinding.FieldName = 'domn'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = frmPrincipal.imgListAcciones
            Properties.Items = <
              item
                ImageIndex = 6
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            Position.BandIndex = 11
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGrid3DBBandedTableView1
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 886
        Height = 128
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        DesignSize = (
          886
          128)
        object xfecha: TcxDateNavigator
          Left = 0
          Top = 0
          Width = 147
          Height = 128
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookAndFeel.NativeStyle = False
          SelectPeriod = False
          StartOfWeek = swMonday
          TabOrder = 0
          OnClick = xfechaClick
          Selection = 1
        end
        object cxButton9: TcxButton
          Left = 646
          Top = 10
          Width = 110
          Height = 32
          Action = actLimpiarSemana
          Anchors = [akTop, akRight]
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 1
        end
        object cxButton10: TcxButton
          Left = 646
          Top = 48
          Width = 110
          Height = 32
          Action = actProgramarDiurno
          Anchors = [akTop, akRight]
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 2
        end
        object cxButton11: TcxButton
          Left = 646
          Top = 86
          Width = 110
          Height = 32
          Action = actProgramar24T1
          Anchors = [akTop, akRight]
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 3
        end
        object cxButton12: TcxButton
          Left = 762
          Top = 86
          Width = 110
          Height = 32
          Action = actProgramar24T2
          Anchors = [akTop, akRight]
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 4
        end
        object cxButton13: TcxButton
          Left = 762
          Top = 48
          Width = 110
          Height = 32
          Action = actProgramarNocturno
          Anchors = [akTop, akRight]
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 5
        end
        object cxButton14: TcxButton
          Left = 762
          Top = 10
          Width = 110
          Height = 32
          Action = actMarcarSemana
          Anchors = [akTop, akRight]
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 6
        end
        object cxLabel1: TcxLabel
          Left = 166
          Top = 99
          Caption = 'Semana Seleccionada:'
          Transparent = True
        end
        object lblSemana: TcxLabel
          Left = 283
          Top = 99
          ParentColor = False
          ParentFont = False
          Style.Color = 8454143
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.StyleController = frmPrincipal.cxEditStyleController1
          Style.IsFontAssigned = True
          Properties.LabelEffect = cxleExtrude
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Asignaci'#243'n de Equipo'
      ImageIndex = 4
      object Panel5: TPanel
        Left = 0
        Top = 440
        Width = 886
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        DoubleBuffered = True
        Padding.Left = 4
        Padding.Top = 4
        Padding.Right = 4
        Padding.Bottom = 4
        ParentColor = True
        ParentDoubleBuffered = False
        TabOrder = 0
        DesignSize = (
          886
          36)
        object cxButton16: TcxButton
          Left = 4
          Top = 4
          Width = 100
          Height = 28
          Align = alLeft
          Action = actAgregarEquipo
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 0
        end
        object cxButton17: TcxButton
          Left = 104
          Top = 4
          Width = 100
          Height = 28
          Align = alLeft
          Action = actEliminarEquipo
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 1
        end
        object cxLabel2: TcxLabel
          Left = 630
          Top = 1
          Anchors = [akTop, akRight]
          Caption = 'Aumentar Equipo Asignado: (Ctrl + Flecha Arriba)'
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          AnchorX = 872
        end
        object cxLabel3: TcxLabel
          Left = 636
          Top = 17
          Anchors = [akTop, akRight]
          Caption = 'Disminuir Equipo Asignado: (Ctrl + Flecha Abajo)'
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          AnchorX = 872
        end
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 886
        Height = 440
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGridDBTableView2: TcxGridDBTableView
          PopupMenu = dxRibbonPopupMenuEquipo
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmMain.dsServiciosEquipo
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBColumnEquipoId: TcxGridDBColumn
            Caption = 'Equipo'
            DataBinding.FieldName = 'equipo_id'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = ',0'
            Properties.UseLeftAlignmentOnEditing = False
            Properties.UseThousandSeparator = True
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 40
          end
          object cxGridDBColumnTipo: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'tipo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 150
          end
          object cxGridDBColumnDescripcion: TcxGridDBColumn
            Caption = 'Descripci'#243'n'
            DataBinding.FieldName = 'descripcion'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 250
          end
          object cxGridDBTableView2ColumnMarca: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'marca'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Width = 70
          end
          object cxGridDBTableView2ColumnModelo: TcxGridDBColumn
            Caption = 'Modelo'
            DataBinding.FieldName = 'modelo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Width = 70
          end
          object cxGridDBTableView2ColumnCantidad: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'cantidad'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = ',0'
            Properties.UseThousandSeparator = True
            Width = 50
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  object ActionList1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 496
    Top = 20
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
    object actCopiarInfoCliente: TAction
      Caption = 'Copiar Info. Cliente'
      OnExecute = actCopiarInfoClienteExecute
    end
    object actAgregarFuncion: TAction
      Category = 'Funciones'
      Caption = 'Agregar'
      ImageIndex = 1
      OnExecute = actAgregarFuncionExecute
    end
    object actModificarFuncion: TAction
      Category = 'Funciones'
      Caption = 'Modificar'
      ImageIndex = 29
      OnExecute = actModificarFuncionExecute
    end
    object actEliminarFuncion: TAction
      Category = 'Funciones'
      Caption = 'Eliminar'
      ImageIndex = 24
      OnExecute = actEliminarFuncionExecute
    end
    object actConsultarFuncion: TAction
      Category = 'Funciones'
      Caption = 'Consultar'
      ImageIndex = 39
      OnExecute = actConsultarFuncionExecute
    end
    object actLimpiarSemana: TAction
      Category = 'Preasignacion'
      Caption = 'Limpiar Semana'
      OnExecute = actLimpiarSemanaExecute
    end
    object actMarcarSemana: TAction
      Category = 'Preasignacion'
      Caption = 'Marcar Semana'
      OnExecute = actMarcarSemanaExecute
    end
    object actProgramarDiurno: TAction
      Category = 'Preasignacion'
      Caption = 'Programar Diurno'
      OnExecute = actProgramarDiurnoExecute
    end
    object actProgramarNocturno: TAction
      Category = 'Preasignacion'
      Caption = 'Programar Nocturno'
      OnExecute = actProgramarNocturnoExecute
    end
    object actProgramar24T1: TAction
      Category = 'Preasignacion'
      Caption = 'Programar 24h T1'
      OnExecute = actProgramar24T1Execute
    end
    object actProgramar24T2: TAction
      Category = 'Preasignacion'
      Caption = 'Programar 24h T2'
      OnExecute = actProgramar24T2Execute
    end
    object actAgregarEquipo: TAction
      Category = 'Asignacion Equipo'
      Caption = 'Agregar'
      ImageIndex = 1
      OnExecute = actAgregarEquipoExecute
    end
    object actEliminarEquipo: TAction
      Category = 'Asignacion Equipo'
      Caption = 'Eliminar'
      ImageIndex = 24
      OnExecute = actEliminarEquipoExecute
    end
    object actAumentarEquipo: TAction
      Category = 'Asignacion Equipo'
      Caption = 'Aumentar Equipo'
      ImageIndex = 68
      ShortCut = 16422
      OnExecute = actAumentarEquipoExecute
    end
    object actDisminuirEquipo: TAction
      Category = 'Asignacion Equipo'
      Caption = 'Disminuir Equipo'
      ImageIndex = 38
      ShortCut = 16424
      OnExecute = actDisminuirEquipoExecute
    end
  end
  object dxRibbonPopupMenuEquipo: TdxRibbonPopupMenu
    BarManager = frmPrincipal.dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButtonAumentarEquipo'
      end
      item
        Visible = True
        ItemName = 'dxBarButtonDisminuirEquipo'
      end>
    Ribbon = frmPrincipal.dxRibbon1
    UseOwnFont = False
    Left = 432
    Top = 208
  end
end

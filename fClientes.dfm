object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Clientes'
  ClientHeight = 632
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      694
      65)
    object xcliente_id: TcxDBTextEdit
      Left = 83
      Top = 12
      DataBinding.DataField = 'cliente_id'
      DataBinding.DataSource = dmMain.dsClientesEdit
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 0
      OnKeyPress = xdescripcionKeyPress
      Width = 100
    end
    object xdescripcion: TcxDBTextEdit
      Left = 83
      Top = 35
      DataBinding.DataField = 'descripcion'
      DataBinding.DataSource = dmMain.dsClientesEdit
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 1
      OnKeyPress = xdescripcionKeyPress
      Width = 400
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 552
      Top = 12
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'activo'
      DataBinding.DataSource = dmMain.dsClientesEdit
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
      TabOrder = 2
      OnEnter = cxDBImageComboBox1Enter
      Width = 103
    end
    object Label1: TcxLabel
      Left = 23
      Top = 14
      Caption = 'Cliente'
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 23
      Top = 37
      Caption = 'Descripci'#243'n'
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 596
    Width = 694
    Height = 36
    Align = alBottom
    BevelKind = bkFlat
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
      Height = 24
      Align = alLeft
      Action = actExpandir
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 44
      Top = 4
      Width = 40
      Height = 24
      Align = alLeft
      Action = actContraer
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 1
    end
    object cxButton4: TcxButton
      Left = 486
      Top = 4
      Width = 100
      Height = 24
      Align = alRight
      Action = actGuardar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 2
    end
    object cxButton5: TcxButton
      Left = 586
      Top = 4
      Width = 100
      Height = 24
      Align = alRight
      Action = actCerrar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 3
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 65
    Width = 694
    Height = 531
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.SkinName = 'Office2013DarkGray'
    OnPageChanging = cxPageControl1PageChanging
    ClientRectBottom = 529
    ClientRectLeft = 2
    ClientRectRight = 692
    ClientRectTop = 28
    object cxTabSheet1: TcxTabSheet
      Caption = 'Informaci'#243'n General'
      ImageIndex = 0
      object vGridClientes: TcxDBVerticalGrid
        Left = 0
        Top = 0
        Width = 690
        Height = 501
        BorderStyle = cxcbsNone
        Align = alClient
        Images = frmPrincipal.imgListAcciones
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013DarkGray'
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
        DataController.DataSource = dmMain.dsClientesEdit
        DataController.GridMode = True
        Version = 1
        object vGridClientesCategoryRow1: TcxCategoryRow
          Options.Focusing = False
          Properties.Caption = 'GENERAL'
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object vGridClientesDBEditorRow5: TcxDBEditorRow
          Properties.Caption = 'Nombre Fiscal'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'NombreFiscal'
          ID = 1
          ParentID = 0
          Index = 0
          Version = 1
        end
        object vGridClientesDBEditorRow1: TcxDBEditorRow
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'Giro'
          ID = 2
          ParentID = 0
          Index = 1
          Version = 1
        end
        object vGridClientesDBEditorRow4: TcxDBEditorRow
          Properties.Caption = 'Calle'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomCalle'
          ID = 3
          ParentID = 0
          Index = 2
          Version = 1
        end
        object vGridClientesDBEditorRow2: TcxDBEditorRow
          Properties.Caption = 'N'#250'm. Exterior'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomNoExt'
          ID = 4
          ParentID = 0
          Index = 3
          Version = 1
        end
        object vGridClientesDBEditorRow3: TcxDBEditorRow
          Properties.Caption = 'N'#250'm. Interior'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomNoInt'
          ID = 5
          ParentID = 0
          Index = 4
          Version = 1
        end
        object vGridClientesDBEditorRow6: TcxDBEditorRow
          Properties.Caption = 'Colonia'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomColonia'
          ID = 6
          ParentID = 0
          Index = 5
          Version = 1
        end
        object vGridClientesDBEditorRow7: TcxDBEditorRow
          Properties.Caption = 'C'#243'digo Postal'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomCP'
          ID = 7
          ParentID = 0
          Index = 6
          Version = 1
        end
        object vGridClientesDBEditorRow8: TcxDBEditorRow
          Properties.Caption = 'Ciudad'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomCiudad'
          ID = 8
          ParentID = 0
          Index = 7
          Version = 1
        end
        object vGridClientesDBEditorRow9: TcxDBEditorRow
          Properties.Caption = 'Estado'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'DomEstado'
          ID = 9
          ParentID = 0
          Index = 8
          Version = 1
        end
        object vGridClientesDBEditorRow10: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono 1'
          Properties.ImageIndex = 78
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'Telefono1'
          ID = 10
          ParentID = 0
          Index = 9
          Version = 1
        end
        object vGridClientesDBEditorRow11: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono 2'
          Properties.ImageIndex = 78
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'Telefono2'
          ID = 11
          ParentID = 0
          Index = 10
          Version = 1
        end
        object vGridClientesDBEditorRow12: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono 3'
          Properties.ImageIndex = 78
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'Telefono3'
          ID = 12
          ParentID = 0
          Index = 11
          Version = 1
        end
        object vGridClientesDBEditorRow13: TcxDBEditorRow
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'RFC'
          ID = 13
          ParentID = 0
          Index = 12
          Version = 1
        end
        object vGridClientesCategoryRow2: TcxCategoryRow
          Properties.Caption = 'REPRESENTANTE LEGAL'
          ID = 14
          ParentID = -1
          Index = 1
          Version = 1
        end
        object vGridClientesDBEditorRow14: TcxDBEditorRow
          Properties.Caption = 'Nombre'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'RepLeg'
          ID = 15
          ParentID = 14
          Index = 0
          Version = 1
        end
        object vGridClientesDBEditorRow15: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono Domicilio'
          Properties.ImageIndex = 78
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'RepLegTD'
          ID = 16
          ParentID = 14
          Index = 1
          Version = 1
        end
        object vGridClientesDBEditorRow18: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono Celular'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'RepLegTC'
          ID = 17
          ParentID = 14
          Index = 2
          Version = 1
        end
        object vGridClientesDBEditorRow17: TcxDBEditorRow
          Properties.Caption = 'Email'
          Properties.EditPropertiesClassName = 'TcxHyperLinkEditProperties'
          Properties.EditProperties.Prefix = ''
          Properties.DataBinding.FieldName = 'RepLegEmail'
          ID = 18
          ParentID = 14
          Index = 3
          Version = 1
        end
        object vGridClientesCategoryRow3: TcxCategoryRow
          Properties.Caption = 'REPRESENTANTE DE SEGURIDAD'
          ID = 19
          ParentID = -1
          Index = 2
          Version = 1
        end
        object vGridClientesDBEditorRow19: TcxDBEditorRow
          Properties.Caption = 'Nombre'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'RepSeg'
          ID = 20
          ParentID = 19
          Index = 0
          Version = 1
        end
        object vGridClientesDBEditorRow20: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono Domicilio'
          Properties.ImageIndex = 78
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'RepSegTD'
          ID = 21
          ParentID = 19
          Index = 1
          Version = 1
        end
        object vGridClientesDBEditorRow21: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono Celular'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'RepSegTC'
          ID = 22
          ParentID = 19
          Index = 2
          Version = 1
        end
        object vGridClientesDBEditorRow23: TcxDBEditorRow
          Properties.Caption = 'Email'
          Properties.EditPropertiesClassName = 'TcxHyperLinkEditProperties'
          Properties.EditProperties.Prefix = ''
          Properties.DataBinding.FieldName = 'RepSegEmail'
          ID = 23
          ParentID = 19
          Index = 3
          Version = 1
        end
        object vGridClientesCategoryRow4: TcxCategoryRow
          Properties.Caption = 'REPRESENTANTE PARA COBRANZA'
          ID = 24
          ParentID = -1
          Index = 3
          Version = 1
        end
        object vGridClientesDBEditorRow16: TcxDBEditorRow
          Properties.Caption = 'Nombre'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'RepCob'
          ID = 25
          ParentID = 24
          Index = 0
          Version = 1
        end
        object vGridClientesDBEditorRow22: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono Domicilio'
          Properties.ImageIndex = 78
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'RepCobTD'
          ID = 26
          ParentID = 24
          Index = 1
          Version = 1
        end
        object vGridClientesDBEditorRow24: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono Celular'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'RepCobTC'
          ID = 27
          ParentID = 24
          Index = 2
          Version = 1
        end
        object vGridClientesDBEditorRow25: TcxDBEditorRow
          Properties.Caption = 'Email'
          Properties.EditPropertiesClassName = 'TcxHyperLinkEditProperties'
          Properties.EditProperties.Prefix = ''
          Properties.DataBinding.FieldName = 'RepCobEmail'
          ID = 28
          ParentID = 24
          Index = 3
          Version = 1
        end
        object vGridClientesCategoryRow5: TcxCategoryRow
          Properties.Caption = 'Domicilio'
          ID = 29
          ParentID = 24
          Index = 4
          Version = 1
        end
        object vGridClientesDBEditorRow26: TcxDBEditorRow
          Properties.Caption = 'Calle'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'CobCalle'
          ID = 30
          ParentID = 29
          Index = 0
          Version = 1
        end
        object vGridClientesDBEditorRow27: TcxDBEditorRow
          Properties.Caption = 'N'#250'm. Exterior'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'CobNoExt'
          ID = 31
          ParentID = 29
          Index = 1
          Version = 1
        end
        object vGridClientesDBEditorRow28: TcxDBEditorRow
          Properties.Caption = 'N'#250'm. Interior'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'CobNoInt'
          ID = 32
          ParentID = 29
          Index = 2
          Version = 1
        end
        object vGridClientesDBEditorRow29: TcxDBEditorRow
          Properties.Caption = 'Colonia'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'CobColonia'
          ID = 33
          ParentID = 29
          Index = 3
          Version = 1
        end
        object vGridClientesDBEditorRow32: TcxDBEditorRow
          Properties.Caption = 'C'#243'digo Postal'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'CobCP'
          ID = 34
          ParentID = 29
          Index = 4
          Version = 1
        end
        object vGridClientesDBEditorRow31: TcxDBEditorRow
          Properties.Caption = 'Ciudad'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'CobCiudad'
          ID = 35
          ParentID = 29
          Index = 5
          Version = 1
        end
        object vGridClientesDBEditorRow30: TcxDBEditorRow
          Properties.Caption = 'Estado'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'CobEstado'
          ID = 36
          ParentID = 29
          Index = 6
          Version = 1
        end
        object vGridClientesCategoryRow6: TcxCategoryRow
          Properties.Caption = 'LABORAL'
          ID = 37
          ParentID = -1
          Index = 4
          Version = 1
        end
        object vGridClientesDBEditorRow33: TcxDBEditorRow
          Properties.Caption = 'Fecha Inicio'
          Properties.ImageIndex = 14
          Properties.EditPropertiesClassName = 'TcxDateEditProperties'
          Properties.EditProperties.SaveTime = False
          Properties.EditProperties.ShowTime = False
          Properties.DataBinding.FieldName = 'FechaIni'
          ID = 38
          ParentID = 37
          Index = 0
          Version = 1
        end
        object vGridClientesDBEditorRow34: TcxDBEditorRow
          Properties.Caption = 'Fecha Final'
          Properties.ImageIndex = 14
          Properties.EditPropertiesClassName = 'TcxDateEditProperties'
          Properties.EditProperties.SaveTime = False
          Properties.EditProperties.ShowTime = False
          Properties.DataBinding.FieldName = 'FechaFin'
          ID = 39
          ParentID = 37
          Index = 1
          Version = 1
        end
        object vGridClientesDBEditorRow35: TcxDBEditorRow
          Properties.Caption = 'Facturaci'#243'n'
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.Alignment = taCenter
          Properties.EditProperties.ValueChecked = 1
          Properties.EditProperties.ValueUnchecked = 0
          Properties.DataBinding.FieldName = 'Facturacion'
          ID = 40
          ParentID = 37
          Index = 2
          Version = 1
        end
        object vGridClientesDBEditorRow36: TcxDBEditorRow
          Properties.Caption = 'Revisi'#243'n'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'Revision'
          ID = 41
          ParentID = 37
          Index = 3
          Version = 1
        end
        object vGridClientesDBEditorRow45: TcxDBEditorRow
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'Pagos'
          ID = 42
          ParentID = 37
          Index = 4
          Version = 1
        end
        object vGridClientesDBEditorRow44: TcxDBEditorRow
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.ValueChecked = 1
          Properties.EditProperties.ValueUnchecked = 0
          Properties.DataBinding.FieldName = 'Contrato'
          ID = 43
          ParentID = 37
          Index = 5
          Version = 1
        end
        object vGridClientesDBEditorRow43: TcxDBEditorRow
          Properties.Caption = 'Expedici'#243'n Contrato'
          Properties.ImageIndex = 14
          Properties.EditPropertiesClassName = 'TcxDateEditProperties'
          Properties.EditProperties.SaveTime = False
          Properties.EditProperties.ShowTime = False
          Properties.DataBinding.FieldName = 'ContratoExp'
          ID = 44
          ParentID = 37
          Index = 6
          Version = 1
        end
        object vGridClientesDBEditorRow42: TcxDBEditorRow
          Properties.Caption = 'Contrato Inicia'
          Properties.ImageIndex = 14
          Properties.EditPropertiesClassName = 'TcxDateEditProperties'
          Properties.EditProperties.SaveTime = False
          Properties.EditProperties.ShowTime = False
          Properties.DataBinding.FieldName = 'ContratoIni'
          ID = 45
          ParentID = 37
          Index = 7
          Version = 1
        end
        object vGridClientesDBEditorRow41: TcxDBEditorRow
          Properties.Caption = 'Contrato Finaliza'
          Properties.ImageIndex = 14
          Properties.EditPropertiesClassName = 'TcxDateEditProperties'
          Properties.EditProperties.SaveTime = False
          Properties.EditProperties.ShowTime = False
          Properties.DataBinding.FieldName = 'ContratoFin'
          ID = 46
          ParentID = 37
          Index = 8
          Version = 1
        end
        object vGridClientesDBEditorRow40: TcxDBEditorRow
          Properties.Caption = 'Subtotal'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.DisplayFormat = ',0.00'
          Properties.EditProperties.UseLeftAlignmentOnEditing = False
          Properties.EditProperties.UseThousandSeparator = True
          Properties.DataBinding.FieldName = 'ContratoSubT'
          ID = 47
          ParentID = 37
          Index = 9
          Version = 1
        end
        object vGridClientesDBEditorRow39: TcxDBEditorRow
          Properties.Caption = 'IVA'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.DisplayFormat = ',0.00'
          Properties.EditProperties.UseLeftAlignmentOnEditing = False
          Properties.EditProperties.UseThousandSeparator = True
          Properties.DataBinding.FieldName = 'ContratoIVA'
          ID = 48
          ParentID = 37
          Index = 10
          Version = 1
        end
        object vGridClientesDBEditorRow38: TcxDBEditorRow
          Properties.Caption = 'Total'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.DisplayFormat = ',0.00'
          Properties.EditProperties.UseLeftAlignmentOnEditing = False
          Properties.EditProperties.UseThousandSeparator = True
          Properties.DataBinding.FieldName = 'ContratoTot'
          ID = 49
          ParentID = 37
          Index = 11
          Version = 1
        end
        object vGridClientesDBEditorRow37: TcxDBEditorRow
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'Horario'
          ID = 50
          ParentID = 37
          Index = 12
          Version = 1
        end
        object vGridClientesDBEditorRow46: TcxDBEditorRow
          Height = 50
          Properties.EditPropertiesClassName = 'TcxMemoProperties'
          Properties.DataBinding.FieldName = 'Comentarios'
          ID = 51
          ParentID = -1
          Index = 5
          Version = 1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Servicios'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 690
        Height = 465
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013DarkGray'
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmMain.dsServiciosCliente
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.Header = frmPrincipal.cxStyle1
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Servicio'
            DataBinding.FieldName = 'servicio_id'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 40
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = 'Descripci'#243'n'
            DataBinding.FieldName = 'descripcion'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 200
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = 'Domicilio'
            DataBinding.FieldName = 'domicilio'
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
      object pnl1: TPanel
        Left = 0
        Top = 465
        Width = 690
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
          Action = actAgregarServicio
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
          Action = actEliminarServicio
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
          Action = actModificarServicio
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
          Action = actConsultarServicio
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 3
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
    object actAgregarServicio: TAction
      Category = 'Servicios'
      Caption = 'Agregar'
      ImageIndex = 1
    end
    object actModificarServicio: TAction
      Category = 'Servicios'
      Caption = 'Modificar'
      ImageIndex = 29
    end
    object actEliminarServicio: TAction
      Category = 'Servicios'
      Caption = 'Eliminar'
      ImageIndex = 24
    end
    object actConsultarServicio: TAction
      Category = 'Servicios'
      Caption = 'Consultar'
      ImageIndex = 39
    end
  end
end

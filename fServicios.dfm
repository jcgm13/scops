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
      Left = 87
      Top = 13
      DataBinding.DataField = 'servicio_id'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = xdescripcionKeyPress
      Width = 100
    end
    object xdescripcion: TcxDBTextEdit
      Left = 87
      Top = 38
      DataBinding.DataField = 'descripcion'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = xdescripcionKeyPress
      Width = 400
    end
    object xcliente_id: TcxDBLookupComboBox
      Left = 87
      Top = 62
      DataBinding.DataField = 'cliente_id'
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
      TabOrder = 2
      Width = 400
    end
    object cxButton3: TcxButton
      Left = 500
      Top = 58
      Width = 113
      Height = 25
      Action = actCopiarInfoCliente
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      TabOrder = 3
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 764
      Top = 11
      TabStop = False
      DataBinding.DataField = 'activo'
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
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
    object xtipo_nomina: TcxDBRadioGroup
      Left = 690
      Top = 38
      Caption = 'Tipo de N'#243'mina'
      DataBinding.DataField = 'tipo_nomina'
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Semanal'
          Value = 'S'
        end
        item
          Caption = 'Quincenal'
          Value = 'Q'
        end>
      Style.LookAndFeel.SkinName = 'Office2016Colorful'
      StyleDisabled.LookAndFeel.SkinName = 'Office2016Colorful'
      TabOrder = 8
      Transparent = True
      Height = 45
      Width = 173
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
      LookAndFeel.SkinName = 'Office2016Colorful'
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
      LookAndFeel.SkinName = 'Office2016Colorful'
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
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013DarkGray'
    ClientRectBottom = 507
    ClientRectLeft = 2
    ClientRectRight = 892
    ClientRectTop = 28
    object cxTabSheet1: TcxTabSheet
      Caption = 'Informaci'#243'n General'
      ImageIndex = 0
      object Panel6: TPanel
        Left = 0
        Top = 443
        Width = 890
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        Padding.Left = 4
        Padding.Top = 4
        Padding.Right = 4
        Padding.Bottom = 4
        TabOrder = 0
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 103
        Top = 24
        DataBinding.DataField = 'DomCalle'
        ParentFont = False
        TabOrder = 1
        Width = 300
      end
      object cxLabel4: TcxLabel
        Left = 25
        Top = 25
        Caption = 'Calle'
        Transparent = True
      end
      object cxLabel5: TcxLabel
        Left = 410
        Top = 26
        Caption = 'Num. Exterior'
        Transparent = True
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 488
        Top = 24
        DataBinding.DataField = 'DomNoExt'
        ParentFont = False
        TabOrder = 4
        Width = 75
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 713
        Top = 24
        DataBinding.DataField = 'DomNoInt'
        ParentFont = False
        TabOrder = 5
        Width = 75
      end
      object cxLabel6: TcxLabel
        Left = 639
        Top = 26
        Caption = 'N'#250'm. Interior'
        Transparent = True
      end
      object cxLabel7: TcxLabel
        Left = 26
        Top = 51
        Caption = 'Colonia'
        Transparent = True
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 104
        Top = 50
        DataBinding.DataField = 'DomColonia'
        ParentFont = False
        TabOrder = 8
        Width = 300
      end
      object cxLabel8: TcxLabel
        Left = 410
        Top = 53
        Caption = 'C'#243'd. Postal'
        Transparent = True
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 488
        Top = 51
        DataBinding.DataField = 'DomCP'
        ParentFont = False
        TabOrder = 10
        Width = 75
      end
      object cxLabel9: TcxLabel
        Left = 26
        Top = 80
        Caption = 'Ciudad'
        Transparent = True
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 104
        Top = 78
        DataBinding.DataField = 'DomCiudad'
        ParentFont = False
        TabOrder = 12
        Width = 300
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 488
        Top = 78
        DataBinding.DataField = 'DomEstado'
        ParentFont = False
        TabOrder = 13
        Width = 300
      end
      object cxLabel10: TcxLabel
        Left = 410
        Top = 80
        Caption = 'Estado'
        Transparent = True
      end
      object cxLabel11: TcxLabel
        Left = 26
        Top = 107
        Caption = 'Tel'#233'fono 1'
        Transparent = True
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 104
        Top = 105
        DataBinding.DataField = 'Telefono1'
        ParentFont = False
        TabOrder = 16
        Width = 150
      end
      object cxLabel12: TcxLabel
        Left = 264
        Top = 107
        Caption = 'Tel'#233'fono 2'
        Transparent = True
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 359
        Top = 105
        DataBinding.DataField = 'Telefono2'
        ParentFont = False
        TabOrder = 18
        Width = 150
      end
      object cxLabel13: TcxLabel
        Left = 25
        Top = 134
        Caption = 'Tel. Emergencia 1'
        Transparent = True
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 104
        Top = 132
        DataBinding.DataField = 'TelefEmer1'
        ParentFont = False
        TabOrder = 20
        Width = 150
      end
      object cxLabel14: TcxLabel
        Left = 264
        Top = 134
        Caption = 'Tel. Emergencia 2'
        Transparent = True
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 359
        Top = 130
        DataBinding.DataField = 'TelefEmer2'
        ParentFont = False
        TabOrder = 22
        Width = 150
      end
      object cxLabel15: TcxLabel
        Left = 26
        Top = 159
        Caption = 'Fecha Inicio'
        Transparent = True
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 104
        Top = 157
        DataBinding.DataField = 'FechaIni'
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.DisplayFormat = 'dd/mm/yyyy'
        Properties.EditFormat = 'dd/mm/yyyy'
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 24
        Width = 100
      end
      object cxLabel16: TcxLabel
        Left = 222
        Top = 159
        Caption = 'Fecha T'#233'rmino'
        Transparent = True
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 300
        Top = 157
        DataBinding.DataField = 'FechaFin'
        ParentFont = False
        Properties.DateButtons = [btnToday]
        Properties.DisplayFormat = 'dd/mm/yyyy'
        Properties.EditFormat = 'dd/mm/yyyy'
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 26
        Width = 100
      end
      object cxLabel192: TcxLabel
        Left = 26
        Top = 196
        AutoSize = False
        Caption = 'REPRESENTANTE DE SEGURIDAD'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsRaised
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 18
        Width = 452
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 103
        Top = 226
        DataBinding.DataField = 'RepSeg'
        ParentFont = False
        TabOrder = 28
        Width = 350
      end
      object cxLabel17: TcxLabel
        Left = 25
        Top = 227
        Caption = 'Nombre'
        Transparent = True
      end
      object cxLabel18: TcxLabel
        Left = 26
        Top = 253
        Caption = 'Tel. Domicilio'
        Transparent = True
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 104
        Top = 252
        DataBinding.DataField = 'RepSegTD'
        ParentFont = False
        TabOrder = 31
        Width = 150
      end
      object cxLabel19: TcxLabel
        Left = 264
        Top = 255
        Caption = 'Tel. Celular'
        Transparent = True
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 328
        Top = 253
        DataBinding.DataField = 'RepSegTC'
        ParentFont = False
        TabOrder = 33
        Width = 150
      end
      object cxLabel20: TcxLabel
        Left = 25
        Top = 281
        Caption = 'Email'
        Transparent = True
      end
      object cxDBTextEdit15: TcxDBTextEdit
        Left = 103
        Top = 279
        DataBinding.DataField = 'RepSegEmail'
        ParentFont = False
        TabOrder = 35
        Width = 250
      end
      object cxLabel21: TcxLabel
        Left = 104
        Top = 321
        Caption = 'Comentarios'
        Transparent = True
      end
      object cxDBMemo1: TcxDBMemo
        Left = 104
        Top = 338
        DataBinding.DataField = 'Comentarios'
        ParentFont = False
        Properties.ScrollBars = ssVertical
        TabOrder = 37
        Height = 136
        Width = 375
      end
      object cxLabel22: TcxLabel
        Left = 486
        Top = 321
        Caption = 'Consignas Especiales'
        Transparent = True
      end
      object cxDBMemo2: TcxDBMemo
        Left = 485
        Top = 338
        DataBinding.DataField = 'consignas_especiales'
        ParentFont = False
        Properties.ScrollBars = ssVertical
        TabOrder = 39
        Height = 136
        Width = 375
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Funciones'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 890
        Height = 443
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013DarkGray'
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
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
        Top = 443
        Width = 890
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
          LookAndFeel.SkinName = 'Office2016Colorful'
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
          LookAndFeel.SkinName = 'Office2016Colorful'
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
          LookAndFeel.SkinName = 'Office2016Colorful'
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
          LookAndFeel.SkinName = 'Office2016Colorful'
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
        Width = 890
        Height = 479
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013DarkGray'
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
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
    object cxTabSheet5: TcxTabSheet
      Caption = 'Asignaci'#243'n de Equipo'
      ImageIndex = 4
      object Panel5: TPanel
        Left = 0
        Top = 443
        Width = 890
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
          890
          36)
        object cxButton16: TcxButton
          Left = 4
          Top = 4
          Width = 100
          Height = 28
          Align = alLeft
          Action = actAgregarEquipo
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2016Colorful'
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
          LookAndFeel.SkinName = 'Office2016Colorful'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 1
        end
        object cxLabel2: TcxLabel
          Left = 634
          Top = 1
          Anchors = [akTop, akRight]
          Caption = 'Aumentar Equipo Asignado: (Ctrl + Flecha Arriba)'
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          AnchorX = 876
        end
        object cxLabel3: TcxLabel
          Left = 640
          Top = 17
          Anchors = [akTop, akRight]
          Caption = 'Disminuir Equipo Asignado: (Ctrl + Flecha Abajo)'
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          AnchorX = 876
        end
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 890
        Height = 443
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013DarkGray'
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
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
    end
    object actMarcarSemana: TAction
      Category = 'Preasignacion'
      Caption = 'Marcar Semana'
    end
    object actProgramarDiurno: TAction
      Category = 'Preasignacion'
      Caption = 'Programar Diurno'
    end
    object actProgramarNocturno: TAction
      Category = 'Preasignacion'
      Caption = 'Programar Nocturno'
    end
    object actProgramar24T1: TAction
      Category = 'Preasignacion'
      Caption = 'Programar 24h T1'
    end
    object actProgramar24T2: TAction
      Category = 'Preasignacion'
      Caption = 'Programar 24h T2'
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
end

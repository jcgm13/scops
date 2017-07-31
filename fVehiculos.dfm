object frmVehiculos: TfrmVehiculos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Veh'#237'culos'
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
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object xvehiculo_id: TcxDBTextEdit
      Left = 73
      Top = 12
      DataBinding.DataField = 'vehiculo_id'
      DataBinding.DataSource = dmMain.dsVehiculosEdit
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 0
      OnKeyPress = xdescripcionKeyPress
      Width = 75
    end
    object xEstatus: TcxDBImageComboBox
      Left = 576
      Top = 11
      DataBinding.DataField = 'activo'
      DataBinding.DataSource = dmMain.dsVehiculosEdit
      ParentFont = False
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
      Properties.ReadOnly = False
      Style.StyleController = frmPrincipal.cxEditStyleController1
      TabOrder = 1
      Width = 99
    end
    object Label1: TcxLabel
      Left = 23
      Top = 14
      Caption = 'Veh'#237'culo'
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 596
    Width = 694
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 1
    object cxButton4: TcxButton
      Left = 490
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
      Left = 590
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
    Top = 53
    Width = 694
    Height = 543
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 541
    ClientRectLeft = 2
    ClientRectRight = 692
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = 'Informaci'#243'n General'
      ImageIndex = 0
      object vGridVehiculos: TcxDBVerticalGrid
        Left = 0
        Top = 0
        Width = 690
        Height = 479
        BorderStyle = cxcbsNone
        Align = alClient
        Images = frmPrincipal.imgListAcciones
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2016Colorful'
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
        DataController.DataSource = dmMain.dsVehiculosEdit
        DataController.GridMode = True
        Version = 1
        object vGridVehiculosCategoryRow1: TcxCategoryRow
          Options.Focusing = False
          Properties.Caption = 'GENERAL'
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object vGridVehiculosDBEditorRow5: TcxDBEditorRow
          Properties.Caption = 'Oficina'
          Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.EditProperties.DropDownListStyle = lsFixedList
          Properties.EditProperties.KeyFieldNames = 'Oficina'
          Properties.EditProperties.ListColumns = <
            item
              FieldName = 'Descripcion'
            end
            item
              MinWidth = 0
              Width = 0
              FieldName = 'Oficina'
            end>
          Properties.EditProperties.ListOptions.ShowHeader = False
          Properties.EditProperties.ListSource = dmMain.dsOficinas
          Properties.DataBinding.FieldName = 'oficina'
          ID = 1
          ParentID = 0
          Index = 0
          Version = 1
        end
        object vGridVehiculosDBEditorRow1: TcxDBEditorRow
          Properties.Caption = 'Estatus'
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.Items = <
            item
              Description = 'ASIGNADO'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'SIN ASIGNAR'
              Value = 1
            end>
          Properties.DataBinding.FieldName = 'estatus'
          ID = 2
          ParentID = 0
          Index = 1
          Version = 1
        end
        object vGridVehiculosDBEditorRow4: TcxDBEditorRow
          Properties.Caption = 'Estado'
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.Items = <
            item
              Description = 'BUEN ESTADO'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'REQUIERE SERV. MANT.'
              Value = 1
            end
            item
              Description = 'EN TALLER'
              Value = 2
            end
            item
              Description = 'EN CORRAL'#211'N'
              Value = 3
            end
            item
              Description = 'INSERVIBLE'
              Value = 4
            end>
          Properties.DataBinding.FieldName = 'estado'
          ID = 3
          ParentID = 0
          Index = 2
          Version = 1
        end
        object vGridVehiculosDBEditorRow2: TcxDBEditorRow
          Properties.Caption = 'Tipo'
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.Items = <
            item
              Description = 'AUTOM'#211'VIL'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'CAMIONETA'
              Value = 1
            end
            item
              Description = 'CAMI'#211'N'
              Value = 2
            end
            item
              Description = 'MOTOCICLETA'
              Value = 3
            end>
          Properties.DataBinding.FieldName = 'tipo'
          ID = 4
          ParentID = 0
          Index = 3
          Version = 1
        end
        object vGridVehiculosDBEditorRow3: TcxDBEditorRow
          Properties.Caption = 'Marca'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'marca'
          ID = 5
          ParentID = 0
          Index = 4
          Version = 1
        end
        object vGridVehiculosDBEditorRow6: TcxDBEditorRow
          Properties.Caption = 'Submarca'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'submarca'
          ID = 6
          ParentID = 0
          Index = 5
          Version = 1
        end
        object vGridVehiculosDBEditorRow7: TcxDBEditorRow
          Properties.Caption = 'Modelo'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'modelo'
          ID = 7
          ParentID = 0
          Index = 6
          Version = 1
        end
        object vGridVehiculosDBEditorRow8: TcxDBEditorRow
          Properties.Caption = 'Propietario'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'propietario'
          ID = 8
          ParentID = 0
          Index = 7
          Version = 1
        end
        object vGridVehiculosDBEditorRow9: TcxDBEditorRow
          Properties.Caption = 'N'#250'mero de Serie'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'noserie'
          ID = 9
          ParentID = 0
          Index = 8
          Version = 1
        end
        object vGridVehiculosDBEditorRow10: TcxDBEditorRow
          Properties.Caption = 'N'#250'mero de Motor'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'nomotor'
          ID = 10
          ParentID = 0
          Index = 9
          Version = 1
        end
        object vGridVehiculosDBEditorRow11: TcxDBEditorRow
          Properties.Caption = 'Color'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'color'
          ID = 11
          ParentID = 0
          Index = 10
          Version = 1
        end
        object vGridVehiculosDBEditorRow12: TcxDBEditorRow
          Properties.Caption = 'Blindaje'
          Properties.EditPropertiesClassName = 'TcxRadioGroupProperties'
          Properties.EditProperties.Items = <
            item
              Caption = 'SI'
              Value = 'SI'
            end
            item
              Caption = 'NO'
              Value = 'NO'
            end>
          Properties.DataBinding.FieldName = 'blindaje'
          ID = 12
          ParentID = 0
          Index = 11
          Version = 1
        end
        object vGridVehiculosDBEditorRow13: TcxDBEditorRow
          Properties.Caption = 'Transmisi'#243'n'
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.Items = <
            item
              Description = 'AUTOM'#193'TICA'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'EST'#193'NDAR'
              Value = 1
            end>
          Properties.DataBinding.FieldName = 'transmision'
          ID = 13
          ParentID = 0
          Index = 12
          Version = 1
        end
        object vGridVehiculosDBEditorRow22: TcxDBEditorRow
          Properties.Caption = 'Cilindros'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.DecimalPlaces = 0
          Properties.EditProperties.DisplayFormat = '0'
          Properties.DataBinding.FieldName = 'cilindros'
          ID = 14
          ParentID = 0
          Index = 13
          Version = 1
        end
        object vGridVehiculosDBEditorRow24: TcxDBEditorRow
          Properties.Caption = 'Placas'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'placas'
          ID = 15
          ParentID = 0
          Index = 14
          Version = 1
        end
        object vGridVehiculosDBEditorRow25: TcxDBEditorRow
          Properties.Caption = 'Tipo Placas'
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.Items = <
            item
              Description = 'PARTICULAR'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'P'#218'BLICO'
              Value = 1
            end
            item
              Description = 'CARGA'
              Value = 2
            end>
          Properties.DataBinding.FieldName = 'placastipo'
          ID = 16
          ParentID = 0
          Index = 15
          Version = 1
        end
        object vGridVehiculosDBEditorRow26: TcxDBEditorRow
          Properties.Caption = 'Origen Placas'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'placas_origen'
          ID = 17
          ParentID = 0
          Index = 16
          Version = 1
        end
        object vGridVehiculosDBEditorRow27: TcxDBEditorRow
          Properties.Caption = 'Combustible'
          Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
          Properties.EditProperties.DropDownListStyle = lsFixedList
          Properties.EditProperties.Items.Strings = (
            'GASOLINA MAGNA'
            'GASOLINA PREMIUM'
            'DIESEL')
          Properties.DataBinding.FieldName = 'combustible'
          ID = 18
          ParentID = 0
          Index = 17
          Version = 1
        end
        object vGridVehiculosDBEditorRow28: TcxDBEditorRow
          Properties.Caption = 'Capacidad Tanque'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.DecimalPlaces = 0
          Properties.EditProperties.DisplayFormat = '0'
          Properties.DataBinding.FieldName = 'capacidadtanque'
          ID = 19
          ParentID = 0
          Index = 18
          Version = 1
        end
        object vGridVehiculosDBEditorRow16: TcxDBEditorRow
          Properties.Caption = 'Rendimiento'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.DecimalPlaces = 0
          Properties.EditProperties.DisplayFormat = '0'
          Properties.DataBinding.FieldName = 'rendimiento'
          ID = 20
          ParentID = 0
          Index = 19
          Version = 1
        end
        object vGridVehiculosCategoryRow2: TcxCategoryRow
          Properties.Caption = 'SEGURO'
          ID = 21
          ParentID = -1
          Index = 1
          Version = 1
        end
        object vGridVehiculosDBEditorRow14: TcxDBEditorRow
          Properties.Caption = 'Compa'#241#237'a'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'segcompania'
          ID = 22
          ParentID = 21
          Index = 0
          Version = 1
        end
        object vGridVehiculosDBEditorRow15: TcxDBEditorRow
          Properties.Caption = 'Agente'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'segagente'
          ID = 23
          ParentID = 21
          Index = 1
          Version = 1
        end
        object vGridVehiculosDBEditorRow18: TcxDBEditorRow
          Properties.Caption = 'Tel'#233'fono Siniestros'
          Properties.ImageIndex = 78
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'segtelsiniestros'
          ID = 24
          ParentID = 21
          Index = 2
          Version = 1
        end
        object vGridVehiculosDBEditorRow17: TcxDBEditorRow
          Properties.Caption = 'P'#243'liza'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'segpoliza'
          ID = 25
          ParentID = 21
          Index = 3
          Version = 1
        end
        object vGridVehiculosDBEditorRow29: TcxDBEditorRow
          Properties.Caption = 'Inciso'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'seginciso'
          ID = 26
          ParentID = 21
          Index = 4
          Version = 1
        end
        object vGridVehiculosDBEditorRow30: TcxDBEditorRow
          Properties.Caption = 'Endoso'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'segendoso'
          ID = 27
          ParentID = 21
          Index = 5
          Version = 1
        end
        object vGridVehiculosDBEditorRow31: TcxDBEditorRow
          Properties.Caption = 'Fecha Registro'
          Properties.ImageIndex = 14
          Properties.EditPropertiesClassName = 'TcxDateEditProperties'
          Properties.EditProperties.DateButtons = [btnToday]
          Properties.EditProperties.SaveTime = False
          Properties.EditProperties.ShowTime = False
          Properties.DataBinding.FieldName = 'segregistro'
          ID = 28
          ParentID = 21
          Index = 6
          Version = 1
        end
        object vGridVehiculosDBEditorRow32: TcxDBEditorRow
          Properties.Caption = 'Fecha Vencimiento'
          Properties.ImageIndex = 14
          Properties.EditPropertiesClassName = 'TcxDateEditProperties'
          Properties.EditProperties.DateButtons = [btnToday]
          Properties.EditProperties.SaveTime = False
          Properties.EditProperties.ShowTime = False
          Properties.DataBinding.FieldName = 'segvencimiento'
          ID = 29
          ParentID = 21
          Index = 7
          Version = 1
        end
        object vGridVehiculosDBEditorRow33: TcxDBEditorRow
          Properties.Caption = 'Valor Convenido'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.DisplayFormat = ',0.00'
          Properties.EditProperties.UseThousandSeparator = True
          Properties.DataBinding.FieldName = 'segvalconvenido'
          ID = 30
          ParentID = 21
          Index = 8
          Version = 1
        end
        object vGridVehiculosDBEditorRow34: TcxDBEditorRow
          Properties.Caption = 'Deducible Da'#241'os Materiales'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.DisplayFormat = ',0.00'
          Properties.EditProperties.UseThousandSeparator = True
          Properties.DataBinding.FieldName = 'segdeducdm'
          ID = 31
          ParentID = 21
          Index = 9
          Version = 1
        end
        object vGridVehiculosDBEditorRow35: TcxDBEditorRow
          Properties.Caption = 'Deducible Robo'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.DisplayFormat = ',0.00'
          Properties.EditProperties.UseThousandSeparator = True
          Properties.DataBinding.FieldName = 'segdeducrobo'
          ID = 32
          ParentID = 21
          Index = 10
          Version = 1
        end
        object vGridVehiculosDBEditorRow23: TcxDBEditorRow
          Properties.Caption = 'Responsabilidad Civil'
          Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.DisplayFormat = ',0.00'
          Properties.DataBinding.FieldName = 'segrc'
          ID = 33
          ParentID = 21
          Index = 11
          Version = 1
        end
        object vGridVehiculosDBEditorRow36: TcxDBEditorRow
          Properties.Caption = 'Cobertura'
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Alignment.Horz = taLeftJustify
          Properties.EditProperties.Items = <
            item
              Description = 'RESP. CIVIL'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'LIMITADA'
              Value = 1
            end
            item
              Description = 'AMPLIA'
              Value = 2
            end>
          Properties.DataBinding.FieldName = 'segcobertura'
          ID = 34
          ParentID = 21
          Index = 12
          Version = 1
        end
        object vGridVehiculosCategoryRow3: TcxCategoryRow
          Properties.Caption = 'VERIFICACI'#211'N'
          ID = 35
          ParentID = -1
          Index = 2
          Version = 1
        end
        object vGridVehiculosDBEditorRow19: TcxDBEditorRow
          Properties.Caption = 'Fecha'
          Properties.ImageIndex = 14
          Properties.EditPropertiesClassName = 'TcxDateEditProperties'
          Properties.EditProperties.DateButtons = [btnToday]
          Properties.EditProperties.DateOnError = deToday
          Properties.EditProperties.SaveTime = False
          Properties.EditProperties.ShowTime = False
          Properties.DataBinding.FieldName = 'verificfecha'
          ID = 36
          ParentID = 35
          Index = 0
          Version = 1
        end
        object vGridVehiculosDBEditorRow20: TcxDBEditorRow
          Properties.Caption = 'Obligatoria'
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.ValueChecked = 1
          Properties.EditProperties.ValueUnchecked = 0
          Properties.DataBinding.FieldName = 'verificobligatoria'
          ID = 37
          ParentID = 35
          Index = 1
          Version = 1
        end
        object vGridVehiculosDBEditorRow21: TcxDBEditorRow
          Properties.Caption = 'Pr'#243'xima'
          Properties.ImageIndex = 14
          Properties.EditPropertiesClassName = 'TcxDateEditProperties'
          Properties.EditProperties.DateButtons = [btnToday]
          Properties.EditProperties.DateOnError = deToday
          Properties.EditProperties.SaveTime = False
          Properties.EditProperties.ShowTime = False
          Properties.DataBinding.FieldName = 'verficproxima'
          ID = 38
          ParentID = 35
          Index = 2
          Version = 1
        end
        object vGridVehiculosDBEditorRow46: TcxDBEditorRow
          Height = 50
          Properties.Caption = 'Comentarios'
          Properties.EditPropertiesClassName = 'TcxMemoProperties'
          Properties.EditProperties.CharCase = ecUpperCase
          Properties.DataBinding.FieldName = 'comentarios'
          ID = 39
          ParentID = -1
          Index = 3
          Version = 1
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 479
        Width = 690
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
          Height = 28
          Align = alLeft
          Action = actContraer
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2016Colorful'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Combustible'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 479
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
        TabOrder = 0
        object cxButton6: TcxButton
          Left = 4
          Top = 4
          Width = 100
          Height = 28
          Align = alLeft
          Action = actAgregarCombustible
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
          Action = actEliminarCombustible
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
          Action = actModificarCombustible
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
          Action = actVerCombustible
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2016Colorful'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 3
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 690
        Height = 479
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2016Colorful'
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmMain.dsVehiculosCombustible
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
          Styles.Header = frmPrincipal.cxStyle1
          object cxGrid1DBTableView1ColumnFecha: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'fecha'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.SaveTime = False
            Properties.ShowTime = False
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 60
          end
          object cxGrid1DBTableView1ColumnKilometraje: TcxGridDBColumn
            Caption = 'Kilometraje'
            DataBinding.FieldName = 'kilometraje'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = ',0'
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object cxGrid1DBTableView1ColumnCombustible: TcxGridDBColumn
            Caption = 'Combustible'
            DataBinding.FieldName = 'tipocombustible'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 100
          end
          object cxGrid1DBTableView1ColumnLitros: TcxGridDBColumn
            Caption = 'Litros'
            DataBinding.FieldName = 'litros'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Grouping = False
            Width = 50
          end
          object cxGrid1DBTableView1ColumnCantidad: TcxGridDBColumn
            Caption = 'Cantidad'
            DataBinding.FieldName = 'cantidad'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Grouping = False
            Width = 75
          end
          object cxGrid1DBTableView1ColumnGasolineria: TcxGridDBColumn
            Caption = 'Gasoliner'#237'a'
            DataBinding.FieldName = 'gasolineria'
            Options.Editing = False
            Options.Grouping = False
            Width = 180
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Mantenimiento y Reparaciones'
      ImageIndex = 2
      object Panel5: TPanel
        Left = 0
        Top = 479
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
        TabOrder = 0
        object cxButton3: TcxButton
          Left = 4
          Top = 4
          Width = 100
          Height = 28
          Align = alLeft
          Action = actAgregarManto
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2016Colorful'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 0
        end
        object cxButton9: TcxButton
          Left = 204
          Top = 4
          Width = 100
          Height = 28
          Align = alLeft
          Action = actEliminarManto
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2016Colorful'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 1
        end
        object cxButton10: TcxButton
          Left = 104
          Top = 4
          Width = 100
          Height = 28
          Align = alLeft
          Action = actModificarManto
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2016Colorful'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 2
        end
        object cxButton11: TcxButton
          Left = 304
          Top = 4
          Width = 100
          Height = 28
          Align = alLeft
          Action = actVerManto
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2016Colorful'
          ParentShowHint = False
          ShowHint = True
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 3
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 690
        Height = 479
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2016Colorful'
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmMain.dsVehiculosReparaciones
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.Header = frmPrincipal.cxStyle1
          object cxGridDBColumnEntrada: TcxGridDBColumn
            Caption = 'Entrada'
            DataBinding.FieldName = 'fecha_entrada'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 60
          end
          object cxGridDBColumnSalida: TcxGridDBColumn
            Caption = 'Salida'
            DataBinding.FieldName = 'fecha_salida'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 60
          end
          object cxGridDBTableView1Column3: TcxGridDBColumn
            Caption = 'Kilometraje'
            DataBinding.FieldName = 'kilometraje'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = ',0'
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 70
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
          object cxGridDBTableView1ColumnCosto: TcxGridDBColumn
            Caption = 'Costo'
            DataBinding.FieldName = 'costo'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object cxGridDBTableView1ColumnTaller: TcxGridDBColumn
            Caption = 'Taller'
            DataBinding.FieldName = 'taller'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 150
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
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
    object actAgregarCombustible: TAction
      Category = 'Combustible'
      Caption = 'Agregar'
      ImageIndex = 1
      OnExecute = actAgregarCombustibleExecute
    end
    object actModificarCombustible: TAction
      Category = 'Combustible'
      Caption = 'Modificar'
      ImageIndex = 29
      OnExecute = actModificarCombustibleExecute
    end
    object actEliminarCombustible: TAction
      Category = 'Combustible'
      Caption = 'Eliminar'
      ImageIndex = 24
      OnExecute = actEliminarCombustibleExecute
    end
    object actVerCombustible: TAction
      Category = 'Combustible'
      Caption = 'Consultar'
      ImageIndex = 39
      OnExecute = actVerCombustibleExecute
    end
    object actAgregarManto: TAction
      Category = 'Mantenimientos'
      Caption = 'Agregar'
      ImageIndex = 1
      OnExecute = actAgregarMantoExecute
    end
    object actModificarManto: TAction
      Category = 'Mantenimientos'
      Caption = 'Modificar'
      ImageIndex = 29
      OnExecute = actModificarMantoExecute
    end
    object actEliminarManto: TAction
      Category = 'Mantenimientos'
      Caption = 'Eliminar'
      ImageIndex = 24
      OnExecute = actEliminarMantoExecute
    end
    object actVerManto: TAction
      Category = 'Mantenimientos'
      Caption = 'Consultar'
      ImageIndex = 39
      OnExecute = actVerMantoExecute
    end
  end
end

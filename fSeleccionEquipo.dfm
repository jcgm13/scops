object frmSeleccionEquipo: TfrmSeleccionEquipo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecci'#243'n de Equipo'
  ClientHeight = 455
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGridMain: TcxGrid
    Left = 0
    Top = 0
    Width = 634
    Height = 419
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013DarkGray'
    object ViewEquipo: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FindPanel.DisplayMode = fpdmAlways
      FindPanel.InfoText = 'Capture informaci'#243'n a buscar...'
      FindPanel.ShowCloseButton = False
      OnCellDblClick = ViewEquipoCellDblClick
      DataController.DataSource = dmMain.dsEquipoList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'elemento'
          Column = ViewEquipoColumnEquipoId
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.Header = frmPrincipal.cxStyle1
      object ViewEquipoColumnEquipoId: TcxGridDBColumn
        Caption = 'Equipo'
        DataBinding.FieldName = 'equipo_id'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '0'
        Properties.UseLeftAlignmentOnEditing = False
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 50
      end
      object ViewEquipoColumnTipo: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'tipo'
        Options.Editing = False
        Width = 150
      end
      object ViewEquipoColumnDescripcion: TcxGridDBColumn
        Caption = 'Descripci'#243'n'
        DataBinding.FieldName = 'descripcion'
        Width = 250
      end
      object ViewEquipoColumnMarca: TcxGridDBColumn
        Caption = 'Marca'
        DataBinding.FieldName = 'marca'
        Width = 150
      end
      object ViewEquipoColumnModelo: TcxGridDBColumn
        Caption = 'Modelo'
        DataBinding.FieldName = 'modelo'
        Width = 150
      end
    end
    object cxGridMainLevelMain: TcxGridLevel
      GridView = ViewEquipo
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 419
    Width = 634
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 1
    object cxButton4: TcxButton
      Left = 430
      Top = 4
      Width = 100
      Height = 28
      Align = alRight
      Action = actAceptar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 0
    end
    object cxButton5: TcxButton
      Left = 530
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
  object ActionList1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 508
    Top = 12
    object actAceptar: TAction
      Caption = 'Aceptar [F2]'
      ImageIndex = 6
      ShortCut = 113
      OnExecute = actAceptarExecute
    end
    object actCerrar: TAction
      Caption = 'Cerrar (ESC)'
      ImageIndex = 15
      ShortCut = 27
      OnExecute = actCerrarExecute
    end
  end
end

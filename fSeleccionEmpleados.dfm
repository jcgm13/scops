object frmSeleccionEmpleados: TfrmSeleccionEmpleados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecci'#243'n de Empleados'
  ClientHeight = 455
  ClientWidth = 594
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
    Width = 594
    Height = 419
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013DarkGray'
    object ViewEmpleados: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FindPanel.DisplayMode = fpdmAlways
      FindPanel.InfoText = 'Capture informaci'#243'n a buscar...'
      FindPanel.ShowCloseButton = False
      OnCellDblClick = ViewEmpleadosCellDblClick
      DataController.DataSource = dmMain.dsEmpleadosList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'elemento'
          Column = ViewEmpleadosColumnElemento
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
      object ViewEmpleadosColumnElemento: TcxGridDBColumn
        Caption = 'Empleado'
        DataBinding.FieldName = 'empleado_id'
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
      object ViewEmpleadosColumnNombres: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'nombre_empleado'
        Options.Editing = False
        Width = 350
      end
    end
    object cxGridMainLevelMain: TcxGridLevel
      GridView = ViewEmpleados
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 419
    Width = 594
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 1
    object cxButton4: TcxButton
      Left = 390
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
      Left = 490
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

object frmEmpleadosReingreso: TfrmEmpleadosReingreso
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Reingreso de Empleados'
  ClientHeight = 485
  ClientWidth = 652
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
  object dxBevel1: TdxBevel
    Left = 23
    Top = 96
    Width = 594
    Height = 9
    Shape = dxbsLineTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 449
    Width = 652
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 2
    object cxButton4: TcxButton
      Left = 416
      Top = 4
      Width = 116
      Height = 28
      Align = alRight
      Action = actGuardar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      TabOrder = 0
    end
    object cxButton5: TcxButton
      Left = 532
      Top = 4
      Width = 116
      Height = 28
      Align = alRight
      Action = actCerrar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      TabOrder = 1
    end
  end
  object Label1: TcxLabel
    Left = 23
    Top = 18
    Caption = 'Empleado'
    Transparent = True
  end
  object Label2: TcxLabel
    Left = 23
    Top = 41
    Caption = 'Nombre'
    Transparent = True
  end
  object lblNombre: TcxLabel
    Left = 117
    Top = 41
    AutoSize = False
    Caption = 'empleadoNombre'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
    Height = 17
    Width = 500
  end
  object lblId: TcxLabel
    Left = 117
    Top = 18
    Caption = 'empleadoId'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object C: TcxLabel
    Left = 23
    Top = 64
    Caption = 'Servicio Asignado'
    Transparent = True
  end
  object lblServicio: TcxLabel
    Left = 117
    Top = 64
    AutoSize = False
    Caption = 'empleadoServicio'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
    Height = 17
    Width = 500
  end
  object xfecha_reingreso: TcxDateEdit
    Left = 117
    Top = 322
    Properties.DateButtons = [btnToday]
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 0
    Width = 100
  end
  object cxLabel1: TcxLabel
    Left = 23
    Top = 323
    Caption = 'Fecha Reingreso'
    Transparent = True
  end
  object cxLabel3: TcxLabel
    Left = 23
    Top = 349
    Caption = 'Observaciones'
    Transparent = True
  end
  object xobservaciones: TcxMemo
    Left = 117
    Top = 349
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ScrollBars = ssVertical
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 1
    Height = 89
    Width = 500
  end
  object cxGridBitacora: TcxGrid
    Left = 23
    Top = 111
    Width = 594
    Height = 205
    TabOrder = 11
    LookAndFeel.SkinName = 'Office2013DarkGray'
    object cxGridBitacoraDBBandedTableViewBitacora: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ScrollBars = ssVertical
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Bit'#225'cora'
          Options.Moving = False
          Styles.Header = frmPrincipal.cxStyle1
        end>
      object cxGridBitacoraDBBandedTableViewBitacoraColumn1: TcxGridDBBandedColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'fecha'
        PropertiesClassName = 'TcxDateEditProperties'
        MinWidth = 90
        Options.Editing = False
        Options.Grouping = False
        Options.Sorting = False
        Styles.Header = frmPrincipal.cxStyle1
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridBitacoraDBBandedTableViewBitacoraColumn2: TcxGridDBBandedColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'descripcion'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = frmPrincipal.imgListAcciones
        Properties.Items = <
          item
            Description = 'ALTA'
            ImageIndex = 9
            Value = 'ALTA'
          end
          item
            Description = 'BAJA'
            ImageIndex = 10
            Value = 'BAJA'
          end
          item
            Description = 'REINGRESO'
            ImageIndex = 11
            Value = 'REINGRESO'
          end>
        MinWidth = 100
        Options.Editing = False
        Options.Grouping = False
        Options.Sorting = False
        Styles.Header = frmPrincipal.cxStyle1
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridBitacoraDBBandedTableViewBitacoraColumn3: TcxGridDBBandedColumn
        Caption = 'Observaciones'
        DataBinding.FieldName = 'observaciones'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        MinWidth = 300
        Options.Editing = False
        Options.Grouping = False
        Options.Sorting = False
        Styles.Header = frmPrincipal.cxStyle1
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGridBitacoraLevel1: TcxGridLevel
      GridView = cxGridBitacoraDBBandedTableViewBitacora
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
    end
    object actContraer: TAction
      Caption = 'Contraer Todo [F7]'
      ImageIndex = 111
      ShortCut = 118
    end
  end
end

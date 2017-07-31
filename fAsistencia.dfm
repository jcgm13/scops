object frmAsistencia: TfrmAsistencia
  Left = 183
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Asistencia'
  ClientHeight = 572
  ClientWidth = 894
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 894
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TcxLabel
      Left = 23
      Top = 13
      Caption = 'Asistencia del dia: '
      Transparent = True
    end
    object lblDiaAsistencia: TcxLabel
      Left = 122
      Top = 11
      Caption = 'dia de asistencia'
      ParentColor = False
      ParentFont = False
      Style.Color = 8454143
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 536
    Width = 894
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 1
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
      TabOrder = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 43
    Width = 894
    Height = 493
    Align = alClient
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = cxGrid1DBBandedTableView1CellDblClick
      DataController.DataSource = dmMain.dsAsistenciaDetalle
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.BandMoving = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ScrollBars = ssVertical
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = 'Servicio'
        end
        item
          Caption = 'Funci'#243'n'
        end
        item
          Caption = 'Empleado'
        end
        item
          Caption = 'Entrada'
        end
        item
          Caption = 'Salida'
        end
        item
        end>
      object cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn
        Caption = 'Clave'
        DataBinding.FieldName = 'servicio_id'
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn
        Caption = 'Descripci'#243'n'
        DataBinding.FieldName = 'descripcion_servicio'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'descripcion_tipo_funcion'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn
        Caption = 'Clave'
        DataBinding.FieldName = 'empleado_id'
        Width = 40
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'nombre_empleado'
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column6: TcxGridDBBandedColumn
        Caption = 'Programada'
        DataBinding.FieldName = 'horaentprog'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        Styles.Content = cxStyle1
        Width = 60
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column7: TcxGridDBBandedColumn
        Caption = 'Asistencia'
        DataBinding.FieldName = 'horaentrada'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        Width = 60
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column8: TcxGridDBBandedColumn
        Caption = 'Programada'
        DataBinding.FieldName = 'horasalprog'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        Styles.Content = cxStyle1
        Width = 60
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column9: TcxGridDBBandedColumn
        Caption = 'Asistencia'
        DataBinding.FieldName = 'horasalida'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        Width = 60
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column10: TcxGridDBBandedColumn
        Caption = 'Observaciones'
        DataBinding.FieldName = 'observaciones'
        Width = 150
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column11: TcxGridDBBandedColumn
        Caption = 'Horas Extra'
        DataBinding.FieldName = 'horas_extra'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = ',0'
        Properties.UseLeftAlignmentOnEditing = False
        HeaderAlignmentHorz = taRightJustify
        Width = 65
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object ActionList1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 528
    Top = 128
    object actCerrar: TAction
      Caption = 'Cerrar'
      ImageIndex = 15
      OnExecute = actCerrarExecute
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15263976
    end
  end
end

object frmReportes: TfrmReportes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Reportes'
  ClientHeight = 123
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ScreenSnap = True
  PixelsPerInch = 96
  TextHeight = 13
  object btnImprimir: TcxButton
    Left = 203
    Top = 44
    Width = 198
    Height = 36
    Caption = 'Imprimir'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    TabOrder = 0
    OnClick = btnImprimirClick
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42162.931596365740000000
    ReportOptions.LastChange = 42162.931596365740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 16
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'vigencia'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Picture1: TfrxPictureView
        ShiftMode = smDontShift
        Width = 740.787880000000000000
        Height = 400.630180000000000000
        HightQuality = True
        Transparent = False
        TransparentColor = clWhite
      end
      object Picture2: TfrxPictureView
        Left = 28.456710000000000000
        Top = 20.897650000000000000
        Width = 98.267780000000000000
        Height = 113.385900000000000000
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo1: TfrxMemoView
        Left = 26.456710000000000000
        Top = 167.519790000000000000
        Width = 238.110390000000000000
        Height = 34.015770000000000000
        DataField = 'nombre'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."nombre"]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 26.456710000000000000
        Top = 219.212740000000000000
        Width = 238.110390000000000000
        Height = 15.118120000000000000
        DataField = 'descripcion_puesto'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."descripcion_puesto"]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 345.157700000000000000
        Top = 134.063080000000000000
        Width = 181.417440000000000000
        Height = 15.118120000000000000
        DataField = 'nss'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."nss"]')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 343.937230000000000000
        Top = 105.826840000000000000
        Width = 181.417440000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[vigencia]')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 506.457020000000000000
        Top = 158.740260000000000000
        Width = 52.913420000000000000
        Height = 15.118120000000000000
        DataField = 'empleado_id'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."empleado_id"]')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 302.362400000000000000
        Top = 211.653680000000000000
        Width = 268.346630000000000000
        Height = 15.118120000000000000
        DataField = 'nombre'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."nombre"]')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 408.189240000000000000
        Top = 158.740260000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        DataField = 'tipo_sangre'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."tipo_sangre"]')
        ParentFont = False
      end
    end
  end
  object frxReport2: TfrxReport
    Version = '5.1.5'
    DataSet = frxDBDataset2
    DataSetName = 'frxDBDataset2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42162.931596365700000000
    ReportOptions.LastChange = 42162.931596365700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 72
    Top = 16
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      object Picture2: TfrxPictureView
        Left = 659.417750000000000000
        Top = 36.795300000000000000
        Width = 117.165430000000000000
        Height = 132.283550000000000000
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Picture1: TfrxPictureView
        Left = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 335.000000000000000000
        Height = 148.000000000000000000
        AutoSize = True
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo1: TfrxMemoView
        Left = 37.795300000000000000
        Top = 188.519790000000000000
        Width = 737.008350000000000000
        Height = 94.488250000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          
            ' CENTRO INTEGRAL FEDERAL DE SEGURIDAD PRIVADA Y ESTUDIO S.A. DE ' +
            'C.V. '
          ' CIF0411025DD9'
          
            ' PIO XI NUM 134 COL. SAN JERONIMO   C.P.: 37148   Tel'#233'fono: 477 ' +
            '711 12 34  4777112633'
          ' LEON, GUANAJUATO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        Left = 37.795300000000000000
        Top = 283.008040000000000000
        Width = 737.008350000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 15329769
        Memo.UTF8W = (
          ' DATOS PERSONALES')
        ParentFont = False
        VAlign = vaCenter
      end
      object Shape1: TfrxShapeView
        Left = 37.795300000000000000
        Top = 309.464750000000000000
        Width = 737.008350000000000000
        Height = 151.181200000000000000
      end
      object Memo3: TfrxMemoView
        Left = 52.913420000000000000
        Top = 320.803340000000000000
        Width = 204.094620000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'APELLIDO PATERNO')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 264.567100000000000000
        Top = 320.803340000000000000
        Width = 204.094488190000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'APELLIDO MATERNO')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 480.000310000000000000
        Top = 320.803340000000000000
        Width = 173.858380000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'NOMBRE (S)')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 52.913420000000000000
        Top = 337.133858267716500000
        Width = 204.094620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."apellido_paterno"]')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 264.567100000000000000
        Top = 337.133858267716500000
        Width = 204.094488190000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."apellido_materno"]')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 480.000310000000000000
        Top = 337.133858267716500000
        Width = 173.858380000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."nombres"]')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 52.913420000000000000
        Top = 366.157700000000000000
        Width = 200.315090000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'DOMICILIO')
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 440.189240000000000000
        Top = 366.157700000000000000
        Width = 52.913288190000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'C.P.')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 498.897960000000000000
        Top = 366.157700000000000000
        Width = 109.606370000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'TEL'#201'FONO')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 612.283860000000000000
        Top = 366.157700000000000000
        Width = 143.622140000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'NACIONALIDAD')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 52.913420000000000000
        Top = 382.488188980000000000
        Width = 200.315090000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."domicilio"]')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 440.189240000000000000
        Top = 382.488188976378000000
        Width = 52.913288190000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."codigo_postal"]')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 498.897960000000000000
        Top = 382.488188976378000000
        Width = 109.606370000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."telefono_domicilio"]')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 612.283860000000000000
        Top = 382.488188976378000000
        Width = 143.622140000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'MEXICANO')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 52.913420000000000000
        Top = 411.512060000000000000
        Width = 68.031540000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'ESTATURA')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 128.504020000000000000
        Top = 411.512060000000000000
        Width = 45.354228190000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'PESO')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 181.417440000000000000
        Top = 411.512060000000000000
        Width = 109.606370000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'COLOR DE PIEL')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 298.582870000000000000
        Top = 411.512060000000000000
        Width = 109.606370000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'COLOR DE OJOS')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 52.913420000000000000
        Top = 427.409710000000000000
        Width = 68.031540000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."estatura"]')
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 128.504020000000000000
        Top = 427.409710000000000000
        Width = 45.354228190000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."peso"]')
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 181.417440000000000000
        Top = 427.409710000000000000
        Width = 109.606370000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."color_piel"]')
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 298.582870000000000000
        Top = 427.409710000000000000
        Width = 109.606370000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."color_ojos"]')
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 415.748300000000000000
        Top = 411.512060000000000000
        Width = 117.165430000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'TIPO DE CABELLO')
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 415.748300000000000000
        Top = 427.409710000000000000
        Width = 117.165430000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."tipo_cabello"]')
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 540.472790000000000000
        Top = 411.512060000000000000
        Width = 109.606370000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'ESTADO CIVIL')
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Left = 540.472790000000000000
        Top = 427.409710000000000000
        Width = 109.606370000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."estado_civil"]')
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        Left = 37.795300000000000000
        Top = 460.645950000000000000
        Width = 737.008350000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 15329769
        Memo.UTF8W = (
          ' DOCUMENTACI'#211'N')
        ParentFont = False
        VAlign = vaCenter
      end
      object Shape2: TfrxShapeView
        Left = 37.795300000000000000
        Top = 487.102660000000000000
        Width = 737.008350000000000000
        Height = 151.181200000000000000
      end
      object Memo30: TfrxMemoView
        Left = 52.913420000000000000
        Top = 498.441250000000000000
        Width = 204.094620000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'No DE SEGURIDAD SOCIAL')
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 264.567100000000000000
        Top = 498.441250000000000000
        Width = 204.094488190000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'R.F.C.')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 480.000310000000000000
        Top = 498.441250000000000000
        Width = 173.858380000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'CURP')
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 52.913420000000000000
        Top = 514.393700787401600000
        Width = 204.094620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."nss"]')
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 264.567100000000000000
        Top = 514.393700787401600000
        Width = 204.094488190000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."rfc"]')
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 480.000310000000000000
        Top = 514.393700787401600000
        Width = 173.858380000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."curp"]')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 52.913420000000000000
        Top = 547.575140000000000000
        Width = 204.094620000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'TIENE LICENCIA DE MANEJO?')
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        Left = 264.567100000000000000
        Top = 547.575140000000000000
        Width = 204.094488190000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'CLASE Y NUMERO DE LICENCIA')
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 480.000310000000000000
        Top = 547.575140000000000000
        Width = 196.535560000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'CARTILLA DE SERVICIO MILITAR')
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        Left = 52.913420000000000000
        Top = 563.252320000000000000
        Width = 204.094620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."tiene_licencia"]')
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Left = 264.567100000000000000
        Top = 563.252320000000000000
        Width = 204.094488190000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."licencia_folio"]')
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Left = 480.000310000000000000
        Top = 563.252320000000000000
        Width = 196.535560000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."numero_cartilla"]')
        ParentFont = False
      end
      object Memo42: TfrxMemoView
        Left = 52.913420000000000000
        Top = 596.709030000000000000
        Width = 204.094620000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'CREDENCIAL DE ELECTOR')
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        Left = 264.567100000000000000
        Top = 596.709030000000000000
        Width = 204.094488190000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'PASAPORTE')
        ParentFont = False
      end
      object Memo44: TfrxMemoView
        Left = 52.913420000000000000
        Top = 613.039370078740200000
        Width = 204.094620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ife_folio"]')
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        Left = 264.567100000000000000
        Top = 613.039370078740200000
        Width = 204.094488190000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."pasaporte"]')
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        Left = 37.795300000000000000
        Top = 638.283860000000000000
        Width = 737.008350000000000000
        Height = 26.456710000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 15329769
        Memo.UTF8W = (
          ' REFERENCIAS PERSONALES')
        ParentFont = False
        VAlign = vaCenter
      end
      object Shape3: TfrxShapeView
        Left = 37.795300000000000000
        Top = 664.740570000000000000
        Width = 737.008350000000000000
        Height = 120.944960000000000000
      end
      object Memo47: TfrxMemoView
        Left = 52.913420000000000000
        Top = 676.079160000000000000
        Width = 204.094620000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'NOMBRE')
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        Left = 264.567100000000000000
        Top = 676.079160000000000000
        Width = 204.094488190000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'DIRECCI'#211'N')
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 480.000310000000000000
        Top = 676.079160000000000000
        Width = 124.724490000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'TEL'#201'FONO')
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        Left = 52.913420000000000000
        Top = 692.756340000000000000
        Width = 204.094620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref1_nombre"]')
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        Left = 264.567100000000000000
        Top = 692.756340000000000000
        Width = 204.094488190000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref1_domicilio"]')
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        Left = 480.000310000000000000
        Top = 692.756340000000000000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref1_telefono"]')
        ParentFont = False
      end
      object Memo53: TfrxMemoView
        Left = 612.283860000000000000
        Top = 676.079160000000000000
        Width = 143.622140000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'PARENTESCO')
        ParentFont = False
      end
      object Memo54: TfrxMemoView
        Left = 612.283860000000000000
        Top = 692.756340000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref1_parentesco"]')
        ParentFont = False
      end
      object Shape4: TfrxShapeView
        Left = 37.795300000000000000
        Top = 785.685530000000000000
        Width = 737.008350000000000000
        Height = 60.472480000000000000
      end
      object Memo71: TfrxMemoView
        Left = 52.913420000000000000
        Top = 797.024120000000000000
        Width = 268.346630000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'PUESTO')
        ParentFont = False
      end
      object Memo72: TfrxMemoView
        Left = 347.716760000000000000
        Top = 797.024120000000000000
        Width = 90.708588190000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'No EMPLEADO')
        ParentFont = False
      end
      object Memo73: TfrxMemoView
        Left = 480.118430000000000000
        Top = 797.024120000000000000
        Width = 105.826840000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'FECHA DE INICIO')
        ParentFont = False
      end
      object Memo74: TfrxMemoView
        Left = 52.913420000000000000
        Top = 813.701300000000000000
        Width = 268.346630000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."puesto"]')
        ParentFont = False
      end
      object Memo75: TfrxMemoView
        Left = 347.716760000000000000
        Top = 813.701300000000000000
        Width = 90.708588190000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."empleado_id"]')
        ParentFont = False
      end
      object Memo76: TfrxMemoView
        Left = 480.118430000000000000
        Top = 813.701300000000000000
        Width = 105.826840000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."fecha_alta"]')
        ParentFont = False
      end
      object Memo77: TfrxMemoView
        Left = 257.669450000000000000
        Top = 365.614410000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        Memo.UTF8W = (
          'COLONIA')
        ParentFont = False
      end
      object Memo78: TfrxMemoView
        Left = 257.669450000000000000
        Top = 382.488188976378000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."colonia"]')
        ParentFont = False
      end
      object Memo55: TfrxMemoView
        Left = 52.913420000000000000
        Top = 712.331170000000000000
        Width = 204.094620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref2_nombre"]')
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        Left = 264.567100000000000000
        Top = 712.331170000000000000
        Width = 204.094488190000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref2_domicilio"]')
        ParentFont = False
      end
      object Memo57: TfrxMemoView
        Left = 480.000310000000000000
        Top = 712.331170000000000000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref2_telefono"]')
        ParentFont = False
      end
      object Memo58: TfrxMemoView
        Left = 612.283860000000000000
        Top = 712.331170000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref2_parentesco"]')
        ParentFont = False
      end
      object Memo59: TfrxMemoView
        Left = 52.913420000000000000
        Top = 732.008350000000000000
        Width = 204.094620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref3_nombre"]')
        ParentFont = False
      end
      object Memo60: TfrxMemoView
        Left = 264.567100000000000000
        Top = 732.008350000000000000
        Width = 204.094488190000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref3_domicilio"]')
        ParentFont = False
      end
      object Memo61: TfrxMemoView
        Left = 480.000310000000000000
        Top = 732.008350000000000000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref3_telefono"]')
        ParentFont = False
      end
      object Memo62: TfrxMemoView
        Left = 612.283860000000000000
        Top = 732.008350000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref3_parentesco"]')
        ParentFont = False
      end
      object Memo63: TfrxMemoView
        Left = 52.913420000000000000
        Top = 752.125984250000000000
        Width = 204.094620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref4_nombre"]')
        ParentFont = False
      end
      object Memo64: TfrxMemoView
        Left = 264.567100000000000000
        Top = 752.125984250000000000
        Width = 204.094488190000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref4_domicilio"]')
        ParentFont = False
      end
      object Memo65: TfrxMemoView
        Left = 480.000310000000000000
        Top = 752.125984251968500000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref4_telefono"]')
        ParentFont = False
      end
      object Memo66: TfrxMemoView
        Left = 612.283860000000000000
        Top = 752.125984251968500000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset2."ref4_parentesco"]')
        ParentFont = False
      end
    end
  end
  object frxReport3: TfrxReport
    Version = '5.1.5'
    DataSet = frxDBDataset3
    DataSetName = 'frxDBDataset3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42162.931596365740000000
    ReportOptions.LastChange = 42162.931596365740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 116
    Top = 16
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 28
    Top = 64
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 76
    Top = 64
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 116
    Top = 64
  end
  object frxReport4: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42162.931596365700000000
    ReportOptions.LastChange = 42162.931596365700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 160
    Top = 16
    Datasets = <
      item
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'NombreEmpresa'
        Value = ''
      end
      item
        Name = 'DireccionEmpresa'
        Value = ''
      end
      item
        Name = 'EmailEmpresa'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 914.646260000000000000
        Width = 740.409927000000000000
        object Memo53: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.559060000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            '[NombreEmpresa]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 11.338590000000000000
          Top = 21.236240000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            '[DireccionEmpresa]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 11.338590000000000000
          Top = 39.913420000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            '[EmailEmpresa]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 873.071430000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 37.795300000000000000
          Width = 438.425480000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FICHA DE REGISTRO DE CLIENTES')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 68.031540000000000000
          Width = 438.425480000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'FORMATO DE REGISTRO DE CLIENTES')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 608.504330000000000000
          Top = 11.338590000000000000
          Width = 118.157390000000000000
          Height = 120.598330000000000000
          Picture.Data = {
            0A544A504547496D6167654D3D0000FFD8FFE000104A4649460001010100DC00
            DC0000FFE1005A4578696600004D4D002A000000080005030100050000000100
            00004A0303000100000001000000005110000100000001010000005111000400
            000001000021D55112000400000001000021D500000000000186A00000B18FFF
            DB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A
            1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C
            2E333432FFDB0043010909090C0B0C180D0D1832211C21323232323232323232
            3232323232323232323232323232323232323232323232323232323232323232
            323232323232323232FFC0001108010C010203012200021101031101FFC4001F
            0000010501010101010100000000000000000102030405060708090A0BFFC400
            B5100002010303020403050504040000017D0102030004110512213141061351
            6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
            2728292A3435363738393A434445464748494A535455565758595A6364656667
            68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
            A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
            E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
            010101010000000000000102030405060708090A0BFFC400B511000201020404
            0304070504040001027700010203110405213106124151076171132232810814
            4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
            3738393A434445464748494A535455565758595A636465666768696A73747576
            7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
            B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
            E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA28A2800A
            2B96F16FC41F0F78322FF89A5E8FB415DC96D1FCD237E1D87B9AF326F8BDE33F
            1648D1F837C2EC21CEDFB44EA5803F5E147E7401EED597A8F89344D2091A8EAF
            656AC3F8669D54FE44E6BC6FFE100F895E27427C49E2E7B4858F36F048718FA2
            607E75A561F017C2D6ECAF7D737D7B2756DD20456FCB9FD6803A6BFF008D3E05
            B02CBFDAFF006861DADE266FD700573B3FED0FA0799E5D8E95A8DDB13C00A149
            FC39AE96C7E1CF8374C21ADFC3D6458746993CD3FF008FE6BA0860B6B55D96F6
            F142A3A08D028FD2803CC67F8C9E2CBD3FF126F015F329E8F346FF00D062A11E
            2BF8CB7FCC1E1FB2B453D3CC0323F36AF57CB48DB54127DAB1750F15F86F4A99
            A0D435FB082653868FCDDCCA7DC0CE280382F2FE345EF326ADA7D983D9154FFE
            CA6ABCBE09F8997CDBEEBC792C67D2291D47FE3B8AF43B1F14F877569961D3B5
            FB09E663858FCDDACDF40719AD197746C55C153E86803CA93E17F8A64FF8FBF1
            FEA8D9EBB2797FAB531FE0C35C1CDE78AF5398FF00B449FE66BD48B92700649A
            A9A96A9A5E8C40D5F56B3B166190934A3791FEEF5A00F37FF8525A6EDC3EBBA8
            B7E5511F819A277D52F4FE0B5DF41E2BF0B5EC822B5F12E9CF21380AF26CCFFD
            F58AD29E39202048B80C32A47208F63401E5CBF04B488B263D5EFD4FAA80298D
            F066D54EE8FC41A8291D0E071FAD7A804CC0F3BCD0C30A10A5E69022E4FB9A84
            CB687FE62BA67FE05A7F8D0079B8F867ABDB2E2D3C6DAB458E804AE07E8D511F
            0578E603FE8FE3DBFDBDB75C4BFF00C557A6C71C770DB60BEB1998F458EE5189
            FD6A3B982E2D5B1344C99E848E0D0079F476FF00162C176DBF8AE2B851FF003D
            8063F99526A41E28F8C365F7A3D3AEC0FF006579FD4576F1472DCCA23850BB9E
            80555BDD4B42D32568753F10E9D6B329C345E6EF653EE1738A00E5A3F8B5F112
            C0E350F08A5C007930AB7F4CD682FED0515AAA8D53C2DA8DB37F11E83F502B56
            DB52D07529162D3BC47A65C4CC70B19976331F60D8CD4D71693C1218AE2228DE
            8DDE8023B1F8FDE0CBAC09DEF2D49FF9E90E47E62BAAD3BE23F83B55506DBC43
            6193FC32CA233F9362B88B9F0E6937E08BBD32D26CF778573F9E3358B77F0AFC
            31783E4B292D9BD61948FD0E6803DDE29A29E3124322491B74646041FC453EBE
            721F0AB50D2A6F3BC37E26BDB171C81BD97F5522AE43E25F8B9E16CFDAA08B5C
            B61DF6866C7D5707F43401F40D15E43E1EF8F9A2DF5D0B2D76CE7D22E33B4B38
            DC80FBF71F88AF59B6B982F2DA3B8B6952586550E922365581E841A00968A28A
            0028A28A002B2FC4B7D3697E17D5AFEDF1E7DB59CB347B8646E54247EA2B52B0
            BC6DFF002226BFFF0060E9FF00F459A00F21F865F0EB4FF1169B1F8C3C50EFAA
            5E5F3B48B1CEC59786232DFDE391D0F15ECE8B1C112C50A2C71A8C2AA0C003D0
            0AE23E133E3E17E883FE99BFFE8C6AE9F51D52DB4CB46BABC984502B00CE7A0C
            9C0CD005F2FEF51992A1F30300C1810464107AD30BD004ACFEF5197A899EA32F
            CD007987C67F1D5E68C21F0D6953BC13CF0896F2643860AD9DA80F6C8193F515
            E37E1BF0DEA3E2CD6574DD3515EE194BB348D85551D4935D27C6391A4F8A7ABE
            4FDC10A8FA0892B63E0401FF00097EA2DDC69CF8FF00BE96988E13C4BE1AD47C
            25ACB699A9A22DC2A2C8AD1B65594F420FE07F2AF5EF83BE37BDD692E3C37AAC
            ED71241099ACA790E5F68EA84F718E47D0D73FF1E80FF84B74A6C7274B8F3FF7
            DBD61FC1E729F1374C00F0CB2A9FA18DA803D93C7FE2C93C1DE1137D6B8FED0B
            C90DBDA9233B38CB3FE03F535F362ADF6B9AB2A9792EAFAEE50A19DB2CEEC7B9
            35EBFF001EA4FF0040F0BC23A7FA4BFEA82BCE3C0201F883A003FF003FD17FE8
            540078B7C11AC782E5B58F5648B174ACD1B44FB81DB8DC3EA323F3AED3E1078D
            6EE2D5A2F0AEA3334DA7DE1D96DBCE4DBCBDB69F43D31FFD7AD8F8F7F3697E1F
            6EE2E2E87FE815E55E1094C1E33D1655382B7B11FF00C785007B97C53057E166
            A48DD56F6007F3AF9CEBE8FF008B9C7C39D687A6A10FF3AF9C47DE1F5A00D7D4
            FC29AF68B630DFEA3A5DC5BDA4D831CCC06D6C8C8E474E2BB5F84FE34D42DFC4
            56BE1DBFB996E34ABF6F2162918B79321FBAC99E9CE063DEBD13E2012FF07F51
            4624AA59583283D8EF4E6BC37C0C71E3EF0F1FFA88C1FF00A305007AD7C58F11
            DF786742B4D1F4F99A0B9D477BDCCD19C3F960E0283D8139CD78CE81A0EA1E26
            D6A1D2F4D884973364FCC7014019249EC2BD2BF681465F14E98D8FDD9B4217FE
            FB39AC1F839AB5A695E3E8C5ECAB147776D25AAC8E7015DB0464F6C918FC6803
            99F13785F51F09EABFD9FA92C6252824478DB72B29EE0D7AAFC1EF125F6B5637
            FA06A1335C0B3845C5A3C872C8A0E1973E95BDF123E1A6A1E2ED4B4FB8B6BFB3
            B6FB3DA8899662724E73C63B545F0EBE1A6A1E0DD72EB50BCD46CA78A4B37842
            424E72718EBF4A433AD587DAA7587DAACAC353A43ED4015960F6A9D61F6AB2B0
            D45757B676135AC37332A4B7527950A1EAEDED40185E23F03E8DE2CB5F2B52B4
            5328188EE106244FA1FE86B0BE10DB6A3E19F14F883C1D71766E6CACD527B727
            F843E0F03B641E47AD7A62C3ED5C4786576FC70F150FFA71B6FF00D056803D32
            8A28A0028A28A002B0BC6DFF002226BFFF0060E9FF00F459ADDAC4F1846D3782
            B5D8D7EF3584E07FDF0680388F854F8F865A28FF00A66FFF00A31A97E27367E1
            FEA63FD95FFD08557F85AF8F86BA30F48DFF00F46353BE24BE7C05A9FF00BABF
            FA10A011C2FC36F88AD6222D0F59989B5CEDB6B873FEAFD149FEEFA7A7D2BD94
            C991906BE47AF55F877F108C6B1687ACCE4A0F96DAE643F77D118FA7A1EDD3D2
            926368F5F67F7A6799F30FAD425FDE99E67CE3EB4C47CFDF17BFE4A96B5FEF45
            FF00A292B6FE0571E2BD4CFF00D435FF00F425AC4F8BDFF254B5AFF7A2FF00D1
            495B5F0378F146A87FEA1AFF00FA12D311E8BE31F02E8DE35BFB3BEBCD4EEAD6
            5B7B55B7D9144181C1273CFD6A9F863E1B683E15F105B6B106B17B3CB6FBB6C6
            F0801B2A475CFBD68F89BC5BE1CF095CDA5AEAAF7C67B8B75B81E4C60800923F
            A1AABA078EBC29E25D6A0D26C5F511733EED8648C05E013CFE5486723F1DDB74
            3E183EB15C1FFC792BCFFC01FF00250740FF00AFE8FF00F42AEFBE39FF00C7AF
            85FDA2B81FF8F25703E00FF9283A07FD7F47FF00A15311E97F1DCE748D03FEBE
            6EBFF64AF26F0CFF00C8D3A4FF00D7DC5FFA10AF57F8EB9FEC7D033FF3F577FC
            D2BCA3C33FF234E93FF5F717FE842803DEBE2E67FE15E6B9FF0061187F9D7CE1
            DEBE92F8BE31F0EB593EBA843FCEBE6D1C9C5007A7F8BFE29DAEBBE0A4F0FD86
            9D342F2C7025CCF2B8E447820281EA40AE57E1E5A4B79F113C3F14285996FA39
            0E074546DC4FE40D7A859FC0ED065B1B49E7D6EFC3CD0A4AC8912F1B941C03F8
            D76BE17F04F87FC1C1E4D22DE57BC917635E5CB06902F70B8E17F0140CCCF89D
            E0F9BC6DA2ABE9F86D52C24768A3271E7467AA8F7EE3F1AF9B2E2DE6B4B892DE
            E2278668DB6BA3AE194FD2BEC19A5B3D3BCB6BCD42D2D19C6E4F3A654247A8C9
            AE7FC4BE11F0A7C444F24EA16235854262BAB49919C81D9D41F985203C93C15F
            17751D0522D3B5A0DA9694BF2A963FBE847FB2DDC7B1AF7AD2EF6C35AD3A2D47
            4BB95B9B497EEB8EAA7D187635F2B78A7C2DA97843597D375241B80DD1C89F76
            45ECC2BB9F813AE4F69E317D14C8C6D75085BF764F02451B81C7D01A607D00B0
            D4EB0FB559483D6B3BC47E20D3BC29A3C9A8EA326D451848C7DE91BB281EB480
            A9E25F10E9FE14D1E4D43509300711C40FCD237A0AF09D0BC51A878B3E2DE8F7
            F7CF81F690B142A7E58970781FD4F7AE73C5DE2DD43C61ACBDF5EB6D8C7CB040
            A7E5897D07A9F5353FC3C38F883A21F4B81FC8D22AC7D6F8441C9AF3AF0D387F
            8E9E2EC745B3B61FF8EAD76525D81DEB84F04169BE33F8CA7FE1105BA7FE38B4
            C93D568A28A0028A28A002AA6AB08B8D1EF6023224B7913F3522ADD238CA303D
            C50078D7C2A949F875A6A9FE0322FF00E3ED573E20032F8175519FBB186FFC78
            563FC2B72BE0948CFF00CB3B9997FF001EAD8F189F33C1DABA7ADB9FD083FD28
            03E75A28A2A4B3D57C01E3D32AC5A2EAF365C7CB6D70E7A8EC8C7F91FC2BD28C
            983F4AF983BE475AF55F02F8E7ED91C7A46AB28FB4A8DB04EC7FD60ECADFED7A
            1EFF00CDA64B4733F19EDCC1F136FE43F76E2186553EA3CB51FCD4D5FF0081CD
            FF00155EA483967D3640A3D7E6535D7FC45F064DE34D3ED351D29436B1611793
            2C04E0CF1024AEDF7193C7BD78BC0FAE785B5559E1177A75F44480DB4A30F5EB
            D6A893BBF8E7203E2BD2A2FE38F4A8830F4259CD65FC1D85A4F89362EAB910C5
            348DEC0467FA9AE665FEDEF166AED3C8B79A95FCD805F69763D87D057B87C3AF
            02CBE0BB0B9BFD4994EB37B1794B0A9C8B78FA9C9FEF1E3E98A00C0F8E1116D0
            FC2D718E035CC64FA1CA11FD6BCE7C06C13C7FA0313802FA2FFD0857D01E24F0
            CC5E2EF0ACDA2C8EB15C2BF9F672B744900C60FB11C57CEFAAF8775DF0C6A1B2
            FACAE6D6689B2920538C8E85587140CF55F8F80C5A7F87E2618633DD360FA652
            BCBBC17035CF8DF4485464BDEC431FF02150EA5AB6BFE29BB85B50B9BCD46E11
            7647B816207A002BD73E137C35BCD2AFD3C4DAF426092253F62B571F396231BD
            876C0CE07BFB5023A3F8C43FE2DB6A87D6FA1FFD0ABE6A1F787D6BE9CF8AF657
            579F0CEF21B58259E66BB85B6468598F3CF02BE771E1AD7770FF008935FF005F
            F9F76FF0A00FAC6C23DDA4E9A7FE9CE1FF00D0055C486974B859747D395D4AB2
            DA44082390760ABE90D219E0DFB41C456F341931F2981D7F10DFFD7AE77E06BA
            AFC4DB5562017B69957DCEDCFF004AF6AF89FE0293C6DE1B8E3B3655D46CDCC9
            6FBCE03823E6427B678E7DABE669B4FF0010784B574964B7BCD3AFADDF292852
            A54FA834C47AAFED10B1ADF685D3CDF26407D76E78AE33E0E863F15745DBD9A5
            27E9E535735A86A1AE78A75159EF66BBD46F080AA482C71E800AF56F86DE117F
            03ACDE33F15116290C2CB6D03FFAC25BBE3D71C01EF401EDBAFF0088F4EF0D69
            536A37F2848631C0FE273D828EE6BE5BF19F8CB50F19EB2D7974C52DD0E2DEDC
            1F9635FEA7D4D3BC6BE34BEF18EAC6798B456719C5BDBE7841EA7D58D733525A
            415D2FC3E19F1EE91ED293F92935CD5751F0F573E35B27FF009E6AEDFF008E91
            FD6901F424B783D6B0BE178F3FC77E37BA3D7ED10C79FA2FFF005A896EC7AD1F
            068992FF00C6339FE3D4F6FE40D5127AAD145140051451400507A514500786F8
            053EC763AC58F436DAB5CC78F4C356DEBA3CFD03528FAEEB597FF4126B17486F
            B378EBC696478DBA91980FF7C67FAD6ECDFBD8258BFE7A46C9F9823FAD007CDF
            4507A9FAD15258500904104823A11451401EB7E03F1B8D43CBD33529765FA710
            DC138F387A1FF6BDFBFD7AFA7A5F5D30C4BE5CDFF5D63563F9915F2B2B323065
            62ACA72083C835ED3F0F7C769AC247A4EAAE17504188A62789C7A1FF006BF9D3
            4C968F455BBB8C613CB8BFEB946ABFC85304658E4E493536C48D0BC8EA8A3A96
            3802A8FF00C245A1C772F6E753B7F351773287CE07E14C45E482AE23C9B02362
            451D16450C3F5ACB8B5EB29F8B58AF2E8FFD30B676FD714CB6F15D9CB797166D
            61A945750100C4D6AC59B233C633401B918DA731C30C67D522507F954A232CDB
            98924F7359C97BAC4CBBADBC397383D0DCCF1C5FA649FD2891BC5FE5B3C5A3E9
            28429215EF9DC9F6C08C0FD6803622574E14919F4AB0A24EEC6B9FD3FC457896
            511D6743BFB6B9DBFBDF26DCC9183EC4127157ADFC57A35CCC218AF156627023
            9818D89FA3628035C479396341744F7AA92DD7A9AA72DE7A1A00D092EB8EB8AA
            53DCC6FF00EB1124C767507F9D67CB779EA6B36FF56B7B1B596E6E6658A08977
            3BB1E00A00BDA8EB365A358CB7D3FD9ED60886E6758C03F41EF5F3A78DFC6B79
            E30D50C8ECF1D8C4710404FF00E3CDEE7F4A5F1AF8CEE7C557FB50B47A7447F7
            311EFF00ED37B9FD2B95A4524145145218575BF0ED7FE2A3964FEE5B39FD40AE
            4ABABF02B18EF2FA51DA10BF9B7FF5A811E9125D81DEB7BE07C65B45D7AEFF00
            E7BEAF360FA818FF001AE1DA5720B740066BD17E07C5B7E19DACFDEE6E6794FF
            00DF647F4AA24F46A28A2800A28A2800A28A2803C42EE236BF19FC4B0F417304
            338F7F9403FCABA1861FDEA67FBC2B3BC636C6D3E33E9772784BED39E2FA9439
            FEB5D0243401F315F426DB51BA808C18A6743F8122ABD6F78DAD0D978DB58888
            C6EB96940F67F9C7E8D58352505145763E03F02BF8B6EA5B8BBB8FB1E916A47D
            A6E4F1C9E8AB9E33FCA819C8C51493BEC8A3676F451935E9FE05F83FA8EB461D
            4B56B8934DB4C868D507EFA4C771FDD1EF5DCE85A5684B7101D36C225D35A768
            2C205E5EF193EFCD231E76020803DB27A8AF5645DA8A0E3206381C53B12D9CB4
            FE08B28EC9CDA46B757D80124D52579D01F52B9FD062B4747F0F47A6AEFB9956
            EAE0800BF9091AA8F45551C0FAE4FBD6C492C7128323AA8240058E393DAB8AF1
            0FC49B0D1A3B816F03DEDC23148A288FDE2382CC7F8501E327A90714C4767344
            D242C91CAD0B11C3A0191F4C822A0B3B192D599A4BEB8B927FE7A84FFD954578
            E597C4AF107FA4EAFAC477BE55BB064B0D36288C7B3D647625C0CF1915D1F87B
            E2A58CD0CB7BE21D574EB2F35775BD842C6478D47776EEC72380074A49A63B1E
            9958DE20D3AFAF6D19AC2F2E629D47C91C7388558FA96D8C7FFD55CECDF136C2
            4443636B3481867737247D1172C4FE007B8AE9742D6FFB6AD7CEFB1DCDBF1922
            78CA63DB9EA7E991EF4C454F09E99E21D3ACE55F10EB09A84CCD98C24600887A
            6EC02C7DC814EF11F852CBC466DA6959E2BCB46DF6D3A807637BA9E187D7F4AD
            AB8595EDE4582411CC5484723214F638EF4CB25BA4B2856F658E5BA0A048F1A1
            5566EE4024E280389BABFD47466F2F5CB70A99C2DF400985FF00DE1D50FD78F7
            A1AF95D43230653C820F06BB196EE17334125BCEEABF2BFEE58AB67F0E6B89D7
            FC313E96ADA96850BBDA1F9A7B00395FF6E31EBEABDFB73D402ADDEA11DBC124
            F3CAB1C31AEE776380A2BC4BC65E319BC4977E4C05A3D3A26FDDA1E0B9FEF37F
            41DA97C65E2C9F5BBA6B3877C5630B63630C19187F130FE43B572948A4828A28
            A430A28A2800AED7C09006B6D465F745FE66B8AAF49F87F68CBA04F391C4D718
            1FF011FF00D7A04CD3BE4F2B4BBB93A6C81DBF2535EADF0A2CCD97C2FD023230
            5EDBCDFF00BED8B7F5AF28F17B35AF84AFDD78668F60FF0081102BDE3C3F67FD
            9FE1BD2ECB18FB3DA4517FDF2807F4AA24D1A28A2800A28A2800A28A2803CC7E
            294061F10F83F531C08EFCC0E7D9D703F5ADF586A8FC5EB677F033DF47F7F4EB
            986EFF0005719FE75B7022CD0C72A10CAEA1948EE0D007CF5F17ED0DBF8E0CD8
            C0B8B58DF3EA4657FF006515C157B1FC75D3CAB68F7E17E5C3C2C7DF823FAD78
            E5229057B0F80BC3BE21F16F80D74881ADF4CD156E1E492E4A9692E9F20E3191
            F28E067DABCEFC2FE1C93C437FB4964B58B99641FC87B9AF62B09752F0FDBC2B
            A4EA52A47080A96F70DBE261E98EDF51584F11084B959A2A7292BA382D6F40F1
            AFC3BD46D2E0C924D6B6ACC6D678497894139208FE1C9E706BD7F43F8B1A1EA9
            A1C2FE701AA32853664E1B7648E4F4C71927B035AFA378DF4AD5C2D96A0AB617
            EC30D6D7246D7F5D8DD1C7EBEA2AE4BE0CF0D5CDCADD9D1EC8CB9CEF110E6B64
            D357464FB33CAFC6BE31D535CD534DB4D2564FB0C12EDFB52C67175718C62207
            A85EC7A77F4AF3DD5751D4FC37E288ED2F6DCA45632AB9B5127FADEF967C7CC4
            FAE3E95F4EEB3E19B0D6B4A1612A1896361240F1FCA6171D197E95CB5F689753
            3469AEF85E1D6E583886F6D9A305FD372BB2953F42C2B9EBCEAC1A718F32EBDC
            A8D886DEF6DBC437DE14BFB8D345BAEA30DC4325AC8777C853760F0323283B77
            AD8B7F0469D6BAC33DAE83A24562B19DB988B4AEFF0096140FC73ED515869D2C
            DAB43A8EA2907F68C3195B2B08250CB6B193B59C9C8DC7A671D8607AD75526A1
            696918FB55E411B01C9670B93F89AAC2C250A769AB3D74EC293BBD04B5B28EDA
            DB6C56F6F0C857910AED5CFE59A4962B9B7D3CAD93A199790672CC0F3C827AFE
            3DBD0D574D4AC62B82CFAC4322C9C246644E0FB639AAFF00616835C6D5AEF5B9
            56108556D7704840F523A93EFF00A57412686977735ED989A64547248DAAAC3A
            7FBC01FD2AE938193515BDCC37512CB0389236E8CBD0D39CA6DDAE461B8C1EF4
            019BA8DC6A70AADC6990DBDF4607CF6E5F63B7BA3F233EC40CFA8A5D2B5DB3D5
            D5D22F321B88F896DA75D92467DD7FA8E299FF0008DE91BB72DA2A30FEE315C7
            E46A85C782AD24BFB5BD82FEFE09ADA40E8566DC31DD4EECFCA7B8A00F2CF8EB
            E17D3EC52D35CB3B368E6B894C7712464042719191EA79E7DABC52BE95F8E563
            7771E06FB4DBC8FE55BCCA6E221C8642701BEA1B1F99AF9AA932905145148614
            51450015ECFE0AB3687C21A7823FD60797F3623F9015E31F4AFA3B4BD35B4ED2
            ACAC5C7CF6D6F1C4DFEF2A807F5CD3426729E3284CD1E8DA7819FB66A504647A
            8DC335F4028C281E82BC567B737FF153C2B6017747079978E3D368C03F99AF6B
            A64851451400514514005145140197E23D346B1E1BD4B4E61FF1F36D2463EA54
            E3F5C5733F0CEF3FB57E1E68B3B3169238041267AEE8CEC39FFBE6BBAED5E73F
            0FA41A46ABE2BF0F14D82CF537B8847FD32986E5C7B0A00A9F1AF4C373E016B8
            51CDACE927E0783FCEBE77D334F9F55D421B2B71FBC91B19EC07735F57F8B6D1
            75BF0B6A5A731E66818281FDE0323F502BE7CF8690AFF6CDE3B8F9E38B033DB9
            E6B2AD3E48391A535CCEC7A0E8FA55BE8DA747676CB8551F337776EE4D5D78D6
            45C3A8619CE0D3A8AF15B6DDD9DD6D2C437F6D1EA51DBA5D223AC0E5D7E41924
            8C7271922A6D2B54BCF0C5D472DB35CDCE9E5B13D986DF85FEF4793C11E99E6A
            19AEADEDFF00D74F1C7C67E7602B9BD4BC5E46A30E97A4DB1B9BB9F1B1DCED8F
            07BE7B8E0F3D3EB5BD2956725CA6738C2DA9EB89F113C3A50169EED1F1FEADAC
            66DC3FF1DAC2D73E28DBC516DD334C9A57073E75EB8B6897DCE4EE3F4C5797EA
            1A4F88E68219753F105BDABDCA9782D216DAED1E701DB255514FAB367DB3C523
            FC35B2B4B05BFD6BC4F0DD4B2F105A69CC269253E8189C7D4E303D6BD34EA5B5
            B2396D1BE85ABFF1B06884775E2310C233FE89A344547249C6F3C9E49EE2B120
            D62CB51B83069DE1B975024732DD4C59BEA49CE3F3A60F0A42BAA2D9D969D71A
            9EA0C38B385B7245EF23F1CFE42BD3F48F8437B75671FF006E6ACD6A8464D8E9
            CA1117D8B7526B2E573D9DCABA89E59FD8125C78BB4BD3F4593EC9A8DD1C4B1C
            329716DEFB876C64E3B62BDF742F86BA3E92239AF1EE354BB500996F252E33EA
            14F02A7D13C0DA1783525BAD1EC63378C31E6DCCC727DB760E3F2A92F7C5F3E9
            ED1C6FA05F5EC8C4865D3192E0263D79523F115D118F2AB33393BBD0BF3F89F4
            5D3EE8595E5DAD9CBD1567431A9FF7588C1FC0D59BBB6D3759B506658EEA14F9
            976B67F2C53C2C3AC694A66B6748E74E639E3C3AE7B107A1AE361F06F87B48F1
            02476FA9EA363792112AA09D923979E401F74FB81CD51267FDB3C157DA84BF61
            F105FE8B7B19D84B4924209FF7641B4D74B04FE28B0F25A36B3D7ECD98069236
            104C83D7BA3FE6B5D0DDD8D95EC0D1DE5B413464722540C3F5AC183C2765685A
            6F0F5F4BA71639D90307849F743C7E58A00DAD5F4D8758D1EF34EB95CC3750B4
            4E3D88C57C77AFE857BE1BD6AE34BBF8F6CD0B633D9C7661EC6BEBA86FAFEC49
            5D656DFC9C854BAB7DDB4FFBEA7EE7D7247B8AE6FE24FC3F83C6BA479D6BB23D
            52DD498243D1C7F718FA1F5ED498D33E57A2A5B8B79AD2E65B6B88CC7344C51D
            1BAA91D454548A0A28A280353C3762352F13E996646565B940DFEE8393FA035F
            4B084B3163C92726BC47E12695F6FF00190B965252CE26933E8C7E51FCCD7D00
            B085196E001C93DA9A259C9783ADDAFBE2E6BB7DC18B4FB38AD54FA337CC7F9D
            7AAD79D7C22845C693AC6BC727FB5B539A68C9EF1AB155FEB5E8B4C414514500
            145145001451450015E65E21FF00891FC5AB1BDDC561D66C9AD9C76F323395FC
            4827F2AF4DAF3BF8C16B22785ED75B81733693771DC93DF6670DFA1A00D392EF
            0739AF0D253C29F14AF6DDD956D6EA4DCA7B05930EBF9138FC2BD4FEDC92C4B2
            AB865750CA41E0835E67F14AC44C2CF558C0CAFF00A3C98EB8E4A9FF00D087E5
            5138A945C595176773BECF1587E23F12DA68368C59D5EE987EEE107927D4FA0A
            E4FC27E3910AC7A7EACFFBB1858EE0FF000FB37B7BD6078C6C27B4F10DC4F212
            F0DD31961941C8653DB3ED5E6D3C37EF3967FF000E75CAAFBB7898F7D7B71A95
            E3DCDD48D24AE7924F4F61ED5D9697AC58687F115751BC1BEDACA0DBB08C9761
            1050B8F735C96996CB757ABE6B6D823FDE4AC7B28EBFE144C67D5F5795A0859E
            5B8909545193C9AF43452F439B745CD4EFF50F1878924B9642F7372F848D7A22
            8E8A3D0015DDE91A4E9BE198BC996F2082E8AEEBCBE7E9029ECA3A963D94727A
            F41586AF6BE06B12034771AECEB838395817FC6B8DB8B99EEE6696795A47762C
            4B1EE6B3D6ABFEEFE657C0BCCF6EB4F8CFE1AF0EA0B1D1B42BA9ADD4FCF70EEA
            8F29FEF1EA493EF5D3E91F1B7C2BAA7EEA7927D3673C2FDA93284FFBCB9C7E38
            AF0CF07E9FA4EA525D43ABDB4CD0AA86F3EDE4C4908EEC13F8D4752072073D33
            5D2EB9E05B4D396DE0BCF2A2B6B9C7D835BB6C982427A2CCBCED27FBC3F5E71D
            0667A55C7C498923D9AC69515DDA6E0C1E10CA081D0812A856FF0080B1AD7D2F
            55F0D789AECC9A1EBD2DB5DCAB96B689FCB6E3B98D875F7C5791F80EC7C4DA66
            B57DA1457107DA625DEDA45F0CC3791F728DD33DC7AE73D8D77B75F0CF4DD62D
            E2D6742175A16AF012442490239075523D3DC1C1CD023A1D6EDFC65A35AC53E8
            174DAD4A650AF6B76234C260E4EECAF7C7E759A9AC6A5E30B1B9D2AEED21D2B5
            48C6D974FBF1F2CBE9244E39E0F719C1ACDF877F146EB56D73FE118D7A151A88
            2E915C47821CA02486C77C03C8AF46D5BC3FA5EB9E51D42D12678493149921A3
            27FBA47229819FE0E8B5D8F40FB1F892243750B18848240E268FB37E5EA0536F
            7C15A7484CBA73CFA55C63E592CA42801F529F74FE55199758F0D492C972DFDA
            1A2260EF1937102F7247F1A8F6E71EB5D34334771124B0BABC6E032B29C820F7
            A04729F69F13F87E066BF8535DB241F3496ABB2E547A98FA3FE041F6ADAD175C
            D2F5CB53269B70B22A7CAF1ED28F19F465382A7EA2B52B9AD7FC2AFA85E43AA6
            957ADA6EAB09E2745CACABFDD917F885007CEDF15BC3DFF08FF8EAF046856DEF
            0FDA22E38F9BEF0FCF35C4D7D11F1D3C3B3EA1E19B5D6634579B4F389CA8FE06
            C723D81FE75F3BD229051452A2348EA88A59D88555032493D05219EEFF000434
            6317876F35361F35D4DB1723F8547F89FD2BB3F1DDEBE91E0AD4A787FE3E648B
            C880772EFF0028C7BF3FA56BF853405F0F785F4ED2CE375BC204847773CB1FCC
            9AC4F16A2EAFE2FF000CE848A1E359DB50B81FECC43E5FFC788AA20EA3C33A3A
            787FC33A6E931E31696E91123F8980F98FE2727F1AD5A28A0028A28A0028A28A
            0028A28A002A96AFA6C3AC68F79A75C28315CC2D1367DC6335768A00F9DBC317
            93C3A549A55E1C5DE9733D9CA33FDC381FA7F2AB1AC46BAAE957562796950ECE
            3F8C72BFAF1F8D4DF106C1B40F89CF708BB6D75B80498038F39383F89183F89A
            A0BE6160C09041C823B5219E4A41048230475A99AF2E5ED16D5E776814E56363
            90A7DBD2B67C5FA6FD835B69635C4176BE7201D89FBC3F06CFE0456052B144F6
            B324526268DA481BEFC6AFB73F8D697FC24125B44D16976D1D8AB0C3489F3484
            7FBC7FA5635152E09EE34DA15999D8B392CC4E492724D2515E89F0DFC0926B29
            71E21D4213FD9764ACD1AB0FF8F8900E00F607AFE5EB5422EFC34D1C0D662D36
            E32ADAA69EB796B2E3FD54CACDB4FE215F23B8AF46D2E386D55B4AD46D91F41D
            4A56B69207E4595DF74F647EABE871EA2ABB69C749F157865D6308CA2CE0C01D
            372DDEE1FAD74DABD8470F8996394674FD723304C3B477083746E3DCA823EA8B
            4C9395BAF095C69D7F6BA6493BAB42E5F42D58F2D0B8E7ECF29EE08E99EBC8AF
            44D0B536D4EC375C4460BC85BCAB984F549075FC0F507B835623B4371A6A5B5F
            289180018FA91D1BEBDE87B20978B790F12ED0920ED22F6CFB8EC7DCD311C878
            BBE1BDA6AD22EADA195D335E81BCD8AE221B43B7A301EBEB54BC1DE3EBF1AD7F
            C22FE30B7165AC01FB994F0971F43D327B7AFD6BD22B95F1F78462F16787E486
            3545D461C496739E0A3839C67D0E31F8D0075440231D8D7357DA55DE8AEFA8E8
            232BBC3DCD87F0CABFC453FBAF8E9D8D3BC1BABEA1A9E9223D56D0DADFDB6229
            A33BB2481D7903AFB123DEBA4A00AF637B6FA8D9C7756B20921906548FE47D0F
            B558AC29B4B9B4CBB9750D250B79AC1AE2CF76164E7965F46C7E07BFAD6E29CA
            838233D8D006378AF414F12F86AF74B691A269A3223914E36B0E87E99EA3D2BE
            3BBCB49EC2F67B3B94293C1218E453D981C1AFB7ABE6DF8E9A1C7A778BE1D461
            5DAB7F16E703FBEBC1FD31498D1E5B5DBFC28D146AFE3AB59644CDBD8FFA4B9C
            7191F747E7FCAB88AF75F857A50D1FC2FF006E9001717E7CCF7118E17FA9A06C
            F569B501D8E6B95F0113AF789FC41E276C34225FECFB360720A47F788FAB1AC7
            F19F88DB49F0D5DCD03137522F936E0753237031FCFF000AEF3C15E1F1E17F07
            699A4617CCB780098AF4321E58FE64D324DFA28A2800A28A2800A28A2800A28A
            2800A28A280384F8AFE1C935DF074B3DA2E6FF004E6FB5DB91D4EDFBC3F119AF
            34D2278B54D32DEF6220ACA9920763DC7E0722BE852030208C83D45780BE91FF
            0008878F751F0F9056C6F09BDD3C9E983F7907D0FF002F7A00CDF16E8C751F0F
            BBC4B99AD099970392B8F987E583F8579657D0B1C207F083EC4641AF1CF19E80
            741D75D635FF0044B81E6C07D06795FA83FA63D69148E768A2A7B1863B9BFB78
            6591638DE455776380AB9E4FE54867A2FC37F855378B235D575376B7D283E114
            0F9E7C75C7A2F6CD7B66BDAFF867C09A0C76D78F1430226D82CE3E5DC0EC17FA
            9AF24F147C627B7B28F44F0827D9ACEDE3108BB61F310063E41D87BD7945DDDD
            CDFDCBDCDE5C4B713C9CBC92B1666FA934C56B9F5F4D609AE4FA26AA89B16391
            6E5831E702370A3F392B4F52B28AF608FCD3B443324EADE850E6BC5BC1FF0019
            6DB4FF00054D65AA06FED1B1836DA903227ECA0FA11FCAB7FE15F8A67F107823
            5A4BFB9696F2DA49598B1C9D8EA587E19DC3F0A62B1D178F7C7307873C16DAB6
            9D7105C4D3B88AD595832B31EA78EA0006ACF833C7165E2EF0DB6A31109716EB
            8B9833CC6C067F238E0D7CA33DF5CCD6D1D9BCCED6D048EF1464F0A5B1B88FAE
            0559D0F5FD47C3D7725CE9D398DA589A2917B3A91C82295C2C7D49E06F1D58F8
            D6C26921022BAB772B2C19C9033C30F6358DE2BF1C5C7813C5F6CBA96EB8D175
            14CA903E6B775E0E3D4720E3DEBE78F0CF88EFBC2BAE41AA584844919C3A6789
            10F553EDFF00D6AECFE2B78EB4EF1A41A2369E18186377991C728CC40DBEFF00
            77F5A2E163E91B0BEB5D4ACA2BCB29D27B7957724887218559AF90FC31E3FD7F
            C256B736BA6DC8F2261C2483708DBFBCA3B1AFA43E1FF8CEDFC67E1E4BB1B52F
            22F92E6207EEB7AFD0D170B1D6515E47F13FE24EA9E0FF0015E9F6BA77952442
            1F32E2191787C9E39EA3815D1F86BE28E85AFE8377A83C86DA5B184CD756EE7E
            6550392BEA298AC7735E0BFB42E7EDFA2FA794FF00CC57B3685E22D2FC49A7AD
            F6957697109EB83F321F461D41AF23FDA1A03E5689718E37489FC8D263478F78
            7F477D775BB7B04C8476CCAE3F8107DE3F97EB8AFA0173E5A4512EC89142228E
            8AA0600FCAB95F867E17361A27F68DC211717A032E472B1F6FCFAFE55D96AB77
            6BA0E8D75A9DDF10DBC65C8EEC7B01EE4F1420660E99A77FC24DF12ED6D586FB
            2D1145D4FE8663F714FD3AD7B3D717F0CF40B8D23C35F6CD4536EABAA486F2EB
            23054B7DD5FC062BB4A620A28A2800A28A2800A28A2800A28A2800A28A2800AE
            13E28F86E6D67C3E9A969E99D574A6FB4DB91D580FBC9F88AEEE8EB401E4BA2D
            E41AC6936BA85B9CC73A06C7A1E847D41C8FC2AAF8B7C303C45A0C96E8A3ED51
            664B73FED7A7E3D3F2A9E5D34781FC69258636E8BAD4AD359B1E904E7EF47EC0
            F515D5A407D2803E4F7468E468DD4ABA92181EA0D36BD53E2BF8264B6B97F11D
            8464C129FF004B451F71FF00BFF43DFDFEB5E5752505145140C2BA9F05F8ACF8
            5FFB65496D97D60F0A81FF003D3F80FEA7F3AE5A8A0028A28A0028A28A002BA7
            F0178BEE3C1BE2586F94B35A4988EEA207EFA7AFD4751FFD7AE628A00ECFE296
            B50EBDE3CBBBAB69164B754448DD4F046D073FAD71C923C7BB63B2EE5DADB4E3
            23D0FB5368A00D3D0FC41AA786F505BED2AEDEDE61F7803F2B8F461D08AF51BC
            F19E9DF11F4AD221D72D25B66B4BF8C5C3C6A4C2E1B8C6EFE1C9C673DB35E4BA
            6E9D75ABEA56FA7D8C4D2DCCEE1110773FE03AD7D4FE11F065AF86FC371699B1
            252C375C3B2E448E7AF5EDD8534265C86C42A850A155460281C01D8572D796AB
            E2CF1EDB688A03E97A3B2DD5FF0070F3758E33EB8EA45749E2EF1143E16D11AE
            238FED37F33086CED97ACD3370ABF4CF5A9FC0FE1B93C39A084BB93CED4EEDCD
            CDF4DFDF95B93F80E8299274BD28A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A00E77C71A45BEB1E10D461B80418A269E2914E1A39106E56
            07D4115C97C37F15C7E2EF0FA990A8D4AD7115D27A9ECE3D8FF3CD77BE21FF00
            916B54FF00AF497FF4135F22F85FC4579E15F1043AAD9372A76CB1E78953BA9A
            067D6325845756F25BDC46B24322957461C303D457CD5F113C0971E0DD5CB44A
            CFA5DC3136F2FF0077FD83EE3F5AF65D23E327846FD5167966B3988E5668C900
            FA6466AE6BBE24F0AF897479B4D999AF609C6311C472A7B104F422906C7CB545
            7A25B7C28BC9AF1CC97A90D9EF3B18AE5CAF6E3B1AECECBC23E13F0E2422E459
            89E63FBB92FDC1673D3E5078033ED458773C62CB42D5B5150F67A7DC4C87A3AA
            1DA7F1E95B50FC3BF114AC035B4710F57907F4AF65BFD4AC34AB9B3B2BB99A29
            EEB22086284B9201C76ED4B6D79657BE21D434688DDB4DA7863732F93FBB4C02
            719CF7C1C7D28B0AE79447F0BF566902BDD5B28EE464D6941F06F519FA6A300F
            F801AEFF00C39E23B2D612F65874ABD48EDED9EE63964C149829C6370E15BDAA
            CDC7C418ACFC39A0EA167A5096EF586658A07970A9B7AE5B1EE3B51A06A70DFF
            000A1F553033AEAD6A081C064600D60EA1F0A75AB08CB7DAEC6561FC2B211FD2
            BD3F52F88F6E347D07519EDA45B7D59D9180976F93B40CF6E7935CFEA9AED90F
            0D58F882EE3BC582F4AA476F138660C77127240E0051F9D01A9E553F86757809
            06D0BE3FE7990D59B3DBCF6CFB2E219227FEEBA907F5AFA021B5D26CC692D2CE
            E8355754B40D1E4B3100E0E3A7DE15D59F0F68D306B4D4A3B39CAAEF68250ACC
            17D769E71EF4582E7CA140049000249E0015ECFE35F00F855DDA5D29DF4E9BBA
            2FCD19FC0F4FC2B96F08C7A0785F5937FAE4BF689A16FF0046544DC8ADFDE23D
            476FCE90EE7A57C29F04A78634FF00ED7D4A20354B94C2A38E6143DBEA7BD777
            79ABA451B33C8155464927000AE19FC7FA5DD2EE82EF764740873FCAB98F10DC
            5FF8A215D3ED19E0B290FF00A439C86917FBA3D01EF4C46C785F5B4F17FC52B6
            D46E10BD8C11CABA6A9E808E0CB8F7E40FA57B4D794F81B40FECFD6ED67D9B42
            A94181D06D3802BD5A98828A28A0028A28A0028A28A0028A28A0028A28A0028A
            28A0028A29AEC1119D8E028C9A008AF2DD2EEC67B6719496364619EA08C57C7B
            0F862FE7D466B7F2593CB9190823A60E2BEC1B6BEB5BC4DD6F711C9C67E56C9F
            CAB88D5F4AB7D3F5BB99C42A0DC379AAD8F5EBF8E73F9D034CF35D03E1F47085
            96E171EED5D4EA175A6F84B4EB79BEC735C3CF37911AC400F9B191927A679FCA
            B51E7AC9F1268D73E21F0BDED95BC464B81B668173825D4F4FC41228039DD7BC
            79AB47736171A4EDB7D3EEA0F3618FECCB23C92236D9637639C6307A63B547F1
            0D6DEEE7D23568E54FB06A3A6CB6EB2FF086525D79EC72C3F235DE378120D534
            3D22C44634EFB03A4F18897714247EF109CF3B89E4E7B56E5AE99A0F86F498B4
            A5884D046CCE904BFBD20939CF3D39CE2901E7D77697FAA5D7C3AD4626BBB696
            64749A6850EE8C613AF1C03CF5AD3D3ACAE74CF8BFADDE4D677E6D2E8288E746
            C5B9250E4C83F880CF1E8735BBAC789EF05BC82CADC28453B558E3381D80AF0C
            D4FE247882FE5601E281738DAAB9FD4D00779E18B0D4748F12DFCB73143A6E9B
            796D3473431CE0C324AC4EC645DC48E31CF6E6A36F0FEA0FE1AF0CDB42D6D26A
            1A44B23BC266015D5CF186E991B47E75E592F89358941CDF48327394014FE605
            353C47AE47F7357BD5FA4EDFE340EC7AE5FF00C3EBFD57C31E1DD2164818D845
            73E7B6FC0123AE531EA370151EB9E08F143E83E1ED3EDED2165D3EC2732EE704
            195948C0E7938C60FA9AF3187C69E27B77578B5FD401539199D88FC8F15A4FF1
            3FC612A959B573283FDF853FA0A0353D25D2E6DFC5DE03B7BEB4B8586CACF058
            445956E18155048E06085A5B7BF92E7C41E30F1209E14785069B6534CC020942
            92073EAE16BCC61F1A7896F6E161B59E5170C78303329FAF06BB3963D724B592
            C75F8D6EAC246590BD9C6B132C80E449955E5BFDE07340880EA9731F8067D5B5
            794EB05AE23B6862BA9184D14BF379A0B0C1C6070324565D9E9BE17D5E5BF9A3
            6BCB25B2B55B99E495C4D10CED054701B396C0EBD2BAA7F07C5ACE856767A55C
            B2C7035CCCFF006A7DCD3CF2210AC4818E0E2AA4FE01D6B45F02788635B26924
            9A5B68D443F333C2843330039FBDDA802CF86B42D375484CDA64CD3246C12457
            8CA3A1232320FA8AF46D27C28B1AAB3A803DC5657C28D26582DB5ABF9ED64862
            BBBE2D6EB32156F2D46D5383D38AF47E00A00CF86CA1B7BA8563182AA49FE55A
            35496E205792E6591113EEAB3363207FF5EB3E4F14591BB86DAD83DC492C8106
            D180327AF34C46ED14521200C9381EA680168A40CAC320823D8D2D0014514500
            1451450014515CAF8DE4BD92C61B1B2B8680CEC7CD74383B3D33DB34016356F1
            AE8DA44C6DE4B8335C8E3C9806F607D0FA567C3E34BABB1BA1D2BCA53D0CD2E0
            FE40573361A2D969CB9540F2776346B3AE41A2D9C134B6B7172D3DC2DBC71C0C
            AA7711C726803ADFF84AEE17EF5AC47E921FF0A51E30EA24B227D924CFF302B8
            9B0F11E99A9DAE89711C3761756B97B6452CA0C2CBD7771CFE18A5D07C53A56A
            57970A2C2F62B585656FB5BE191847F7B207DD27B03401A5E437DB1DED209C44
            C77271F32E7B71E95A2CF2C96FE5DE4B304E9FBE24E3E85AB3B47F891E1F9ECA
            F6E5ADAEED96D20173FBE8C12F11380CB83EBDA9BABF8CEC6E7514D2E3D4116E
            6448D92392260BFBC00A0271804822802FC3A6DA28DC3508DB9FF96ACBFCC62B
            5A0FB2DBAE5EF6C971FED67FA8AF3D6B417B04B7B2EAB67F648AE0DB3B8930AB
            2F1F2F23AF22B5F4FD334C47546BFB42DE698702504EF5192BF502803AAB9D4A
            13F20BD7914FF040303F31CFEB5563B29EED8AC30F9484FDF7EA7F0FF1A76997
            7A0B5AC93DADF417290B047F29B3B5B19C1AC8D77C7705A46C9032A281DA8037
            45B699A3A34970E25988C12C7FC81F8579B78AFE15E9DAC5A2EADE1E75B4BA91
            37BDB31FDDC87FD93FC27F4FA5731ACF8DEE6FE730DBB33B31C0C1AF46875036
            FA6DBC1B88F2E355C67DA90CF9F350D3AF34ABB6B5BEB778265EAAE3AFB8F515
            56BDC75A7D3F54B7306A16F1DC47DB77DE5F707A83F4AF37D47C20A26CE9B76A
            F193F72E182B28FAF43FE78A43396AD8D2FC3D73A8059A5616D687FE5AB8E5BF
            DD1DFF00956ADA69BA6E943CC9B6DE5C8E85C7EED0FB2FF11F73C7B77A6DEEBA
            58925893EA4D005EBA367A4E89756FA7A795BA321A527F7927D4FF0041C51E1F
            F8957FA622C1A8C5F6D84747CE241F8F43F8D72979A8BCF1B2939523F0AA2B96
            C01C93D2803DFF0043F1FF00852E9D1C5D0B2B87FBC1D4A1CFB91C1AEFF4FF00
            10DADCC788757B5980EEDB49FD08AF9BBC33E129F529D64950EDCF02BD874AD1
            2DB4B8111447E6B29655246E2075207538A684CEF5B5708BC5CD97D7CCFE9597
            7DAAC7302B25F82BFDD88ED1FA727F3AE6AF2EEC6D3C9FB65EDADB34E7112CAF
            82FCE381F5A8F57BEB1F0CD97DBB5769563F3BC954893712DC9FE94C469956BC
            900B78CBE78DEDFE27935A7A6E8EFA6CE6FAE66895954840149233DF9A65D6AD
            6DA4F83A5F1059C22ED56D45D47116DBB9700F279C601FD2B98F11F8C2FAE7C2
            DFDA7A5FD8D27FB225E345708D27EECA8C85C6064127AFA50068EBFE2668C18D
            2E6666ED87233F82E057370417BA94E249DE52A7A29635734B8E4BA834DD52E5
            E396E3EC5F699248E111A9254B8C28E38040CFB551F84BABDE6B0D796BAC6A32
            5DCBE547751B4B26E28A49523DBA5219DB68FA11555665207AD5CD4F5F8B438F
            10CCCE57AAC8C581FCF915E51F11355BFB5F1B5F49A7EA5776E2D6DAD7C95866
            2ABB98F71D0F06B2FC75E2495F5EBEB28092C93BA6076C1C5170B1EFFE1BF115
            AF8934E6BAB6F95A3731C884E76B0FE95B35E19F052E6E6C357BAB6B876297A9
            B802780EBFFD6CD7B9D31051451400570FE22BD597569154F11284FC7A9AEC6E
            E716B692CC467629207A9EC2B8BB6D25DC99AE5B924B331EE4F2680335239AE1
            B0AA7EB54BC59E1AD52F345B26D3AD1AEAE20BF8A73186032ABD7935D988D6DA
            3C4510047F14838FCBBFE9599A85E5D3A153752051D90EC1FA50070DA1784B59
            D2AD7C32B771C311B3D467B9981954F948CA36E7F1159F63A5EB897DAC3BC305
            935ED9CD14CB148A21B99893B0A2827048C67DF35ECB61A2D85EE956B2DDDA2B
            C8F12962D9E4E3AFE3513F81F42321912D9E263FDC90E3F23914AC3B9E372E9B
            AD4DE08D52D478792131D95B5A452083173311B77E48272A0838E3D2B4F4EF08
            DC6B1F113589EE64B9B5B3B3368C1043C4FB235C0DC7B029DABD5A3F0CC76CE1
            A0B87C0ED2283FA8C54B710EA89114B5820071D7CDEBF98A2C173C16CEE6397E
            1E7F67E4FDAE5F11A492C654820311B4FE3B0D67C02E6D7C6F2CD21FF4396FAE
            DD3FDF4520FE8C2BD4755B0F1C3B38B3B1039C82244033D8D600F0AFC50BA70E
            EF6F0A6E2429688904F53D3BD00713E1EBF974FD1B5986D61953CCB4B7BC0186
            37153B188F63BCFE5596B6DA96B32EE9998213F7457B259FC3DF14DDC5E46ABA
            BC4B6ECBB19539F97D300018FC6BA4D2BE1BE9762019E592E18760362FE9CFEB
            4582E793F877E1F49AA4A2D2395AD5DD4E2709B8C7C75C545AE7FC249E0F985A
            788E0DF0676C5A940B98A4F4DDFDD35F43DA585AD8A6CB6812253D768EB4EBBB
            2B6BFB592DAEE08E78241B5E39141047D28B0AE7CBB71AD215DC24041E460E6B
            12EB5A2490A6BD53C65F024624BDF08DC9849E5B4F9DB287FDC6FE1FA1FCC578
            C5F585CE8D7AF67ABDACD65729D6395719FA1EF458AB8925DCD33719E6A24864
            9A78E044927B890E238631B998FB0AECBC29F0DBC47E2F292DBC1FD9BA6B1E6F
            2E57961FEC2F535EF9E0EF871A0F8322DD67099EF98624BC9FE691BE9FDD1EC2
            8B0AE79AF817E0735C347A978B81118C347A6C6D8FFBF8DFD07FF5AB3E6F86CB
            61E30BE8153FD19652D0E47010F207E1D2BE89AA17FA45AEA0434819240301D0
            E0E298AE79F59D941A75B88E250081C9AC4D5EE6383C7BE16966952347B7BA88
            BBB6064A301CFD48AEFEE7C2571826DEED1FD1655C7EA3FC2A15F09F98221A86
            9F697661398CB22B95FA16031401E7DE368E7D2F58F0BDEB5D2D9347712C4D70
            F08944408E4953D7A9ADEF89B6326ABA268A74BB7FB6193508A62983B4AB0CE5
            BD179E6BBCB8B7B86870960249324E6429C1F6E6B97D47C39E25D49C85686043
            C1DD2F6FC3340CE4B465BFB7F08DAE81AAA181CC77162DBDBF84860ADF4F9BF4
            AB1A17876EDBC2A349D51ACD67FB2C966935B317223656C16ED904F6F4AEB74F
            F878202AD737FBCFF1048F9FCC9FE95D3DAE85616AA02C3BC8EF21DC68039AD1
            7C3F6F61E1CB6D2A7BB3398ED0DB19634DACC082320738201FD2B02C7C136BE1
            A2D3685A5EA2D3ADB340669E450AC33BB7300A327DFD057AA2C68830AA07D053
            66896782489B3B5D4A9C7A11408F9F356B6B8D4B504D425F08DCDDDD848C1916
            F19636D80052C8073D0719159167E1EBCB9D567BAD42165BAB895A59372E3E66
            3938FCEBDA6CF44D456578FC918462A2473B55BDC7D6B5C68D70E9B6E22B47F4
            0589FF00D969587738EF0CF87A4B79629A15C4884329F7AF4B86412C4AE3B8E4
            7A1F4AC9856E74B1FF001EDBE2EE11B7E3E8783F98FC6ADDADD432485E170629
            4E71DD5BB823B53117E8A334500656A3708D3AC1B1A52BF308D3AB1EDF4A20D3
            6690F99772053DA28BA2FE3D7F954DA75B247199F2CF34C773BB75E7B7D074AB
            F4015BFB3AD0F5B743F519AAD71A0E9D72A035B85C774257F9569514008A02A8
            03A0E94B45140051451400514514005145140051451400551BFD1B4CD51A26BF
            B0B7B9689B746658C3153EA3357A8A004555450AA0051D001D2968A2800A28A2
            800A28A2800A28A2800A28A2800A28A2800A28A2800AA771611CAE658C797363
            EF2F7FAD5CA28033D67D44280D64A580E4ACA304FB515A145007FFD9}
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo3: TfrxMemoView
          Left = 196.535560000000000000
          Top = 109.606370000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CIUDAD Y FECHA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 325.039580000000000000
          Top = 109.606370000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'ciudad_fecha'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."ciudad_fecha"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 536.693260000000000000
          Top = 143.622140000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'FOLIO')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 604.724800000000000000
          Top = 143.622140000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'cliente_id'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset4."cliente_id"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 11.338590000000000000
          Top = 143.622140000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'NOMBRE DEL SERVICIO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 215.433210000000000000
          Top = 143.622140000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataField = 'descripcion'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."descripcion"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 11.338590000000000000
          Top = 177.637910000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RAZ'#211'N SOCIAL DEL CLIENTE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 215.433210000000000000
          Top = 177.637910000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          DataField = 'NombreFiscal'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."NombreFiscal"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 11.338590000000000000
          Top = 245.669450000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'GIRO EMPRESA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 215.433210000000000000
          Top = 245.669450000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          DataField = 'giro'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."giro"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 11.338590000000000000
          Top = 211.653680000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DOMICILIO')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 215.433210000000000000
          Top = 211.653680000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          DataField = 'Domicilio'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."Domicilio"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 11.338590000000000000
          Top = 279.685220000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TEL'#201'FONOS')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 105.826840000000000000
          Top = 279.685220000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'telefono1'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."telefono1"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 359.055350000000000000
          Top = 279.685220000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TEL'#201'FONOS DE EMERGENCIA')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 565.724800000000000000
          Top = 279.685220000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'telefono2'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."telefono2"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 11.338590000000000000
          Top = 313.700990000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONTACTO')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 105.826840000000000000
          Top = 313.700990000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'RepSeg'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."RepSeg"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 359.055350000000000000
          Top = 313.700990000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'PUESTO')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 433.441250000000000000
          Top = 313.700990000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 11.338590000000000000
          Top = 347.716760000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'COBRANZA')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 105.826840000000000000
          Top = 347.716760000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'RepCob'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."RepCob"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 359.055350000000000000
          Top = 347.716760000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TEL'#201'FONOS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 452.338900000000000000
          Top = 347.716760000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'RepCobTD'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."RepCobTD"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 11.338590000000000000
          Top = 381.732530000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'COSTO MENSUAL ACORDADO')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 219.212740000000000000
          Top = 381.732530000000000000
          Width = 510.236550000000000000
          Height = 18.897650000000000000
          DataField = 'ContratoTot'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."ContratoTot"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 11.338590000000000000
          Top = 415.748300000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DIAS ENTREGA FACTURA')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 219.212740000000000000
          Top = 415.748300000000000000
          Width = 510.236550000000000000
          Height = 18.897650000000000000
          DataField = 'Pagos'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."Pagos"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 11.338590000000000000
          Top = 449.764070000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'FACTURACI'#211'N ACORDADA SEMANAL')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 268.346630000000000000
          Top = 449.764070000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 366.614410000000000000
          Top = 449.764070000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'QUINCENAL')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 457.323130000000000000
          Top = 449.764070000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 551.811380000000000000
          Top = 449.764070000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'MENSUAL')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 638.740570000000000000
          Top = 449.764070000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 11.338590000000000000
          Top = 483.779840000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'HRS. ENTREGA FACTURA')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 188.976500000000000000
          Top = 483.779840000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 11.338590000000000000
          Top = 517.795610000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'FORMA DE PAGO VIA ELECTR'#211'NICO')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 260.787570000000000000
          Top = 517.795610000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 11.338590000000000000
          Top = 551.811380000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'No DE ELEMENTOS ASIGNADOS')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 230.551330000000000000
          Top = 551.811380000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 11.338590000000000000
          Top = 585.827150000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'INICIO DE CONTRATO')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 166.299320000000000000
          Top = 585.827150000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'ContratoIni'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."ContratoIni"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 355.275820000000000000
          Top = 483.779840000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'HORA DE PAGO')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 483.779840000000000000
          Top = 483.779840000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 472.441250000000000000
          Top = 517.795610000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'VIA CHEQUE')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 570.709030000000000000
          Top = 517.795610000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 366.614410000000000000
          Top = 551.811380000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'EN TURNOS DE')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 483.779840000000000000
          Top = 551.811380000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 404.409710000000000000
          Top = 585.827150000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'T'#201'RMINO')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 483.779840000000000000
          Top = 585.827150000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'ContratoFin'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."ContratoFin"]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Footer2: TfrxFooter
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 914.646260000000000000
        Width = 740.409927000000000000
        object Memo81: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.559060000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            '[NombreEmpresa]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 11.338590000000000000
          Top = 21.236240000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            '[DireccionEmpresa]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 11.338590000000000000
          Top = 39.913420000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            '[EmailEmpresa]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 873.071430000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object Memo56: TfrxMemoView
          Left = 11.338590000000000000
          Top = 37.795300000000000000
          Width = 514.016080000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FICHA DE REGISTRO DE CLIENTES')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 11.338590000000000000
          Top = 68.031540000000000000
          Width = 514.016080000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DOCUMENTACI'#211'N PARA FACTURACI'#211'N FISCAL')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 608.504330000000000000
          Top = 11.338590000000000000
          Width = 118.157390000000000000
          Height = 120.598330000000000000
          Picture.Data = {
            0A544A504547496D6167654D3D0000FFD8FFE000104A4649460001010100DC00
            DC0000FFE1005A4578696600004D4D002A000000080005030100050000000100
            00004A0303000100000001000000005110000100000001010000005111000400
            000001000021D55112000400000001000021D500000000000186A00000B18FFF
            DB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A
            1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C
            2E333432FFDB0043010909090C0B0C180D0D1832211C21323232323232323232
            3232323232323232323232323232323232323232323232323232323232323232
            323232323232323232FFC0001108010C010203012200021101031101FFC4001F
            0000010501010101010100000000000000000102030405060708090A0BFFC400
            B5100002010303020403050504040000017D0102030004110512213141061351
            6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
            2728292A3435363738393A434445464748494A535455565758595A6364656667
            68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
            A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
            E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
            010101010000000000000102030405060708090A0BFFC400B511000201020404
            0304070504040001027700010203110405213106124151076171132232810814
            4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
            3738393A434445464748494A535455565758595A636465666768696A73747576
            7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
            B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
            E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA28A2800A
            2B96F16FC41F0F78322FF89A5E8FB415DC96D1FCD237E1D87B9AF326F8BDE33F
            1648D1F837C2EC21CEDFB44EA5803F5E147E7401EED597A8F89344D2091A8EAF
            656AC3F8669D54FE44E6BC6FFE100F895E27427C49E2E7B4858F36F048718FA2
            607E75A561F017C2D6ECAF7D737D7B2756DD20456FCB9FD6803A6BFF008D3E05
            B02CBFDAFF006861DADE266FD700573B3FED0FA0799E5D8E95A8DDB13C00A149
            FC39AE96C7E1CF8374C21ADFC3D6458746993CD3FF008FE6BA0860B6B55D96F6
            F142A3A08D028FD2803CC67F8C9E2CBD3FF126F015F329E8F346FF00D062A11E
            2BF8CB7FCC1E1FB2B453D3CC0323F36AF57CB48DB54127DAB1750F15F86F4A99
            A0D435FB082653868FCDDCCA7DC0CE280382F2FE345EF326ADA7D983D9154FFE
            CA6ABCBE09F8997CDBEEBC792C67D2291D47FE3B8AF43B1F14F877569961D3B5
            FB09E663858FCDDACDF40719AD197746C55C153E86803CA93E17F8A64FF8FBF1
            FEA8D9EBB2797FAB531FE0C35C1CDE78AF5398FF00B449FE66BD48B92700649A
            A9A96A9A5E8C40D5F56B3B166190934A3791FEEF5A00F37FF8525A6EDC3EBBA8
            B7E5511F819A277D52F4FE0B5DF41E2BF0B5EC822B5F12E9CF21380AF26CCFFD
            F58AD29E39202048B80C32A47208F63401E5CBF04B488B263D5EFD4FAA80298D
            F066D54EE8FC41A8291D0E071FAD7A804CC0F3BCD0C30A10A5E69022E4FB9A84
            CB687FE62BA67FE05A7F8D0079B8F867ABDB2E2D3C6DAB458E804AE07E8D511F
            0578E603FE8FE3DBFDBDB75C4BFF00C557A6C71C770DB60BEB1998F458EE5189
            FD6A3B982E2D5B1344C99E848E0D0079F476FF00162C176DBF8AE2B851FF003D
            8063F99526A41E28F8C365F7A3D3AEC0FF006579FD4576F1472DCCA23850BB9E
            80555BDD4B42D32568753F10E9D6B329C345E6EF653EE1738A00E5A3F8B5F112
            C0E350F08A5C007930AB7F4CD682FED0515AAA8D53C2DA8DB37F11E83F502B56
            DB52D07529162D3BC47A65C4CC70B19976331F60D8CD4D71693C1218AE2228DE
            8DDE8023B1F8FDE0CBAC09DEF2D49FF9E90E47E62BAAD3BE23F83B55506DBC43
            6193FC32CA233F9362B88B9F0E6937E08BBD32D26CF778573F9E3358B77F0AFC
            31783E4B292D9BD61948FD0E6803DDE29A29E3124322491B74646041FC453EBE
            721F0AB50D2A6F3BC37E26BDB171C81BD97F5522AE43E25F8B9E16CFDAA08B5C
            B61DF6866C7D5707F43401F40D15E43E1EF8F9A2DF5D0B2D76CE7D22E33B4B38
            DC80FBF71F88AF59B6B982F2DA3B8B6952586550E922365581E841A00968A28A
            0028A28A002B2FC4B7D3697E17D5AFEDF1E7DB59CB347B8646E54247EA2B52B0
            BC6DFF002226BFFF0060E9FF00F459A00F21F865F0EB4FF1169B1F8C3C50EFAA
            5E5F3B48B1CEC59786232DFDE391D0F15ECE8B1C112C50A2C71A8C2AA0C003D0
            0AE23E133E3E17E883FE99BFFE8C6AE9F51D52DB4CB46BABC984502B00CE7A0C
            9C0CD005F2FEF51992A1F30300C1810464107AD30BD004ACFEF5197A899EA32F
            CD007987C67F1D5E68C21F0D6953BC13CF0896F2643860AD9DA80F6C8193F515
            E37E1BF0DEA3E2CD6574DD3515EE194BB348D85551D4935D27C6391A4F8A7ABE
            4FDC10A8FA0892B63E0401FF00097EA2DDC69CF8FF00BE96988E13C4BE1AD47C
            25ACB699A9A22DC2A2C8AD1B65594F420FE07F2AF5EF83BE37BDD692E3C37AAC
            ED71241099ACA790E5F68EA84F718E47D0D73FF1E80FF84B74A6C7274B8F3FF7
            DBD61FC1E729F1374C00F0CB2A9FA18DA803D93C7FE2C93C1DE1137D6B8FED0B
            C90DBDA9233B38CB3FE03F535F362ADF6B9AB2A9792EAFAEE50A19DB2CEEC7B9
            35EBFF001EA4FF0040F0BC23A7FA4BFEA82BCE3C0201F883A003FF003FD17FE8
            540078B7C11AC782E5B58F5648B174ACD1B44FB81DB8DC3EA323F3AED3E1078D
            6EE2D5A2F0AEA3334DA7DE1D96DBCE4DBCBDB69F43D31FFD7AD8F8F7F3697E1F
            6EE2E2E87FE815E55E1094C1E33D1655382B7B11FF00C785007B97C53057E166
            A48DD56F6007F3AF9CEBE8FF008B9C7C39D687A6A10FF3AF9C47DE1F5A00D7D4
            FC29AF68B630DFEA3A5DC5BDA4D831CCC06D6C8C8E474E2BB5F84FE34D42DFC4
            56BE1DBFB996E34ABF6F2162918B79321FBAC99E9CE063DEBD13E2012FF07F51
            4624AA59583283D8EF4E6BC37C0C71E3EF0F1FFA88C1FF00A305007AD7C58F11
            DF786742B4D1F4F99A0B9D477BDCCD19C3F960E0283D8139CD78CE81A0EA1E26
            D6A1D2F4D884973364FCC7014019249EC2BD2BF681465F14E98D8FDD9B4217FE
            FB39AC1F839AB5A695E3E8C5ECAB147776D25AAC8E7015DB0464F6C918FC6803
            99F13785F51F09EABFD9FA92C6252824478DB72B29EE0D7AAFC1EF125F6B5637
            FA06A1335C0B3845C5A3C872C8A0E1973E95BDF123E1A6A1E2ED4B4FB8B6BFB3
            B6FB3DA8899662724E73C63B545F0EBE1A6A1E0DD72EB50BCD46CA78A4B37842
            424E72718EBF4A433AD587DAA7587DAACAC353A43ED4015960F6A9D61F6AB2B0
            D45757B676135AC37332A4B7527950A1EAEDED40185E23F03E8DE2CB5F2B52B4
            5328188EE106244FA1FE86B0BE10DB6A3E19F14F883C1D71766E6CACD527B727
            F843E0F03B641E47AD7A62C3ED5C4786576FC70F150FFA71B6FF00D056803D32
            8A28A0028A28A002B0BC6DFF002226BFFF0060E9FF00F459ADDAC4F1846D3782
            B5D8D7EF3584E07FDF0680388F854F8F865A28FF00A66FFF00A31A97E27367E1
            FEA63FD95FFD08557F85AF8F86BA30F48DFF00F46353BE24BE7C05A9FF00BABF
            FA10A011C2FC36F88AD6222D0F59989B5CEDB6B873FEAFD149FEEFA7A7D2BD94
            C991906BE47AF55F877F108C6B1687ACCE4A0F96DAE643F77D118FA7A1EDD3D2
            926368F5F67F7A6799F30FAD425FDE99E67CE3EB4C47CFDF17BFE4A96B5FEF45
            FF00A292B6FE0571E2BD4CFF00D435FF00F425AC4F8BDFF254B5AFF7A2FF00D1
            495B5F0378F146A87FEA1AFF00FA12D311E8BE31F02E8DE35BFB3BEBCD4EEAD6
            5B7B55B7D9144181C1273CFD6A9F863E1B683E15F105B6B106B17B3CB6FBB6C6
            F0801B2A475CFBD68F89BC5BE1CF095CDA5AEAAF7C67B8B75B81E4C60800923F
            A1AABA078EBC29E25D6A0D26C5F511733EED8648C05E013CFE5486723F1DDB74
            3E183EB15C1FFC792BCFFC01FF00250740FF00AFE8FF00F42AEFBE39FF00C7AF
            85FDA2B81FF8F25703E00FF9283A07FD7F47FF00A15311E97F1DCE748D03FEBE
            6EBFF64AF26F0CFF00C8D3A4FF00D7DC5FFA10AF57F8EB9FEC7D033FF3F577FC
            D2BCA3C33FF234E93FF5F717FE842803DEBE2E67FE15E6B9FF0061187F9D7CE1
            DEBE92F8BE31F0EB593EBA843FCEBE6D1C9C5007A7F8BFE29DAEBBE0A4F0FD86
            9D342F2C7025CCF2B8E447820281EA40AE57E1E5A4B79F113C3F14285996FA39
            0E074546DC4FE40D7A859FC0ED065B1B49E7D6EFC3CD0A4AC8912F1B941C03F8
            D76BE17F04F87FC1C1E4D22DE57BC917635E5CB06902F70B8E17F0140CCCF89D
            E0F9BC6DA2ABE9F86D52C24768A3271E7467AA8F7EE3F1AF9B2E2DE6B4B892DE
            E2278668DB6BA3AE194FD2BEC19A5B3D3BCB6BCD42D2D19C6E4F3A654247A8C9
            AE7FC4BE11F0A7C444F24EA16235854262BAB49919C81D9D41F985203C93C15F
            17751D0522D3B5A0DA9694BF2A963FBE847FB2DDC7B1AF7AD2EF6C35AD3A2D47
            4BB95B9B497EEB8EAA7D187635F2B78A7C2DA97843597D375241B80DD1C89F76
            45ECC2BB9F813AE4F69E317D14C8C6D75085BF764F02451B81C7D01A607D00B0
            D4EB0FB559483D6B3BC47E20D3BC29A3C9A8EA326D451848C7DE91BB281EB480
            A9E25F10E9FE14D1E4D43509300711C40FCD237A0AF09D0BC51A878B3E2DE8F7
            F7CF81F690B142A7E58970781FD4F7AE73C5DE2DD43C61ACBDF5EB6D8C7CB040
            A7E5897D07A9F5353FC3C38F883A21F4B81FC8D22AC7D6F8441C9AF3AF0D387F
            8E9E2EC745B3B61FF8EAD76525D81DEB84F04169BE33F8CA7FE1105BA7FE38B4
            C93D568A28A0028A28A002AA6AB08B8D1EF6023224B7913F3522ADD238CA303D
            C50078D7C2A949F875A6A9FE0322FF00E3ED573E20032F8175519FBB186FFC78
            563FC2B72BE0948CFF00CB3B9997FF001EAD8F189F33C1DABA7ADB9FD083FD28
            03E75A28A2A4B3D57C01E3D32AC5A2EAF365C7CB6D70E7A8EC8C7F91FC2BD28C
            983F4AF983BE475AF55F02F8E7ED91C7A46AB28FB4A8DB04EC7FD60ECADFED7A
            1EFF00CDA64B4733F19EDCC1F136FE43F76E2186553EA3CB51FCD4D5FF0081CD
            FF00155EA483967D3640A3D7E6535D7FC45F064DE34D3ED351D29436B1611793
            2C04E0CF1024AEDF7193C7BD78BC0FAE785B5559E1177A75F44480DB4A30F5EB
            D6A893BBF8E7203E2BD2A2FE38F4A8830F4259CD65FC1D85A4F89362EAB910C5
            348DEC0467FA9AE665FEDEF166AED3C8B79A95FCD805F69763D87D057B87C3AF
            02CBE0BB0B9BFD4994EB37B1794B0A9C8B78FA9C9FEF1E3E98A00C0F8E1116D0
            FC2D718E035CC64FA1CA11FD6BCE7C06C13C7FA0313802FA2FFD0857D01E24F0
            CC5E2EF0ACDA2C8EB15C2BF9F672B744900C60FB11C57CEFAAF8775DF0C6A1B2
            FACAE6D6689B2920538C8E85587140CF55F8F80C5A7F87E2618633DD360FA652
            BCBBC17035CF8DF4485464BDEC431FF02150EA5AB6BFE29BB85B50B9BCD46E11
            7647B816207A002BD73E137C35BCD2AFD3C4DAF426092253F62B571F396231BD
            876C0CE07BFB5023A3F8C43FE2DB6A87D6FA1FFD0ABE6A1F787D6BE9CF8AF657
            579F0CEF21B58259E66BB85B6468598F3CF02BE771E1AD7770FF008935FF005F
            F9F76FF0A00FAC6C23DDA4E9A7FE9CE1FF00D0055C486974B859747D395D4AB2
            DA44082390760ABE90D219E0DFB41C456F341931F2981D7F10DFFD7AE77E06BA
            AFC4DB5562017B69957DCEDCFF004AF6AF89FE0293C6DE1B8E3B3655D46CDCC9
            6FBCE03823E6427B678E7DABE669B4FF0010784B574964B7BCD3AFADDF292852
            A54FA834C47AAFED10B1ADF685D3CDF26407D76E78AE33E0E863F15745DBD9A5
            27E9E535735A86A1AE78A75159EF66BBD46F080AA482C71E800AF56F86DE117F
            03ACDE33F15116290C2CB6D03FFAC25BBE3D71C01EF401EDBAFF0088F4EF0D69
            536A37F2848631C0FE273D828EE6BE5BF19F8CB50F19EB2D7974C52DD0E2DEDC
            1F9635FEA7D4D3BC6BE34BEF18EAC6798B456719C5BDBE7841EA7D58D733525A
            415D2FC3E19F1EE91ED293F92935CD5751F0F573E35B27FF009E6AEDFF008E91
            FD6901F424B783D6B0BE178F3FC77E37BA3D7ED10C79FA2FFF005A896EC7AD1F
            068992FF00C6339FE3D4F6FE40D5127AAD145140051451400507A514500786F8
            053EC763AC58F436DAB5CC78F4C356DEBA3CFD03528FAEEB597FF4126B17486F
            B378EBC696478DBA91980FF7C67FAD6ECDFBD8258BFE7A46C9F9823FAD007CDF
            4507A9FAD15258500904104823A11451401EB7E03F1B8D43CBD33529765FA710
            DC138F387A1FF6BDFBFD7AFA7A5F5D30C4BE5CDFF5D63563F9915F2B2B323065
            62ACA72083C835ED3F0F7C769AC247A4EAAE17504188A62789C7A1FF006BF9D3
            4C968F455BBB8C613CB8BFEB946ABFC85304658E4E493536C48D0BC8EA8A3A96
            3802A8FF00C245A1C772F6E753B7F351773287CE07E14C45E482AE23C9B02362
            451D16450C3F5ACB8B5EB29F8B58AF2E8FFD30B676FD714CB6F15D9CB797166D
            61A945750100C4D6AC59B233C633401B918DA731C30C67D522507F954A232CDB
            98924F7359C97BAC4CBBADBC397383D0DCCF1C5FA649FD2891BC5FE5B3C5A3E9
            28429215EF9DC9F6C08C0FD6803622574E14919F4AB0A24EEC6B9FD3FC457896
            511D6743BFB6B9DBFBDF26DCC9183EC4127157ADFC57A35CCC218AF156627023
            9818D89FA3628035C479396341744F7AA92DD7A9AA72DE7A1A00D092EB8EB8AA
            53DCC6FF00EB1124C767507F9D67CB779EA6B36FF56B7B1B596E6E6658A08977
            3BB1E00A00BDA8EB365A358CB7D3FD9ED60886E6758C03F41EF5F3A78DFC6B79
            E30D50C8ECF1D8C4710404FF00E3CDEE7F4A5F1AF8CEE7C557FB50B47A7447F7
            311EFF00ED37B9FD2B95A4524145145218575BF0ED7FE2A3964FEE5B39FD40AE
            4ABABF02B18EF2FA51DA10BF9B7FF5A811E9125D81DEB7BE07C65B45D7AEFF00
            E7BEAF360FA818FF001AE1DA5720B740066BD17E07C5B7E19DACFDEE6E6794FF
            00DF647F4AA24F46A28A2800A28A2800A28A2803C42EE236BF19FC4B0F417304
            338F7F9403FCABA1861FDEA67FBC2B3BC636C6D3E33E9772784BED39E2FA9439
            FEB5D0243401F315F426DB51BA808C18A6743F8122ABD6F78DAD0D978DB58888
            C6EB96940F67F9C7E8D58352505145763E03F02BF8B6EA5B8BBB8FB1E916A47D
            A6E4F1C9E8AB9E33FCA819C8C51493BEC8A3676F451935E9FE05F83FA8EB461D
            4B56B8934DB4C868D507EFA4C771FDD1EF5DCE85A5684B7101D36C225D35A768
            2C205E5EF193EFCD231E76020803DB27A8AF5645DA8A0E3206381C53B12D9CB4
            FE08B28EC9CDA46B757D80124D52579D01F52B9FD062B4747F0F47A6AEFB9956
            EAE0800BF9091AA8F45551C0FAE4FBD6C492C7128323AA8240058E393DAB8AF1
            0FC49B0D1A3B816F03DEDC23148A288FDE2382CC7F8501E327A90714C4767344
            D242C91CAD0B11C3A0191F4C822A0B3B192D599A4BEB8B927FE7A84FFD954578
            E597C4AF107FA4EAFAC477BE55BB064B0D36288C7B3D647625C0CF1915D1F87B
            E2A58CD0CB7BE21D574EB2F35775BD842C6478D47776EEC72380074A49A63B1E
            9958DE20D3AFAF6D19AC2F2E629D47C91C7388558FA96D8C7FFD55CECDF136C2
            4443636B3481867737247D1172C4FE007B8AE9742D6FFB6AD7CEFB1DCDBF1922
            78CA63DB9EA7E991EF4C454F09E99E21D3ACE55F10EB09A84CCD98C24600887A
            6EC02C7DC814EF11F852CBC466DA6959E2BCB46DF6D3A807637BA9E187D7F4AD
            AB8595EDE4582411CC5484723214F638EF4CB25BA4B2856F658E5BA0A048F1A1
            5566EE4024E280389BABFD47466F2F5CB70A99C2DF400985FF00DE1D50FD78F7
            A1AF95D43230653C820F06BB196EE17334125BCEEABF2BFEE58AB67F0E6B89D7
            FC313E96ADA96850BBDA1F9A7B00395FF6E31EBEABDFB73D402ADDEA11DBC124
            F3CAB1C31AEE776380A2BC4BC65E319BC4977E4C05A3D3A26FDDA1E0B9FEF37F
            41DA97C65E2C9F5BBA6B3877C5630B63630C19187F130FE43B572948A4828A28
            A430A28A2800AED7C09006B6D465F745FE66B8AAF49F87F68CBA04F391C4D718
            1FF011FF00D7A04CD3BE4F2B4BBB93A6C81DBF2535EADF0A2CCD97C2FD023230
            5EDBCDFF00BED8B7F5AF28F17B35AF84AFDD78668F60FF0081102BDE3C3F67FD
            9FE1BD2ECB18FB3DA4517FDF2807F4AA24D1A28A2800A28A2800A28A2803CC7E
            294061F10F83F531C08EFCC0E7D9D703F5ADF586A8FC5EB677F033DF47F7F4EB
            986EFF0005719FE75B7022CD0C72A10CAEA1948EE0D007CF5F17ED0DBF8E0CD8
            C0B8B58DF3EA4657FF006515C157B1FC75D3CAB68F7E17E5C3C2C7DF823FAD78
            E5229057B0F80BC3BE21F16F80D74881ADF4CD156E1E492E4A9692E9F20E3191
            F28E067DABCEFC2FE1C93C437FB4964B58B99641FC87B9AF62B09752F0FDBC2B
            A4EA52A47080A96F70DBE261E98EDF51584F11084B959A2A7292BA382D6F40F1
            AFC3BD46D2E0C924D6B6ACC6D678497894139208FE1C9E706BD7F43F8B1A1EA9
            A1C2FE701AA32853664E1B7648E4F4C71927B035AFA378DF4AD5C2D96A0AB617
            EC30D6D7246D7F5D8DD1C7EBEA2AE4BE0CF0D5CDCADD9D1EC8CB9CEF110E6B64
            D357464FB33CAFC6BE31D535CD534DB4D2564FB0C12EDFB52C67175718C62207
            A85EC7A77F4AF3DD5751D4FC37E288ED2F6DCA45632AB9B5127FADEF967C7CC4
            FAE3E95F4EEB3E19B0D6B4A1612A1896361240F1FCA6171D197E95CB5F689753
            3469AEF85E1D6E583886F6D9A305FD372BB2953F42C2B9EBCEAC1A718F32EBDC
            A8D886DEF6DBC437DE14BFB8D345BAEA30DC4325AC8777C853760F0323283B77
            AD8B7F0469D6BAC33DAE83A24562B19DB988B4AEFF0096140FC73ED515869D2C
            DAB43A8EA2907F68C3195B2B08250CB6B193B59C9C8DC7A671D8607AD75526A1
            696918FB55E411B01C9670B93F89AAC2C250A769AB3D74EC293BBD04B5B28EDA
            DB6C56F6F0C857910AED5CFE59A4962B9B7D3CAD93A199790672CC0F3C827AFE
            3DBD0D574D4AC62B82CFAC4322C9C246644E0FB639AAFF00616835C6D5AEF5B9
            56108556D7704840F523A93EFF00A57412686977735ED989A64547248DAAAC3A
            7FBC01FD2AE938193515BDCC37512CB0389236E8CBD0D39CA6DDAE461B8C1EF4
            019BA8DC6A70AADC6990DBDF4607CF6E5F63B7BA3F233EC40CFA8A5D2B5DB3D5
            D5D22F321B88F896DA75D92467DD7FA8E299FF0008DE91BB72DA2A30FEE315C7
            E46A85C782AD24BFB5BD82FEFE09ADA40E8566DC31DD4EECFCA7B8A00F2CF8EB
            E17D3EC52D35CB3B368E6B894C7712464042719191EA79E7DABC52BE95F8E563
            7771E06FB4DBC8FE55BCCA6E221C8642701BEA1B1F99AF9AA932905145148614
            51450015ECFE0AB3687C21A7823FD60797F3623F9015E31F4AFA3B4BD35B4ED2
            ACAC5C7CF6D6F1C4DFEF2A807F5CD3426729E3284CD1E8DA7819FB66A504647A
            8DC335F4028C281E82BC567B737FF153C2B6017747079978E3D368C03F99AF6B
            A64851451400514514005145140197E23D346B1E1BD4B4E61FF1F36D2463EA54
            E3F5C5733F0CEF3FB57E1E68B3B3169238041267AEE8CEC39FFBE6BBAED5E73F
            0FA41A46ABE2BF0F14D82CF537B8847FD32986E5C7B0A00A9F1AF4C373E016B8
            51CDACE927E0783FCEBE77D334F9F55D421B2B71FBC91B19EC07735F57F8B6D1
            75BF0B6A5A731E66818281FDE0323F502BE7CF8690AFF6CDE3B8F9E38B033DB9
            E6B2AD3E48391A535CCEC7A0E8FA55BE8DA747676CB8551F337776EE4D5D78D6
            45C3A8619CE0D3A8AF15B6DDD9DD6D2C437F6D1EA51DBA5D223AC0E5D7E41924
            8C7271922A6D2B54BCF0C5D472DB35CDCE9E5B13D986DF85FEF4793C11E99E6A
            19AEADEDFF00D74F1C7C67E7602B9BD4BC5E46A30E97A4DB1B9BB9F1B1DCED8F
            07BE7B8E0F3D3EB5BD2956725CA6738C2DA9EB89F113C3A50169EED1F1FEADAC
            66DC3FF1DAC2D73E28DBC516DD334C9A57073E75EB8B6897DCE4EE3F4C5797EA
            1A4F88E68219753F105BDABDCA9782D216DAED1E701DB255514FAB367DB3C523
            FC35B2B4B05BFD6BC4F0DD4B2F105A69CC269253E8189C7D4E303D6BD34EA5B5
            B2396D1BE85ABFF1B06884775E2310C233FE89A344547249C6F3C9E49EE2B120
            D62CB51B83069DE1B975024732DD4C59BEA49CE3F3A60F0A42BAA2D9D969D71A
            9EA0C38B385B7245EF23F1CFE42BD3F48F8437B75671FF006E6ACD6A8464D8E9
            CA1117D8B7526B2E573D9DCABA89E59FD8125C78BB4BD3F4593EC9A8DD1C4B1C
            329716DEFB876C64E3B62BDF742F86BA3E92239AF1EE354BB500996F252E33EA
            14F02A7D13C0DA1783525BAD1EC63378C31E6DCCC727DB760E3F2A92F7C5F3E9
            ED1C6FA05F5EC8C4865D3192E0263D79523F115D118F2AB33393BBD0BF3F89F4
            5D3EE8595E5DAD9CBD1567431A9FF7588C1FC0D59BBB6D3759B506658EEA14F9
            976B67F2C53C2C3AC694A66B6748E74E639E3C3AE7B107A1AE361F06F87B48F1
            02476FA9EA363792112AA09D923979E401F74FB81CD51267FDB3C157DA84BF61
            F105FE8B7B19D84B4924209FF7641B4D74B04FE28B0F25A36B3D7ECD98069236
            104C83D7BA3FE6B5D0DDD8D95EC0D1DE5B413464722540C3F5AC183C2765685A
            6F0F5F4BA71639D90307849F743C7E58A00DAD5F4D8758D1EF34EB95CC3750B4
            4E3D88C57C77AFE857BE1BD6AE34BBF8F6CD0B633D9C7661EC6BEBA86FAFEC49
            5D656DFC9C854BAB7DDB4FFBEA7EE7D7247B8AE6FE24FC3F83C6BA479D6BB23D
            52DD498243D1C7F718FA1F5ED498D33E57A2A5B8B79AD2E65B6B88CC7344C51D
            1BAA91D454548A0A28A280353C3762352F13E996646565B940DFEE8393FA035F
            4B084B3163C92726BC47E12695F6FF00190B965252CE26933E8C7E51FCCD7D00
            B085196E001C93DA9A259C9783ADDAFBE2E6BB7DC18B4FB38AD54FA337CC7F9D
            7AAD79D7C22845C693AC6BC727FB5B539A68C9EF1AB155FEB5E8B4C414514500
            145145001451450015E65E21FF00891FC5AB1BDDC561D66C9AD9C76F323395FC
            4827F2AF4DAF3BF8C16B22785ED75B81733693771DC93DF6670DFA1A00D392EF
            0739AF0D253C29F14AF6DDD956D6EA4DCA7B05930EBF9138FC2BD4FEDC92C4B2
            AB865750CA41E0835E67F14AC44C2CF558C0CAFF00A3C98EB8E4A9FF00D087E5
            5138A945C595176773BECF1587E23F12DA68368C59D5EE987EEE107927D4FA0A
            E4FC27E3910AC7A7EACFFBB1858EE0FF000FB37B7BD6078C6C27B4F10DC4F212
            F0DD31961941C8653DB3ED5E6D3C37EF3967FF000E75CAAFBB7898F7D7B71A95
            E3DCDD48D24AE7924F4F61ED5D9697AC58687F115751BC1BEDACA0DBB08C9761
            1050B8F735C96996CB757ABE6B6D823FDE4AC7B28EBFE144C67D5F5795A0859E
            5B8909545193C9AF43452F439B745CD4EFF50F1878924B9642F7372F848D7A22
            8E8A3D0015DDE91A4E9BE198BC996F2082E8AEEBCBE7E9029ECA3A963D94727A
            F41586AF6BE06B12034771AECEB838395817FC6B8DB8B99EEE6696795A47762C
            4B1EE6B3D6ABFEEFE657C0BCCF6EB4F8CFE1AF0EA0B1D1B42BA9ADD4FCF70EEA
            8F29FEF1EA493EF5D3E91F1B7C2BAA7EEA7927D3673C2FDA93284FFBCB9C7E38
            AF0CF07E9FA4EA525D43ABDB4CD0AA86F3EDE4C4908EEC13F8D4752072073D33
            5D2EB9E05B4D396DE0BCF2A2B6B9C7D835BB6C982427A2CCBCED27FBC3F5E71D
            0667A55C7C498923D9AC69515DDA6E0C1E10CA081D0812A856FF0080B1AD7D2F
            55F0D789AECC9A1EBD2DB5DCAB96B689FCB6E3B98D875F7C5791F80EC7C4DA66
            B57DA1457107DA625DEDA45F0CC3791F728DD33DC7AE73D8D77B75F0CF4DD62D
            E2D6742175A16AF012442490239075523D3DC1C1CD023A1D6EDFC65A35AC53E8
            174DAD4A650AF6B76234C260E4EECAF7C7E759A9AC6A5E30B1B9D2AEED21D2B5
            48C6D974FBF1F2CBE9244E39E0F719C1ACDF877F146EB56D73FE118D7A151A88
            2E915C47821CA02486C77C03C8AF46D5BC3FA5EB9E51D42D12678493149921A3
            27FBA47229819FE0E8B5D8F40FB1F892243750B18848240E268FB37E5EA0536F
            7C15A7484CBA73CFA55C63E592CA42801F529F74FE55199758F0D492C972DFDA
            1A2260EF1937102F7247F1A8F6E71EB5D34334771124B0BABC6E032B29C820F7
            A04729F69F13F87E066BF8535DB241F3496ABB2E547A98FA3FE041F6ADAD175C
            D2F5CB53269B70B22A7CAF1ED28F19F465382A7EA2B52B9AD7FC2AFA85E43AA6
            957ADA6EAB09E2745CACABFDD917F885007CEDF15BC3DFF08FF8EAF046856DEF
            0FDA22E38F9BEF0FCF35C4D7D11F1D3C3B3EA1E19B5D6634579B4F389CA8FE06
            C723D81FE75F3BD229051452A2348EA88A59D88555032493D05219EEFF000434
            6317876F35361F35D4DB1723F8547F89FD2BB3F1DDEBE91E0AD4A787FE3E648B
            C880772EFF0028C7BF3FA56BF853405F0F785F4ED2CE375BC204847773CB1FCC
            9AC4F16A2EAFE2FF000CE848A1E359DB50B81FECC43E5FFC788AA20EA3C33A3A
            787FC33A6E931E31696E91123F8980F98FE2727F1AD5A28A0028A28A0028A28A
            0028A28A002A96AFA6C3AC68F79A75C28315CC2D1367DC6335768A00F9DBC317
            93C3A549A55E1C5DE9733D9CA33FDC381FA7F2AB1AC46BAAE957562796950ECE
            3F8C72BFAF1F8D4DF106C1B40F89CF708BB6D75B80498038F39383F89183F89A
            A0BE6160C09041C823B5219E4A41048230475A99AF2E5ED16D5E776814E56363
            90A7DBD2B67C5FA6FD835B69635C4176BE7201D89FBC3F06CFE0456052B144F6
            B324526268DA481BEFC6AFB73F8D697FC24125B44D16976D1D8AB0C3489F3484
            7FBC7FA5635152E09EE34DA15999D8B392CC4E492724D2515E89F0DFC0926B29
            71E21D4213FD9764ACD1AB0FF8F8900E00F607AFE5EB5422EFC34D1C0D662D36
            E32ADAA69EB796B2E3FD54CACDB4FE215F23B8AF46D2E386D55B4AD46D91F41D
            4A56B69207E4595DF74F647EABE871EA2ABB69C749F157865D6308CA2CE0C01D
            372DDEE1FAD74DABD8470F8996394674FD723304C3B477083746E3DCA823EA8B
            4C9395BAF095C69D7F6BA6493BAB42E5F42D58F2D0B8E7ECF29EE08E99EBC8AF
            44D0B536D4EC375C4460BC85BCAB984F549075FC0F507B835623B4371A6A5B5F
            289180018FA91D1BEBDE87B20978B790F12ED0920ED22F6CFB8EC7DCD311C878
            BBE1BDA6AD22EADA195D335E81BCD8AE221B43B7A301EBEB54BC1DE3EBF1AD7F
            C22FE30B7165AC01FB994F0971F43D327B7AFD6BD22B95F1F78462F16787E486
            3545D461C496739E0A3839C67D0E31F8D0075440231D8D7357DA55DE8AEFA8E8
            232BBC3DCD87F0CABFC453FBAF8E9D8D3BC1BABEA1A9E9223D56D0DADFDB6229
            A33BB2481D7903AFB123DEBA4A00AF637B6FA8D9C7756B20921906548FE47D0F
            B558AC29B4B9B4CBB9750D250B79AC1AE2CF76164E7965F46C7E07BFAD6E29CA
            838233D8D006378AF414F12F86AF74B691A269A3223914E36B0E87E99EA3D2BE
            3BBCB49EC2F67B3B94293C1218E453D981C1AFB7ABE6DF8E9A1C7A778BE1D461
            5DAB7F16E703FBEBC1FD31498D1E5B5DBFC28D146AFE3AB59644CDBD8FFA4B9C
            7191F747E7FCAB88AF75F857A50D1FC2FF006E9001717E7CCF7118E17FA9A06C
            F569B501D8E6B95F0113AF789FC41E276C34225FECFB360720A47F788FAB1AC7
            F19F88DB49F0D5DCD03137522F936E0753237031FCFF000AEF3C15E1F1E17F07
            699A4617CCB780098AF4321E58FE64D324DFA28A2800A28A2800A28A2800A28A
            2800A28A280384F8AFE1C935DF074B3DA2E6FF004E6FB5DB91D4EDFBC3F119AF
            34D2278B54D32DEF6220ACA9920763DC7E0722BE852030208C83D45780BE91FF
            0008878F751F0F9056C6F09BDD3C9E983F7907D0FF002F7A00CDF16E8C751F0F
            BBC4B99AD099970392B8F987E583F8579657D0B1C207F083EC4641AF1CF19E80
            741D75D635FF0044B81E6C07D06795FA83FA63D69148E768A2A7B1863B9BFB78
            6591638DE455776380AB9E4FE54867A2FC37F855378B235D575376B7D283E114
            0F9E7C75C7A2F6CD7B66BDAFF867C09A0C76D78F1430226D82CE3E5DC0EC17FA
            9AF24F147C627B7B28F44F0827D9ACEDE3108BB61F310063E41D87BD7945DDDD
            CDFDCBDCDE5C4B713C9CBC92B1666FA934C56B9F5F4D609AE4FA26AA89B16391
            6E5831E702370A3F392B4F52B28AF608FCD3B443324EADE850E6BC5BC1FF0019
            6DB4FF00054D65AA06FED1B1836DA903227ECA0FA11FCAB7FE15F8A67F107823
            5A4BFB9696F2DA49598B1C9D8EA587E19DC3F0A62B1D178F7C7307873C16DAB6
            9D7105C4D3B88AD595832B31EA78EA0006ACF833C7165E2EF0DB6A31109716EB
            8B9833CC6C067F238E0D7CA33DF5CCD6D1D9BCCED6D048EF1464F0A5B1B88FAE
            0559D0F5FD47C3D7725CE9D398DA589A2917B3A91C82295C2C7D49E06F1D58F8
            D6C26921022BAB772B2C19C9033C30F6358DE2BF1C5C7813C5F6CBA96EB8D175
            14CA903E6B775E0E3D4720E3DEBE78F0CF88EFBC2BAE41AA584844919C3A6789
            10F553EDFF00D6AECFE2B78EB4EF1A41A2369E18186377991C728CC40DBEFF00
            77F5A2E163E91B0BEB5D4ACA2BCB29D27B7957724887218559AF90FC31E3FD7F
            C256B736BA6DC8F2261C2483708DBFBCA3B1AFA43E1FF8CEDFC67E1E4BB1B52F
            22F92E6207EEB7AFD0D170B1D6515E47F13FE24EA9E0FF0015E9F6BA77952442
            1F32E2191787C9E39EA3815D1F86BE28E85AFE8377A83C86DA5B184CD756EE7E
            6550392BEA298AC7735E0BFB42E7EDFA2FA794FF00CC57B3685E22D2FC49A7AD
            F6957697109EB83F321F461D41AF23FDA1A03E5689718E37489FC8D263478F78
            7F477D775BB7B04C8476CCAE3F8107DE3F97EB8AFA0173E5A4512EC89142228E
            8AA0600FCAB95F867E17361A27F68DC211717A032E472B1F6FCFAFE55D96AB77
            6BA0E8D75A9DDF10DBC65C8EEC7B01EE4F1420660E99A77FC24DF12ED6D586FB
            2D1145D4FE8663F714FD3AD7B3D717F0CF40B8D23C35F6CD4536EABAA486F2EB
            23054B7DD5FC062BB4A620A28A2800A28A2800A28A2800A28A2800A28A2800AE
            13E28F86E6D67C3E9A969E99D574A6FB4DB91D580FBC9F88AEEE8EB401E4BA2D
            E41AC6936BA85B9CC73A06C7A1E847D41C8FC2AAF8B7C303C45A0C96E8A3ED51
            664B73FED7A7E3D3F2A9E5D34781FC69258636E8BAD4AD359B1E904E7EF47EC0
            F515D5A407D2803E4F7468E468DD4ABA92181EA0D36BD53E2BF8264B6B97F11D
            8464C129FF004B451F71FF00BFF43DFDFEB5E5752505145140C2BA9F05F8ACF8
            5FFB65496D97D60F0A81FF003D3F80FEA7F3AE5A8A0028A28A0028A28A002BA7
            F0178BEE3C1BE2586F94B35A4988EEA207EFA7AFD4751FFD7AE628A00ECFE296
            B50EBDE3CBBBAB69164B754448DD4F046D073FAD71C923C7BB63B2EE5DADB4E3
            23D0FB5368A00D3D0FC41AA786F505BED2AEDEDE61F7803F2B8F461D08AF51BC
            F19E9DF11F4AD221D72D25B66B4BF8C5C3C6A4C2E1B8C6EFE1C9C673DB35E4BA
            6E9D75ABEA56FA7D8C4D2DCCEE1110773FE03AD7D4FE11F065AF86FC371699B1
            252C375C3B2E448E7AF5EDD8534265C86C42A850A155460281C01D8572D796AB
            E2CF1EDB688A03E97A3B2DD5FF0070F3758E33EB8EA45749E2EF1143E16D11AE
            238FED37F33086CED97ACD3370ABF4CF5A9FC0FE1B93C39A084BB93CED4EEDCD
            CDF4DFDF95B93F80E8299274BD28A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A00E77C71A45BEB1E10D461B80418A269E2914E1A39106E56
            07D4115C97C37F15C7E2EF0FA990A8D4AD7115D27A9ECE3D8FF3CD77BE21FF00
            916B54FF00AF497FF4135F22F85FC4579E15F1043AAD9372A76CB1E78953BA9A
            067D6325845756F25BDC46B24322957461C303D457CD5F113C0971E0DD5CB44A
            CFA5DC3136F2FF0077FD83EE3F5AF65D23E327846FD5167966B3988E5668C900
            FA6466AE6BBE24F0AF897479B4D999AF609C6311C472A7B104F422906C7CB545
            7A25B7C28BC9AF1CC97A90D9EF3B18AE5CAF6E3B1AECECBC23E13F0E2422E459
            89E63FBB92FDC1673D3E5078033ED458773C62CB42D5B5150F67A7DC4C87A3AA
            1DA7F1E95B50FC3BF114AC035B4710F57907F4AF65BFD4AC34AB9B3B2BB99A29
            EEB22086284B9201C76ED4B6D79657BE21D434688DDB4DA7863732F93FBB4C02
            719CF7C1C7D28B0AE79447F0BF566902BDD5B28EE464D6941F06F519FA6A300F
            F801AEFF00C39E23B2D612F65874ABD48EDED9EE63964C149829C6370E15BDAA
            CDC7C418ACFC39A0EA167A5096EF586658A07970A9B7AE5B1EE3B51A06A70DFF
            000A1F553033AEAD6A081C064600D60EA1F0A75AB08CB7DAEC6561FC2B211FD2
            BD3F52F88F6E347D07519EDA45B7D59D9180976F93B40CF6E7935CFEA9AED90F
            0D58F882EE3BC582F4AA476F138660C77127240E0051F9D01A9E553F86757809
            06D0BE3FE7990D59B3DBCF6CFB2E219227FEEBA907F5AFA021B5D26CC692D2CE
            E8355754B40D1E4B3100E0E3A7DE15D59F0F68D306B4D4A3B39CAAEF68250ACC
            17D769E71EF4582E7CA140049000249E0015ECFE35F00F855DDA5D29DF4E9BBA
            2FCD19FC0F4FC2B96F08C7A0785F5937FAE4BF689A16FF0046544DC8ADFDE23D
            476FCE90EE7A57C29F04A78634FF00ED7D4A20354B94C2A38E6143DBEA7BD777
            79ABA451B33C8155464927000AE19FC7FA5DD2EE82EF764740873FCAB98F10DC
            5FF8A215D3ED19E0B290FF00A439C86917FBA3D01EF4C46C785F5B4F17FC52B6
            D46E10BD8C11CABA6A9E808E0CB8F7E40FA57B4D794F81B40FECFD6ED67D9B42
            A94181D06D3802BD5A98828A28A0028A28A0028A28A0028A28A0028A28A0028A
            28A0028A29AEC1119D8E028C9A008AF2DD2EEC67B6719496364619EA08C57C7B
            0F862FE7D466B7F2593CB9190823A60E2BEC1B6BEB5BC4DD6F711C9C67E56C9F
            CAB88D5F4AB7D3F5BB99C42A0DC379AAD8F5EBF8E73F9D034CF35D03E1F47085
            96E171EED5D4EA175A6F84B4EB79BEC735C3CF37911AC400F9B191927A679FCA
            B51E7AC9F1268D73E21F0BDED95BC464B81B668173825D4F4FC41228039DD7BC
            79AB47736171A4EDB7D3EEA0F3618FECCB23C92236D9637639C6307A63B547F1
            0D6DEEE7D23568E54FB06A3A6CB6EB2FF086525D79EC72C3F235DE378120D534
            3D22C44634EFB03A4F18897714247EF109CF3B89E4E7B56E5AE99A0F86F498B4
            A5884D046CCE904BFBD20939CF3D39CE2901E7D77697FAA5D7C3AD4626BBB696
            64749A6850EE8C613AF1C03CF5AD3D3ACAE74CF8BFADDE4D677E6D2E8288E746
            C5B9250E4C83F880CF1E8735BBAC789EF05BC82CADC28453B558E3381D80AF0C
            D4FE247882FE5601E281738DAAB9FD4D00779E18B0D4748F12DFCB73143A6E9B
            796D3473431CE0C324AC4EC645DC48E31CF6E6A36F0FEA0FE1AF0CDB42D6D26A
            1A44B23BC266015D5CF186E991B47E75E592F89358941CDF48327394014FE605
            353C47AE47F7357BD5FA4EDFE340EC7AE5FF00C3EBFD57C31E1DD2164818D845
            73E7B6FC0123AE531EA370151EB9E08F143E83E1ED3EDED2165D3EC2732EE704
            195948C0E7938C60FA9AF3187C69E27B77578B5FD401539199D88FC8F15A4FF1
            3FC612A959B573283FDF853FA0A0353D25D2E6DFC5DE03B7BEB4B8586CACF058
            445956E18155048E06085A5B7BF92E7C41E30F1209E14785069B6534CC020942
            92073EAE16BCC61F1A7896F6E161B59E5170C78303329FAF06BB3963D724B592
            C75F8D6EAC246590BD9C6B132C80E449955E5BFDE07340880EA9731F8067D5B5
            794EB05AE23B6862BA9184D14BF379A0B0C1C6070324565D9E9BE17D5E5BF9A3
            6BCB25B2B55B99E495C4D10CED054701B396C0EBD2BAA7F07C5ACE856767A55C
            B2C7035CCCFF006A7DCD3CF2210AC4818E0E2AA4FE01D6B45F02788635B26924
            9A5B68D443F333C2843330039FBDDA802CF86B42D375484CDA64CD3246C12457
            8CA3A1232320FA8AF46D27C28B1AAB3A803DC5657C28D26582DB5ABF9ED64862
            BBBE2D6EB32156F2D46D5383D38AF47E00A00CF86CA1B7BA8563182AA49FE55A
            35496E205792E6591113EEAB3363207FF5EB3E4F14591BB86DAD83DC492C8106
            D180327AF34C46ED14521200C9381EA680168A40CAC320823D8D2D0014514500
            1451450014515CAF8DE4BD92C61B1B2B8680CEC7CD74383B3D33DB34016356F1
            AE8DA44C6DE4B8335C8E3C9806F607D0FA567C3E34BABB1BA1D2BCA53D0CD2E0
            FE40573361A2D969CB9540F2776346B3AE41A2D9C134B6B7172D3DC2DBC71C0C
            AA7711C726803ADFF84AEE17EF5AC47E921FF0A51E30EA24B227D924CFF302B8
            9B0F11E99A9DAE89711C3761756B97B6452CA0C2CBD7771CFE18A5D07C53A56A
            57970A2C2F62B585656FB5BE191847F7B207DD27B03401A5E437DB1DED209C44
            C77271F32E7B71E95A2CF2C96FE5DE4B304E9FBE24E3E85AB3B47F891E1F9ECA
            F6E5ADAEED96D20173FBE8C12F11380CB83EBDA9BABF8CEC6E7514D2E3D4116E
            6448D92392260BFBC00A0271804822802FC3A6DA28DC3508DB9FF96ACBFCC62B
            5A0FB2DBAE5EF6C971FED67FA8AF3D6B417B04B7B2EAB67F648AE0DB3B8930AB
            2F1F2F23AF22B5F4FD334C47546BFB42DE698702504EF5192BF502803AAB9D4A
            13F20BD7914FF040303F31CFEB5563B29EED8AC30F9484FDF7EA7F0FF1A76997
            7A0B5AC93DADF417290B047F29B3B5B19C1AC8D77C7705A46C9032A281DA8037
            45B699A3A34970E25988C12C7FC81F8579B78AFE15E9DAC5A2EADE1E75B4BA91
            37BDB31FDDC87FD93FC27F4FA5731ACF8DEE6FE730DBB33B31C0C1AF46875036
            FA6DBC1B88F2E355C67DA90CF9F350D3AF34ABB6B5BEB778265EAAE3AFB8F515
            56BDC75A7D3F54B7306A16F1DC47DB77DE5F707A83F4AF37D47C20A26CE9B76A
            F193F72E182B28FAF43FE78A43396AD8D2FC3D73A8059A5616D687FE5AB8E5BF
            DD1DFF00956ADA69BA6E943CC9B6DE5C8E85C7EED0FB2FF11F73C7B77A6DEEBA
            58925893EA4D005EBA367A4E89756FA7A795BA321A527F7927D4FF0041C51E1F
            F8957FA622C1A8C5F6D84747CE241F8F43F8D72979A8BCF1B2939523F0AA2B96
            C01C93D2803DFF0043F1FF00852E9D1C5D0B2B87FBC1D4A1CFB91C1AEFF4FF00
            10DADCC788757B5980EEDB49FD08AF9BBC33E129F529D64950EDCF02BD874AD1
            2DB4B8111447E6B29655246E2075207538A684CEF5B5708BC5CD97D7CCFE9597
            7DAAC7302B25F82BFDD88ED1FA727F3AE6AF2EEC6D3C9FB65EDADB34E7112CAF
            82FCE381F5A8F57BEB1F0CD97DBB5769563F3BC954893712DC9FE94C469956BC
            900B78CBE78DEDFE27935A7A6E8EFA6CE6FAE66895954840149233DF9A65D6AD
            6DA4F83A5F1059C22ED56D45D47116DBB9700F279C601FD2B98F11F8C2FAE7C2
            DFDA7A5FD8D27FB225E345708D27EECA8C85C6064127AFA50068EBFE2668C18D
            2E6666ED87233F82E057370417BA94E249DE52A7A29635734B8E4BA834DD52E5
            E396E3EC5F699248E111A9254B8C28E38040CFB551F84BABDE6B0D796BAC6A32
            5DCBE547751B4B26E28A49523DBA5219DB68FA11555665207AD5CD4F5F8B438F
            10CCCE57AAC8C581FCF915E51F11355BFB5F1B5F49A7EA5776E2D6DAD7C95866
            2ABB98F71D0F06B2FC75E2495F5EBEB28092C93BA6076C1C5170B1EFFE1BF115
            AF8934E6BAB6F95A3731C884E76B0FE95B35E19F052E6E6C357BAB6B876297A9
            B802780EBFFD6CD7B9D31051451400570FE22BD597569154F11284FC7A9AEC6E
            E716B692CC467629207A9EC2B8BB6D25DC99AE5B924B331EE4F2680335239AE1
            B0AA7EB54BC59E1AD52F345B26D3AD1AEAE20BF8A73186032ABD7935D988D6DA
            3C4510047F14838FCBBFE9599A85E5D3A153752051D90EC1FA50070DA1784B59
            D2AD7C32B771C311B3D467B9981954F948CA36E7F1159F63A5EB897DAC3BC305
            935ED9CD14CB148A21B99893B0A2827048C67DF35ECB61A2D85EE956B2DDDA2B
            C8F12962D9E4E3AFE3513F81F42321912D9E263FDC90E3F23914AC3B9E372E9B
            AD4DE08D52D478792131D95B5A452083173311B77E48272A0838E3D2B4F4EF08
            DC6B1F113589EE64B9B5B3B3368C1043C4FB235C0DC7B029DABD5A3F0CC76CE1
            A0B87C0ED2283FA8C54B710EA89114B5820071D7CDEBF98A2C173C16CEE6397E
            1E7F67E4FDAE5F11A492C654820311B4FE3B0D67C02E6D7C6F2CD21FF4396FAE
            DD3FDF4520FE8C2BD4755B0F1C3B38B3B1039C82244033D8D600F0AFC50BA70E
            EF6F0A6E2429688904F53D3BD00713E1EBF974FD1B5986D61953CCB4B7BC0186
            37153B188F63BCFE5596B6DA96B32EE9998213F7457B259FC3DF14DDC5E46ABA
            BC4B6ECBB19539F97D300018FC6BA4D2BE1BE9762019E592E18760362FE9CFEB
            4582E793F877E1F49AA4A2D2395AD5DD4E2709B8C7C75C545AE7FC249E0F985A
            788E0DF0676C5A940B98A4F4DDFDD35F43DA585AD8A6CB6812253D768EB4EBBB
            2B6BFB592DAEE08E78241B5E39141047D28B0AE7CBB71AD215DC24041E460E6B
            12EB5A2490A6BD53C65F024624BDF08DC9849E5B4F9DB287FDC6FE1FA1FCC578
            C5F585CE8D7AF67ABDACD65729D6395719FA1EF458AB8925DCD33719E6A24864
            9A78E044927B890E238631B998FB0AECBC29F0DBC47E2F292DBC1FD9BA6B1E6F
            2E57961FEC2F535EF9E0EF871A0F8322DD67099EF98624BC9FE691BE9FDD1EC2
            8B0AE79AF817E0735C347A978B81118C347A6C6D8FFBF8DFD07FF5AB3E6F86CB
            61E30BE8153FD19652D0E47010F207E1D2BE89AA17FA45AEA0434819240301D0
            E0E298AE79F59D941A75B88E250081C9AC4D5EE6383C7BE16966952347B7BA88
            BBB6064A301CFD48AEFEE7C2571826DEED1FD1655C7EA3FC2A15F09F98221A86
            9F697661398CB22B95FA16031401E7DE368E7D2F58F0BDEB5D2D9347712C4D70
            F08944408E4953D7A9ADEF89B6326ABA268A74BB7FB6193508A62983B4AB0CE5
            BD179E6BBCB8B7B86870960249324E6429C1F6E6B97D47C39E25D49C85686043
            C1DD2F6FC3340CE4B465BFB7F08DAE81AAA181CC77162DBDBF84860ADF4F9BF4
            AB1A17876EDBC2A349D51ACD67FB2C966935B317223656C16ED904F6F4AEB74F
            F878202AD737FBCFF1048F9FCC9FE95D3DAE85616AA02C3BC8EF21DC68039AD1
            7C3F6F61E1CB6D2A7BB3398ED0DB19634DACC082320738201FD2B02C7C136BE1
            A2D3685A5EA2D3ADB340669E450AC33BB7300A327DFD057AA2C68830AA07D053
            66896782489B3B5D4A9C7A11408F9F356B6B8D4B504D425F08DCDDDD848C1916
            F19636D80052C8073D0719159167E1EBCB9D567BAD42165BAB895A59372E3E66
            3938FCEBDA6CF44D456578FC918462A2473B55BDC7D6B5C68D70E9B6E22B47F4
            0589FF00D969587738EF0CF87A4B79629A15C4884329F7AF4B86412C4AE3B8E4
            7A1F4AC9856E74B1FF001EDBE2EE11B7E3E8783F98FC6ADDADD432485E170629
            4E71DD5BB823B53117E8A334500656A3708D3AC1B1A52BF308D3AB1EDF4A20D3
            6690F99772053DA28BA2FE3D7F954DA75B247199F2CF34C773BB75E7B7D074AB
            F4015BFB3AD0F5B743F519AAD71A0E9D72A035B85C774257F9569514008A02A8
            03A0E94B45140051451400514514005145140051451400551BFD1B4CD51A26BF
            B0B7B9689B746658C3153EA3357A8A004555450AA0051D001D2968A2800A28A2
            800A28A2800A28A2800A28A2800A28A2800A28A2800AA771611CAE658C797363
            EF2F7FAD5CA28033D67D44280D64A580E4ACA304FB515A145007FFD9}
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 154.960730000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DOMICILIO FISCAL')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 154.960730000000000000
          Top = 154.960730000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataField = 'domicilio'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."domicilio"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 11.338590000000000000
          Top = 188.976500000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'COLONIA')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 154.960730000000000000
          Top = 188.976500000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          DataField = 'DomColonia'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."DomColonia"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 540.472790000000000000
          Top = 188.976500000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C.P.')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 600.945270000000000000
          Top = 188.976500000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'DomCP'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."DomCP"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 11.338590000000000000
          Top = 222.992270000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DELEGACI'#211'N O MUNICIPIO')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 196.535560000000000000
          Top = 222.992270000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'DomCiudad'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."DomCiudad"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 11.338590000000000000
          Top = 257.008040000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RFC')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 154.960730000000000000
          Top = 257.008040000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'rfc'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."rfc"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 321.260050000000000000
          Top = 257.008040000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CIUDAD')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 396.850650000000000000
          Top = 257.008040000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'DomCiudad'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."DomCiudad"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 11.338590000000000000
          Top = 306.141930000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DOCUMENTACI'#211'N REQUERIDA PARA CONTRATO Y EXPEDIENTE')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 11.338590000000000000
          Top = 343.937230000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'COPIA ACTA CONSTITUTIVA')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 260.787570000000000000
          Top = 343.937230000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 11.338590000000000000
          Top = 377.953000000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'COPIA PODER REPRESENTANTE LEGAL')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 260.787570000000000000
          Top = 377.953000000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 11.338590000000000000
          Top = 411.968770000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'COPIA RFC Y ALTA HACIENDA')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 260.787570000000000000
          Top = 411.968770000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 11.338590000000000000
          Top = 445.984540000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'COPIA IDENTIFICACI'#211'N FIRMANTE')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 260.787570000000000000
          Top = 445.984540000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 11.338590000000000000
          Top = 514.016080000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'OBSERVACIONES GENERALES')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 260.787570000000000000
          Top = 514.016080000000000000
          Width = 464.882190000000000000
          Height = 113.385900000000000000
          DataField = 'comentarios'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."comentarios"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 18.897650000000000000
          Top = 740.787880000000000000
          Width = 317.480520000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMBRE Y FIRMA ENTREGA'
            'CLIENTE')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 396.850650000000000000
          Top = 740.787880000000000000
          Width = 317.480520000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMBRE Y FIRMA RECIBE'
            'PRESTADORA')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 160
    Top = 64
  end
end

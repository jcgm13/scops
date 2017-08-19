object frmDocsCliente: TfrmDocsCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Documentos del Cliente'
  ClientHeight = 207
  ClientWidth = 442
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
  OnShow = FormShow
  DesignSize = (
    442
    207)
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object shp1: TShape
      Left = 0
      Top = 34
      Width = 442
      Height = 1
      Align = alBottom
      Pen.Color = clMedGray
    end
    object lblNumCliente: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      AutoSize = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Edges = []
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = 'Office2016Colorful'
      Style.StyleController = frmPrincipal.cxEditStyleController1
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2016Colorful'
      StyleFocused.LookAndFeel.SkinName = 'Office2016Colorful'
      StyleHot.LookAndFeel.SkinName = 'Office2016Colorful'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 34
      Width = 60
      AnchorX = 30
      AnchorY = 17
    end
    object lblNombreCliente: TcxLabel
      Left = 60
      Top = 0
      Align = alClient
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Edges = []
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = 'Office2016Colorful'
      Style.StyleController = frmPrincipal.cxEditStyleController1
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2016Colorful'
      StyleFocused.LookAndFeel.SkinName = 'Office2016Colorful'
      StyleHot.LookAndFeel.SkinName = 'Office2016Colorful'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 17
    end
  end
  object cxButton1: TcxButton
    Left = 314
    Top = 164
    Width = 94
    Height = 25
    Action = actCerrar
    Anchors = [akRight, akBottom]
    LookAndFeel.SkinName = 'Office2016Colorful'
    TabOrder = 4
  end
  object cxButton2: TcxButton
    Left = 200
    Top = 56
    Width = 208
    Height = 25
    Action = actAgregarDoc
    Anchors = [akRight, akBottom]
    LookAndFeel.SkinName = 'Office2016Colorful'
    TabOrder = 1
  end
  object cxButton3: TcxButton
    Left = 200
    Top = 87
    Width = 208
    Height = 25
    Action = actGuardarDoc
    Anchors = [akRight, akBottom]
    LookAndFeel.SkinName = 'Office2016Colorful'
    TabOrder = 2
  end
  object chkListDocs: TcxCheckListBox
    Left = 0
    Top = 35
    Width = 169
    Height = 172
    Align = alLeft
    Items = <
      item
        Text = 'Comprobante de Domicilio'
      end
      item
        Text = 'Acta Constitutiva'
      end
      item
        Text = 'Poder Notarial'
      end
      item
        Text = 'RFC'
      end
      item
        Text = 'IFE Representante'
      end
      item
        Text = 'Otro'
      end>
    ParentFont = False
    ReadOnly = True
    Style.LookAndFeel.SkinName = 'Office2016Colorful'
    Style.StyleController = frmPrincipal.cxEditStyleController1
    StyleDisabled.LookAndFeel.SkinName = 'Office2016Colorful'
    StyleFocused.LookAndFeel.SkinName = 'Office2016Colorful'
    StyleHot.LookAndFeel.SkinName = 'Office2016Colorful'
    TabOrder = 0
    OnClick = chkListDocsClick
  end
  object cxButton4: TcxButton
    Left = 200
    Top = 118
    Width = 208
    Height = 25
    Action = actVerDocumento
    Anchors = [akRight, akBottom]
    LookAndFeel.SkinName = 'Office2016Colorful'
    TabOrder = 3
  end
  object actlst1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 408
    Top = 64
    object actCerrar: TAction
      Caption = 'Cerrar [Esc]'
      ImageIndex = 15
      ShortCut = 27
      OnExecute = actCerrarExecute
    end
    object actAgregarDoc: TAction
      Caption = 'Agregar / Reemplazar Documento'
      ImageIndex = 36
      OnExecute = actAgregarDocExecute
    end
    object actGuardarDoc: TAction
      Caption = 'Guardar Documento Seleccionado'
      ImageIndex = 31
      OnExecute = actGuardarDocExecute
    end
    object actVerDocumento: TAction
      Caption = 'Ver Documento Seleccionado'
      ImageIndex = 90
      OnExecute = actVerDocumentoExecute
    end
  end
  object dlgOpen1: TOpenDialog
    Title = 'Abrir archivo'
    Left = 208
    Top = 72
  end
  object dlgSave1: TSaveDialog
    Title = 'Guardar archivo'
    Left = 208
    Top = 128
  end
end

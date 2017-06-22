object frmDocumentacionEmpleados: TfrmDocumentacionEmpleados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Documentaci'#243'n Empleados'
  ClientHeight = 612
  ClientWidth = 613
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
    Top = 576
    Width = 613
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 0
    object cxButton5: TcxButton
      Left = 493
      Top = 4
      Width = 116
      Height = 28
      Align = alRight
      Action = actCerrar
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 0
    end
  end
  object cxRadioGroup1: TcxRadioGroup
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Documentos'
    Properties.Columns = 3
    Properties.Items = <
      item
        Caption = 'Cartilla Militar'
        Value = 0
      end
      item
        Caption = 'Carta de Antecedentes No Penales'
        Value = 1
      end
      item
        Caption = 'Certificado M'#233'dico'
        Value = 2
      end
      item
        Caption = 'Credencial de Elector'
        Value = 3
      end
      item
        Caption = 'Carta de Recomendaci'#243'n 1'
        Value = 4
      end
      item
        Caption = 'Carta de Recomendaci'#243'n 2'
        Value = 5
      end
      item
        Caption = 'Comprobante de Domicilio'
        Value = 6
      end
      item
        Caption = 'Comprobante de Estudios'
        Value = 7
      end
      item
        Caption = 'CURP'
        Value = 8
      end
      item
        Caption = 'Hoja de Afiliaci'#243'n al IMSS'
        Value = 9
      end
      item
        Caption = 'Acta de Nacimiento'
        Value = 10
      end
      item
        Caption = 'Documento Adicional 1'
        Value = 11
      end
      item
        Caption = 'Documento Adicional 2'
        Value = 12
      end>
    TabOrder = 1
    Height = 113
    Width = 613
  end
  object cxDBImage1: TcxDBImage
    Left = 0
    Top = 113
    Align = alClient
    DataBinding.DataField = 'foto'
    DataBinding.DataSource = dmMain.dsEmpleadosFotosEdit
    Properties.GraphicClassName = 'TJPEGImage'
    Properties.PopupMenuLayout.MenuItems = [pmiPaste, pmiDelete, pmiLoad]
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 2
    Height = 463
    Width = 613
  end
  object ActionList1: TActionList
    Images = frmPrincipal.imgListAcciones
    Left = 180
    Top = 192
    object actCerrar: TAction
      Caption = 'Cerrar'
      ImageIndex = 15
    end
  end
end

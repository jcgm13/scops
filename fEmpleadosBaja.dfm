object frmEmpleadosBaja: TfrmEmpleadosBaja
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Baja de Empleados'
  ClientHeight = 344
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
    Top = 308
    Width = 652
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 3
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
  object xfecha_baja: TcxDateEdit
    Left = 117
    Top = 127
    Properties.DateButtons = [btnToday]
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 0
    Width = 100
  end
  object cxLabel1: TcxLabel
    Left = 23
    Top = 128
    Caption = 'Fecha de Baja'
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 23
    Top = 155
    Caption = 'Motivo de Baja'
    Transparent = True
  end
  object xmotivobaja: TcxImageComboBox
    Tag = 1
    Left = 117
    Top = 154
    ParentFont = False
    Properties.Alignment.Horz = taLeftJustify
    Properties.Items = <
      item
        Description = 'RENUNCIA'
        ImageIndex = 0
        Value = 0
      end
      item
        Description = 'CAUSA ADMINISTRATIVA'
        Value = 1
      end
      item
        Description = 'COMETER DELITO'
        Value = 2
      end
      item
        Description = 'PENSIONADO'
        Value = 3
      end
      item
        Description = 'DEFUNCI'#211'N'
        Value = 4
      end
      item
        Description = 'ABANDONO DE TRABAJO'
        Value = 5
      end>
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 1
    Width = 200
  end
  object cxLabel3: TcxLabel
    Left = 23
    Top = 181
    Caption = 'Observaciones'
    Transparent = True
  end
  object xobservaciones: TcxMemo
    Left = 117
    Top = 181
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ScrollBars = ssVertical
    Style.StyleController = frmPrincipal.cxEditStyleController1
    TabOrder = 2
    Height = 89
    Width = 500
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

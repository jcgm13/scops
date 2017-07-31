unit fDocumentacionEmpleados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinDevExpressStyle, cxControls, cxContainer, cxEdit, cxImage, cxDBEdit,
  cxGroupBox, cxRadioGroup, Vcl.ActnList, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, dxSkinOffice2016Colorful, System.Actions;

type
  TfrmDocumentacionEmpleados = class(TForm)
    Panel2: TPanel;
    cxButton5: TcxButton;
    ActionList1: TActionList;
    actCerrar: TAction;
    cxRadioGroup1: TcxRadioGroup;
    cxDBImage1: TcxDBImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocumentacionEmpleados: TfrmDocumentacionEmpleados;

implementation

uses
  fPrincipal;

{$R *.dfm}

end.

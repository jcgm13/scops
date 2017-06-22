unit fWaitForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, dxGDIPlusClasses, dxSkinsCore, dxSkinDevExpressStyle, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxProgressBar, cxGroupBox;

type
  TfrmWaitForm = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWaitForm: TfrmWaitForm;

implementation

{$R *.dfm}

uses fPrincipal;

end.

unit fSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, dxGDIPlusClasses, Vcl.ExtCtrls, dxSkinsCore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, dxSkinDevExpressStyle, dxSkinOffice2016Colorful;

type
  TfrmSplash = class(TForm)
    Panel1: TPanel;
    Label1: TcxLabel;
    img1: TImage;
    lbl1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

end.

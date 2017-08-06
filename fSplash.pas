unit fSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, dxGDIPlusClasses, Vcl.ExtCtrls, dxSkinsCore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, dxSkinDevExpressStyle, dxSkinOffice2016Colorful;

type
  TfrmSplash = class(TForm)
    Panel1: TPanel;
    lblCargando: TcxLabel;
    img1: TImage;
    img2: TImage;
    procedure FormShow(Sender: TObject);
    procedure img2Click(Sender: TObject);
  private
    FautoCerrar: Boolean;
    procedure SetAutoCerrar(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    property autoCerrar : Boolean read FautoCerrar write SetAutoCerrar;
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

{ TfrmSplash }

procedure TfrmSplash.FormShow(Sender: TObject);
begin
     lblCargando.Visible := FautoCerrar;
end;

procedure TfrmSplash.img2Click(Sender: TObject);
begin
     if not FautoCerrar then
        Close;
end;

procedure TfrmSplash.SetAutoCerrar(const Value: Boolean);
begin
  FautoCerrar := Value;
end;

end.

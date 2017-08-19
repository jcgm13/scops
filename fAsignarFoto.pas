unit fAsignarFoto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, dxSkinsCore, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, Vcl.ExtCtrls, Vcl.ActnList, Vcl.StdCtrls, cxButtons, cxTextEdit, cxDBEdit, VFrames, VSample, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxImage, cxPC, db, jpeg, dxSkinDevExpressStyle, cxLabel, dxSkinBlue, dxSkinOffice2007Silver,
  dxSkinOffice2010Silver, dxSkinOffice2013LightGray, cxMaskEdit, cxDropDownEdit, dxSkinOffice2016Colorful, System.Actions, dxSkinOffice2013DarkGray;

type
  TfrmAsignarFoto = class(TForm)
    Panel1: TPanel;
    xempleado_id: TcxDBTextEdit;
    Panel2: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ActionList1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    xNombres: TcxTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    PaintBox1: TPaintBox;
    cxDBImage1: TcxDBImage;
    Panel3: TPanel;
    btnActivarCamara: TcxButton;
    actActivarCamara: TAction;
    cxButton2: TcxButton;
    actAsignarFoto: TAction;
    actDesactivarCamara: TAction;
    Label3: TLabel;
    Label2: TcxLabel;
    Label1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actCerrarExecute(Sender: TObject);
    procedure actActivarCamaraExecute(Sender: TObject);
    procedure actDesactivarCamaraExecute(Sender: TObject);
    procedure actGuardarExecute(Sender: TObject);
    procedure actAsignarFotoExecute(Sender: TObject);
    procedure cxImage1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
    fActivated : boolean;
    fVideoImage: TVideoImage;
    DeviceList: TStringList;
  public
    { Public declarations }
  end;

var
  frmAsignarFoto: TfrmAsignarFoto;

implementation

{$R *.dfm}

uses dMain, fPrincipal;

procedure TfrmAsignarFoto.actActivarCamaraExecute(Sender: TObject);
var
   lista : TStringList;
begin
//     if not fVideoImage.VideoRunning then
     if not fActivated then
        begin
             try
                lista := TStringList.Create;
                fVideoImage.VideoStart(DeviceList[0]);
                btnActivarCamara.Action := actDesactivarCamara;
                fActivated := True;
             finally
                    FreeAndNil(lista);
             end;
        end;
end;

procedure TfrmAsignarFoto.actAsignarFotoExecute(Sender: TObject);
var
   Bitmap: TBitmap;
   Source: TRect;
   Dest: TRect;
   jpegImage : TJPEGImage;
   strm : TStream;
begin
//     if fVideoImage.VideoRunning then
     if fActivated then
        try
           jpegImage := TJPEGImage.Create;
           Bitmap := TBitmap.Create;
           strm := TMemoryStream.Create;
           with Bitmap do
                begin
                     Width := PaintBox1.Width;
                     Height := PaintBox1.Height;
                     Dest := Rect(0, 0, Width, Height);
                end;
           with PaintBox1 do
                Source := Rect(0, 0, Width, Height);
           Bitmap.Canvas.CopyRect(Dest, PaintBox1.Canvas, Source);

           jpegImage.Assign(Bitmap);
           jpegImage.SaveToStream(strm);
           strm.Position := 0;
           TBlobField(dmMain.dsEmpleadosFotosEdit.DataSet.FieldByName('foto')).LoadFromStream(strm);

           {
           Bitmap.SaveToStream(strm);
           strm.Position := 0;
           jpegImage.LoadFromStream(strm);
           }
  //         jpegImage.SaveToFile('C:\Users\jc\Desktop\imagen.jpg');
        finally
               FreeAndNil(strm);
               FreeAndNil(bitmap);
               actDesactivarCamara.Execute;
               FreeAndNil(jpegImage);
               cxPageControl1.ActivePageIndex := 0;
        end
     else
         MessageDlg('La camara no está encendida', mtError, [mbOK], 0);
end;

procedure TfrmAsignarFoto.actCerrarExecute(Sender: TObject);
begin
     ModalResult := mrCancel;
end;

procedure TfrmAsignarFoto.actDesactivarCamaraExecute(Sender: TObject);
begin
//     if fVideoImage.VideoRunning then
     if fActivated then
        begin
             fVideoImage.VideoStop;
             btnActivarCamara.Action := actActivarCamara;
             fActivated := False;
        end;
end;

procedure TfrmAsignarFoto.actGuardarExecute(Sender: TObject);
begin
     if dmMain.dsEmpleadosFotosEdit.State = dsEdit then
        begin
             dmMain.dsEmpleadosFotosEdit.DataSet.Post;
             ModalResult := mrOk;
        end;
end;

procedure TfrmAsignarFoto.cxImage1PropertiesChange(Sender: TObject);
{var
   Bitmap, B : TBitmap;
   Source: TRect;
   Dest: TRect;
   jpegImage, JPEGImageOut : TJPEGImage;
   strm, strm2 : TStream;
   alto, ancho, X, Y : Integer;
   R : TRect;
   }
begin
{
     image1.Picture.Assign(cximage1.Picture);

     try
        jpegImage := TJPEGImage.Create;
        JPEGImageOut := TJPEGImage.Create;
        Bitmap := TBitmap.Create;
        B := TBitmap.Create;
        strm := TMemoryStream.Create;

        Bitmap.PixelFormat := pf24bit;
        Bitmap.Height := Image1.Height;
        Bitmap.Width := Image1.Width;

        ancho := Bitmap.Width div 2;
        alto := Bitmap.Height div 2;

        Bitmap.Canvas.Draw(0,0, Image1.Picture.Bitmap);

        //redimensiona el bitmap
        if Bitmap.Width > Bitmap.Height then
          begin
               R.Right:= ancho;
               R.Bottom:= ((ancho * Bitmap.Height) div Bitmap.Width);
               X:= 0;
               Y:= (alto div 2) - (R.Bottom div 2);
          end
        else
           begin
               R.Right:= ((alto * Bitmap.Width) div Bitmap.Height);
               R.Bottom:= alto;
               X:= (ancho div 2) - (R.Right div 2);
               Y:= 0;
           end;
        R.Left:= 0;
        R.Top:= 0;
        B.PixelFormat:= Bitmap.PixelFormat;
        B.Width:= ancho;
        B.Height:= alto;
        B.Canvas.Brush.Color:= clWhite;
        B.Canvas.FillRect(B.Canvas.ClipRect);
        B.Canvas.StretchDraw(R, Bitmap);
        Bitmap.Width:= ancho;
        Bitmap.Height:= alto;
        Bitmap.Canvas.Brush.Color:= clWhite;
        Bitmap.Canvas.FillRect(Bitmap.Canvas.ClipRect);
        Bitmap.Canvas.Draw(X, Y, B);
        // Fin del Redimensionamiento

        strm2 := TMemoryStream.Create;
        JPEGImageOut.Assign(Bitmap);
        JPEGImageOut.SaveToStream(strm2);
        strm2.Position := 0;

//        TBlobField(dmMain.dsEmpleadosFotosEdit.DataSet.FieldByName('foto')).LoadFromStream(strm2);
        cxDBImage1.Picture.Assign(JPEGImageOut); // Bitmap.LoadFromStream(strm2);
     finally
            FreeAndNil(strm);
            FreeAndNil(strm2);
            FreeAndNil(bitmap);
            FreeAndNil(B);
            FreeAndNil(jpegImage);
            FreeAndNil(JPEGImageOut);
     end;
     }
end;

procedure TfrmAsignarFoto.FormActivate(Sender: TObject);
{
var
  DeviceList: TStringList;
}
begin
     {
  IF fActivated then
    exit;
  fActivated := true;


  // Get list of available cameras
  DeviceList := TStringList.Create;
  fVideoImage.GetListOfDevices(DeviceList);

  actAsignarFoto.Enabled      := DeviceList.Count >= 1;
  actActivarCamara.Enabled    := DeviceList.Count >= 1;
  actDesactivarCamara.Enabled := DeviceList.Count >= 1;
  }

  {
  IF DeviceList.Count < 1 then
     begin
          // If no camera has been found, terminate program
          Caption := 'Asignación de Foto  [No se pudo detectar algun dispositivo de video]';
          MessageDlg('No se pudo detectar algun dispositivo de video.', mtError, [mbOK], 0);
          Close;
     end
  else
      begin
           // If at least one camera has been found, initialize first camera within the list
           fVideoImage.VideoStart(DeviceList[0]);
           Caption := 'Asignación de Foto ['+DeviceList[0]+']';
      end;
  }
end;


procedure TfrmAsignarFoto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if fVideoImage.VideoRunning then
        fVideoImage.VideoStop;
end;

procedure TfrmAsignarFoto.FormCreate(Sender: TObject);
begin
     // Se obtienen los dispositivos de camara instalados en el sistema
     DeviceList := TStringList.Create;
     fVideoImage.GetListOfDevices(DeviceList);

     actAsignarFoto.Enabled      := DeviceList.Count >= 1;
     actActivarCamara.Enabled    := DeviceList.Count >= 1;
     actDesactivarCamara.Enabled := DeviceList.Count >= 1;

     fActivated      := false;

     // Create instance of our video image class.
     fVideoImage     := TVideoImage.Create;
     // Tell fVideoImage where to paint the images it receives from the camera
     // (Only in case we do not want to modify the images by ourselves)
     fVideoImage.SetDisplayCanvas(PaintBox1.Canvas);

//     Caption := 'Asignación de Foto  [Inicializando video...]';
end;

end.

unit FDocsEmpleado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxSkinsCore, dxSkinOffice2016Colorful, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxGroupBox, cxRadioGroup, System.Actions, Vcl.ActnList, cxCheckListBox,
  ShellAPI, cxLabel, dxSkinOffice2013DarkGray;

type
  TfrmDocsEmpleado = class(TForm)
    pnl1: TPanel;
    cxButton1: TcxButton;
    actlst1: TActionList;
    actCerrar: TAction;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    actAgregarDoc: TAction;
    actGuardarDoc: TAction;
    dlgOpen1: TOpenDialog;
    dlgSave1: TSaveDialog;
    shp1: TShape;
    chkListDocs: TcxCheckListBox;
    cxButton4: TcxButton;
    actVerDocumento: TAction;
    lblNumEmpleado: TcxLabel;
    lblNombreEmpleado: TcxLabel;
    procedure actCerrarExecute(Sender: TObject);
    procedure actAgregarDocExecute(Sender: TObject);
    procedure actGuardarDocExecute(Sender: TObject);
    procedure actVerDocumentoExecute(Sender: TObject);
    procedure chkListDocsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fempleado: string;
    { Private declarations }
    function BuscaDocumentos : string;
    function ObtenerDocumentoSel : string;
    procedure SetEmpleado(const Value: string);
    procedure RevisaChecks;
  public
    { Public declarations }
    procedure SeleccionaDocumentos;
    property empleado : string read Fempleado write SetEmpleado;
  end;

const
     Carpeta = '_docsEmpleados';

var
  frmDocsEmpleado: TfrmDocsEmpleado;

implementation

uses
  dMain, fPrincipal;

{$R *.dfm}

procedure TfrmDocsEmpleado.actAgregarDocExecute(Sender: TObject);
var
   archivo : string;
begin
     if dlgOpen1.Execute then
        begin
             if chkListDocs.Items[chkListDocs.ItemIndex].Checked then
                begin
                     archivo := ObtenerDocumentoSel;
                     if FileExists(archivo) then
                        DeleteFile(ObtenerDocumentoSel);
                end;
             archivo := ExtractFilePath(Application.ExeName) + Carpeta + '\' +  empleado + '_' + IntToStr(chkListDocs.ItemIndex+1) + ExtractFileExt(dlgOpen1.FileName);
             CopyFile(PWideChar(dlgOpen1.FileName),PWideChar(archivo),False);
             SeleccionaDocumentos;
             RevisaChecks;
        end;
end;

procedure TfrmDocsEmpleado.actCerrarExecute(Sender: TObject);
begin
     Close;
end;

procedure TfrmDocsEmpleado.actGuardarDocExecute(Sender: TObject);
var
   archivo : string;
begin
     archivo := ObtenerDocumentoSel;
     dlgSave1.FileName := archivo;
     dlgSave1.Filter := Carpeta + '|*' + ExtractFileExt(archivo);
     dlgSave1.DefaultExt := ExtractFileExt(archivo);
     if dlgSave1.Execute then
        CopyFile(PWideChar(archivo),PWideChar(dlgSave1.FileName),False);
end;

procedure TfrmDocsEmpleado.actVerDocumentoExecute(Sender: TObject);
begin
     ShellExecute(self.Handle,nil,PChar(ObtenerDocumentoSel),'','',SW_SHOWNORMAL);
end;

function TfrmDocsEmpleado.BuscaDocumentos: string;
var
   cad, archivo : string;
   searchResult : TSearchRec;
begin
     Result := '';
     // Primero se busca el archivo a copiar ...
     SetCurrentDir(ExtractFilePath(Application.ExeName) + Carpeta);
     if findfirst(empleado + '*.*', faAnyFile, searchResult) = 0 then
        begin
             repeat
                   if Trim(Result) = '' then
                      Result := Copy(searchResult.Name,Pos('_',searchResult.Name)+1,1)
                   else
                       Result := Result + ',' + Copy(searchResult.Name,Pos('_',searchResult.Name)+1,1);
             until FindNext(searchResult) <> 0;
             // Must free up resources used by these successful finds
             FindClose(searchResult);
        end;
end;

procedure TfrmDocsEmpleado.chkListDocsClick(Sender: TObject);
begin
     RevisaChecks;
end;

procedure TfrmDocsEmpleado.FormShow(Sender: TObject);
begin
     SeleccionaDocumentos;
     RevisaChecks;
end;

function TfrmDocsEmpleado.ObtenerDocumentoSel: string;
var
   archivo : string;
   searchResult : TSearchRec;
begin
     // Primero se busca el archivo a copiar ...
     SetCurrentDir(ExtractFilePath(Application.ExeName) + Carpeta);
     if findfirst(empleado + '_' + IntToStr(chkListDocs.ItemIndex+1) + '.*', faAnyFile, searchResult) = 0 then
        begin
             repeat
                   archivo := searchResult.Name;
             until FindNext(searchResult) <> 0;
             // Must free up resources used by these successful finds
             FindClose(searchResult);
             Result := archivo;
        end
end;

procedure TfrmDocsEmpleado.RevisaChecks;
begin
     if chkListDocs.ItemIndex = -1 then
        chkListDocs.ItemIndex := 0;
     actGuardarDoc.Enabled   := chkListDocs.Items[chkListDocs.ItemIndex].Checked;
     actVerDocumento.Enabled := chkListDocs.Items[chkListDocs.ItemIndex].Checked;
end;

procedure TfrmDocsEmpleado.SeleccionaDocumentos;
var
   lista : TStringList;
   valores : string;
   i : Integer;
begin
      valores := BuscaDocumentos;
      try
          lista := TStringList.Create;
          lista.StrictDelimiter := True;
          lista.CommaText := valores;

          for i := 0 to chkListDocs.Count-1 do
              chkListDocs.Items[i].Checked := False;

          for i := 0 to lista.Count-1 do
              chkListDocs.Items[StrToInt(lista.Strings[i])-1].Checked := True;

      finally
             FreeAndNil(lista);
      end;
end;

procedure TfrmDocsEmpleado.SetEmpleado(const Value: string);
begin
  Fempleado := Value;
end;

end.

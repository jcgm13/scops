unit fReportes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinOffice2010Black, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, frxClass, frxDBSet, db, dxSkinDevExpressStyle, dxSkinBlue, dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinOffice2013LightGray;

type
  TfrmReportes = class(TForm)
    btnImprimir: TcxButton;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    frxReport3: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    _TipoReporte : Integer;
    _Id : Integer;
    _cve : string;
  public
    { Public declarations }
    procedure ImprimirReporte(tipo, Id : Integer; cve: string);
  end;

var
  frmReportes: TfrmReportes;

implementation

{$R *.dfm}

uses dMain, uGlobales;

{ TForm1 }

procedure TfrmReportes.btnImprimirClick(Sender: TObject);
Var
   S1, S2: TFileStream;
   stm : TStream;
   PV1, PV2, PF: TfrxComponent;
   RutaExe : string;
   Vigencia : string;
begin
     RutaExe := ExtractFilePath(Application.ExeName);
     case _TipoReporte of
        1 :
          begin
               Vigencia := InputBox('Vigencia','Vigencia:',FormatDateTime('mmmm yyyy',IncMonth(now,3)));

               PV1 := frxReport1.FindObject('Picture1');
               if Assigned (PV1) then
                  begin
                       S1 := TFileStream.Create(RutaExe + 'formatos\gafete' + LlenaCerosIzq(IntToStr(_Globales.Empresa),2,'0') + '.jpg',fmOpenRead);
                       try
                          TfrxPictureView (PV1).LoadPictureFromStream(S1,true);

                          dmMain.CargaReporte(_TipoReporte,_id,'');
                          frxDBDataset1.DataSet := dmMain.qryReporte;
                          frxReport1.Variables['vigencia'] := QuotedStr(Vigencia);

                          if not dmMain.dsReporte.DataSet.FieldByName('foto').IsNull then
                             begin
                                  PF := frxReport1.FindObject('Picture2');
                                  if Assigned(PF) then
                                     begin
                                          try
                                             stm := TMemoryStream.Create;
                                             TBlobField(dmMain.dsReporte.DataSet.FieldByName('foto')).SaveToStream(stm);
                                             TfrxPictureView (PF).LoadPictureFromStream(stm,true);
                                          finally
                                                 FreeAndNil(stm);
                                          end;
                                     end;
                             end;

                          frxReport1.ShowReport(True);
                       finally
                              S1.Free;
                       end;
                  end;
          end;
        2 :
          begin
               PV1 := frxReport2.FindObject('Picture1');
//               PV2 := frxReport2.FindObject('Picture3');
               if Assigned (PV1) then
                  begin
//                       S1 := TFileStream.Create(RutaExe + 'formatos\FichaTecnica1.jpg',fmOpenRead);
                       S1 := TFileStream.Create(RutaExe + 'formatos\logo_cifes.jpg',fmOpenRead);
//                       S2 := TFileStream.Create(RutaExe + 'formatos\FichaTecnica_.jpg',fmOpenRead);
                       try
                          TfrxPictureView (PV1).LoadPictureFromStream(S1,true);
//                          TfrxPictureView (PV2).LoadPictureFromStream(S2,true);

                          dmMain.CargaReporte(_TipoReporte,_id,'');
                          frxDBDataset2.DataSet := dmMain.qryReporte;

                          if not dmMain.dsReporte.DataSet.FieldByName('foto').IsNull then
                             begin
                                  PF := frxReport2.FindObject('Picture2');
                                  if Assigned(PF) then
                                     begin
                                          try
                                             stm := TMemoryStream.Create;
                                             TBlobField(dmMain.dsReporte.DataSet.FieldByName('foto')).SaveToStream(stm);
                                             TfrxPictureView (PF).LoadPictureFromStream(stm,true);
                                          finally
                                                 FreeAndNil(stm);
                                          end;
                                     end;
                             end;

                          frxReport2.ShowReport(True);
                       finally
                              S1.Free;
//                              S2.Free;
                       end;
                  end;
          end;
        3 :
          begin
               {
               frxReport3.PrepareReport(True);
               frxReport3.ShowPreparedReport;
               }
          end;
        4 :
          begin
               dmMain.CargaReporte(_TipoReporte,0,_cve);
               frxDBDataset4.DataSet := dmMain.qryReporte;
               frxReport4.Variables['NombreEmpresa'] := QuotedStr(_Globales.EmpresaDescripcion);
               frxReport4.Variables['DireccionEmpresa'] := QuotedStr('CALLE BACH N. 103 COL. LEÓN MODERNO CP. 37480 TEL. 7111234 Y 7112633. LEÓN GTO.');
               frxReport4.Variables['EmailEmpresa'] := QuotedStr('E-MAIL: admon.cops@gmail.com');
               frxReport4.ShowReport(True);
          end;
     end;
end;

procedure TfrmReportes.ImprimirReporte(tipo, Id: Integer; cve: string);
begin
     case tipo of
          1 : btnImprimir.Caption := 'Imprimir Credencial';
          2 : btnImprimir.Caption := 'Imprimir Hoja Técnica';
          3 : btnImprimir.Caption := 'Imprimir Cédula';
          4 : btnImprimir.Caption := 'Imprimir Ficha Registro Cliente';
     end;

     _TipoReporte := tipo;
     _Id  := id;
     _cve := cve;
end;

end.

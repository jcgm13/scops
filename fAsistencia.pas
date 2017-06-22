unit fAsistencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinDevExpressStyle, Vcl.Menus, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit, cxDBEdit, Vcl.ExtCtrls, Vcl.ActnList, cxGridBandedTableView, cxGridDBBandedTableView, cxTimeEdit, cxCurrencyEdit;

type
  TfrmAsistencia = class(TForm)
    ActionList1: TActionList;
    actCerrar: TAction;
    Panel2: TPanel;
    Label1: TcxLabel;
    Panel1: TPanel;
    cxButton5: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column7: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column8: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column9: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column10: TcxGridDBBandedColumn;
    lblDiaAsistencia: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid1DBBandedTableView1Column11: TcxGridDBBandedColumn;
    procedure actCerrarExecute(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    fMes: Integer;
    fAnio: Integer;
    fDia: Integer;
    { Private declarations }
    procedure SetAnio(const Value: Integer);
    procedure SetDia(const Value: Integer);
    procedure SetMes(const Value: Integer);
  public
    { Public declarations }
    property pAnio : Integer read fAnio write SetAnio;
    property pMes : Integer read fMes write SetMes;
    property pDia : Integer read fDia write SetDia;
    procedure CargaAsistencia;
  end;

var
  frmAsistencia: TfrmAsistencia;

implementation

uses
  dMain, uGlobales, fAsistenciaEdit;

{$R *.dfm}

{ TfrmAsistencia }

procedure TfrmAsistencia.actCerrarExecute(Sender: TObject);
begin
     Close;
end;

procedure TfrmAsistencia.CargaAsistencia;
begin
     dmMain.CargaAsistenciaDetalle(_Globales.Empresa,
                                   pAnio,
                                   pMes,
                                   pDia
                                  );
     lblDiaAsistencia.Caption := FormatDateTime('dddd dd "de" mmmm "del" yyyy',EncodeDate(pAnio, pMes, pDia));
end;

procedure TfrmAsistencia.cxGrid1DBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
     try
        frmAsistenciaEdit := TfrmAsistenciaEdit.Create(Self);
        if frmAsistenciaEdit.ShowModal = mrOk then
           dmMain.CargaAsistenciaDetalle(_Globales.Empresa,
                                         pAnio,
                                         pMes,
                                         pDia
                                        );
     finally
            FreeAndNil(frmAsistenciaEdit);
     end;
end;

procedure TfrmAsistencia.SetAnio(const Value: Integer);
begin
  fAnio := Value;
end;

procedure TfrmAsistencia.SetDia(const Value: Integer);
begin
  fDia := Value;
end;

procedure TfrmAsistencia.SetMes(const Value: Integer);
begin
  fMes := Value;
end;

end.

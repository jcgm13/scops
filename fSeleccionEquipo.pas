unit fSeleccionEquipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinDevExpressStyle, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.Menus, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, dxSkinBlue, dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, System.Actions, dxSkinOffice2013DarkGray;

type
  TfrmSeleccionEquipo = class(TForm)
    cxGridMain: TcxGrid;
    ViewEquipo: TcxGridDBTableView;
    ViewEquipoColumnEquipoId: TcxGridDBColumn;
    ViewEquipoColumnTipo: TcxGridDBColumn;
    cxGridMainLevelMain: TcxGridLevel;
    Panel1: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ActionList1: TActionList;
    actAceptar: TAction;
    actCerrar: TAction;
    ViewEquipoColumnDescripcion: TcxGridDBColumn;
    ViewEquipoColumnMarca: TcxGridDBColumn;
    ViewEquipoColumnModelo: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actCerrarExecute(Sender: TObject);
    procedure actAceptarExecute(Sender: TObject);
    procedure ViewEquipoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    FServicioId: string;
    FDescripcion: string;
    procedure SetServicioId(const Value: string);
    procedure SetDescripcion(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property ServicioId : string read FServicioId write SetServicioId;
    property Descripcion : string read FDescripcion write SetDescripcion;
  end;

var
  frmSeleccionEquipo: TfrmSeleccionEquipo;

implementation

{$R *.dfm}

uses dMain, fPrincipal, uGlobales;

procedure TfrmSeleccionEquipo.actAceptarExecute(Sender: TObject);
begin
     if not dmMain.dsEquipoList.DataSet.IsEmpty then
        begin
             EquipoSeleccionado       := dmMain.dsEquipoList.DataSet.FieldByName('equipo_id').AsInteger;
             NombreEquipoSeleccionado := dmMain.dsEquipoList.DataSet.FieldByName('descripcion').AsString;
             TipoEquipoSeleccionado   := dmMain.dsEquipoList.DataSet.FieldByName('tipo').AsString;
             ModalResult := mrOk;
        end;
end;

procedure TfrmSeleccionEquipo.actCerrarExecute(Sender: TObject);
begin
     EquipoSeleccionado := 0;
     NombreEquipoSeleccionado := '';
     ModalResult := mrCancel;
end;

procedure TfrmSeleccionEquipo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
     frmSeleccionEquipo := nil;
end;

procedure TfrmSeleccionEquipo.FormShow(Sender: TObject);
begin
     dmMain.CargaEquipoListado(_Globales.Empresa, ServicioId, FDescripcion);
end;

procedure TfrmSeleccionEquipo.SetDescripcion(const Value: string);
begin
  FDescripcion := Value;
end;

procedure TfrmSeleccionEquipo.SetServicioId(const Value: string);
begin
  FServicioId := Value;
end;

procedure TfrmSeleccionEquipo.ViewEquipoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
     if not dmMain.dsEquipoList.DataSet.IsEmpty then
        actAceptar.Execute;
end;

end.

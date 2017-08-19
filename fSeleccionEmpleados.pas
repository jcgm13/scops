unit fSeleccionEmpleados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinDevExpressStyle, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.Menus, Vcl.ActnList, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, dxSkinOffice2016Colorful, System.Actions, dxSkinOffice2013DarkGray;

type
  TfrmSeleccionEmpleados = class(TForm)
    cxGridMain: TcxGrid;
    ViewEmpleados: TcxGridDBTableView;
    ViewEmpleadosColumnElemento: TcxGridDBColumn;
    ViewEmpleadosColumnNombres: TcxGridDBColumn;
    cxGridMainLevelMain: TcxGridLevel;
    Panel1: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ActionList1: TActionList;
    actAceptar: TAction;
    actCerrar: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actCerrarExecute(Sender: TObject);
    procedure actAceptarExecute(Sender: TObject);
    procedure ViewEmpleadosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSeleccionEmpleados: TfrmSeleccionEmpleados;

implementation

{$R *.dfm}

uses dMain, fPrincipal, uGlobales;

procedure TfrmSeleccionEmpleados.actAceptarExecute(Sender: TObject);
begin
     if not dmMain.dsEmpleadosList.DataSet.IsEmpty then
        begin
             EmpleadoSeleccionado := dmMain.dsEmpleadosList.DataSet.FieldByName('empleado_id').AsInteger;
             NombreEmpleadoSeleccionado := dmMain.dsEmpleadosList.DataSet.FieldByName('nombre_empleado').AsString;
             ModalResult := mrOk;
        end;
end;

procedure TfrmSeleccionEmpleados.actCerrarExecute(Sender: TObject);
begin
     EmpleadoSeleccionado := 0;
     NombreEmpleadoSeleccionado := '';
     ModalResult := mrCancel;
end;

procedure TfrmSeleccionEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
     frmSeleccionEmpleados := nil;
end;

procedure TfrmSeleccionEmpleados.FormShow(Sender: TObject);
begin
     dmMain.CargaEmpleadosListado(_Globales.Empresa);
end;

procedure TfrmSeleccionEmpleados.ViewEmpleadosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
     if not dmMain.dsEmpleadosList.DataSet.IsEmpty then
        actAceptar.Execute;
end;

end.

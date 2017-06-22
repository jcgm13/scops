unit fVehiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxSkinsCore, dxSkinOffice2010Black, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxEdit, cxDBLookupComboBox, cxCalendar, cxCheckBox, cxImageComboBox, cxRadioGroup, cxTextEdit, cxCurrencyEdit, cxContainer,
  Vcl.Menus, Data.DB, Vcl.ActnList, Vcl.StdCtrls, cxButtons, cxGroupBox, cxDBEdit, Vcl.ExtCtrls, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxHyperLinkEdit, StrUtils, cxMaskEdit, cxDropDownEdit, cxMemo, dxSkinDevExpressStyle, cxLabel,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxSkinBlue, dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinOffice2013LightGray, System.Actions;

type
  TfrmVehiculos = class(TForm)
    Panel2: TPanel;
    xvehiculo_id: TcxDBTextEdit;
    Panel1: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ActionList1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    actExpandir: TAction;
    actContraer: TAction;
    xEstatus: TcxDBImageComboBox;
    Label1: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    vGridVehiculos: TcxDBVerticalGrid;
    vGridVehiculosCategoryRow1: TcxCategoryRow;
    vGridVehiculosDBEditorRow5: TcxDBEditorRow;
    vGridVehiculosDBEditorRow1: TcxDBEditorRow;
    vGridVehiculosDBEditorRow4: TcxDBEditorRow;
    vGridVehiculosDBEditorRow2: TcxDBEditorRow;
    vGridVehiculosDBEditorRow3: TcxDBEditorRow;
    vGridVehiculosDBEditorRow6: TcxDBEditorRow;
    vGridVehiculosDBEditorRow7: TcxDBEditorRow;
    vGridVehiculosDBEditorRow8: TcxDBEditorRow;
    vGridVehiculosDBEditorRow9: TcxDBEditorRow;
    vGridVehiculosDBEditorRow10: TcxDBEditorRow;
    vGridVehiculosDBEditorRow11: TcxDBEditorRow;
    vGridVehiculosDBEditorRow12: TcxDBEditorRow;
    vGridVehiculosDBEditorRow13: TcxDBEditorRow;
    vGridVehiculosDBEditorRow22: TcxDBEditorRow;
    vGridVehiculosDBEditorRow24: TcxDBEditorRow;
    vGridVehiculosDBEditorRow25: TcxDBEditorRow;
    vGridVehiculosDBEditorRow26: TcxDBEditorRow;
    vGridVehiculosDBEditorRow27: TcxDBEditorRow;
    vGridVehiculosDBEditorRow28: TcxDBEditorRow;
    vGridVehiculosDBEditorRow16: TcxDBEditorRow;
    vGridVehiculosCategoryRow2: TcxCategoryRow;
    vGridVehiculosDBEditorRow14: TcxDBEditorRow;
    vGridVehiculosDBEditorRow15: TcxDBEditorRow;
    vGridVehiculosDBEditorRow18: TcxDBEditorRow;
    vGridVehiculosDBEditorRow17: TcxDBEditorRow;
    vGridVehiculosDBEditorRow29: TcxDBEditorRow;
    vGridVehiculosDBEditorRow30: TcxDBEditorRow;
    vGridVehiculosDBEditorRow31: TcxDBEditorRow;
    vGridVehiculosDBEditorRow32: TcxDBEditorRow;
    vGridVehiculosDBEditorRow33: TcxDBEditorRow;
    vGridVehiculosDBEditorRow34: TcxDBEditorRow;
    vGridVehiculosDBEditorRow35: TcxDBEditorRow;
    vGridVehiculosDBEditorRow23: TcxDBEditorRow;
    vGridVehiculosDBEditorRow36: TcxDBEditorRow;
    vGridVehiculosCategoryRow3: TcxCategoryRow;
    vGridVehiculosDBEditorRow19: TcxDBEditorRow;
    vGridVehiculosDBEditorRow20: TcxDBEditorRow;
    vGridVehiculosDBEditorRow21: TcxDBEditorRow;
    vGridVehiculosDBEditorRow46: TcxDBEditorRow;
    Panel3: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Panel4: TPanel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton15: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ColumnFecha: TcxGridDBColumn;
    cxGrid1DBTableView1ColumnKilometraje: TcxGridDBColumn;
    cxGrid1DBTableView1ColumnCombustible: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel5: TPanel;
    cxButton3: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumnEntrada: TcxGridDBColumn;
    cxGridDBColumnSalida: TcxGridDBColumn;
    cxGridDBColumnDescripcion: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    actAgregarCombustible: TAction;
    actModificarCombustible: TAction;
    actEliminarCombustible: TAction;
    actVerCombustible: TAction;
    actAgregarManto: TAction;
    actModificarManto: TAction;
    actEliminarManto: TAction;
    actVerManto: TAction;
    cxGrid1DBTableView1ColumnLitros: TcxGridDBColumn;
    cxGrid1DBTableView1ColumnCantidad: TcxGridDBColumn;
    cxGrid1DBTableView1ColumnGasolineria: TcxGridDBColumn;
    cxGridDBTableView1ColumnCosto: TcxGridDBColumn;
    cxGridDBTableView1ColumnTaller: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    procedure actGuardarExecute(Sender: TObject);
    procedure xdescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure actCerrarExecute(Sender: TObject);
    procedure actExpandirExecute(Sender: TObject);
    procedure actContraerExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actAgregarCombustibleExecute(Sender: TObject);
    procedure actModificarCombustibleExecute(Sender: TObject);
    procedure actVerCombustibleExecute(Sender: TObject);
    procedure actEliminarCombustibleExecute(Sender: TObject);
    procedure actAgregarMantoExecute(Sender: TObject);
    procedure actModificarMantoExecute(Sender: TObject);
    procedure actEliminarMantoExecute(Sender: TObject);
    procedure actVerMantoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVehiculos: TfrmVehiculos;

implementation

{$R *.dfm}

uses dMain, fPrincipal, uGlobales, fVehiculosCombustible, fVehiculosReparaciones;

procedure TfrmVehiculos.actAgregarCombustibleExecute(Sender: TObject);
begin
     frmVehiculosCombustible := TfrmVehiculosCombustible.Create(Self);
     frmVehiculosCombustible.VehiculoId := dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger;
     dmMain.dsVehiculosCombustibleEdit.DataSet.Insert;
     if frmVehiculosCombustible.ShowModal = mrOk then
        dmMain.CargaVehiculosCombustible(_Globales.Empresa, dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger);
end;

procedure TfrmVehiculos.actAgregarMantoExecute(Sender: TObject);
begin
     frmVehiculosReparaciones := TfrmVehiculosReparaciones.Create(Self);
     frmVehiculosReparaciones.VehiculoId := dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger;
     dmMain.dsVehiculosReparacionesEdit.DataSet.Insert;
     if frmVehiculosReparaciones.ShowModal = mrOk then
        dmMain.CargaVehiculosReparaciones(_Globales.Empresa, dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger);
end;

procedure TfrmVehiculos.actCerrarExecute(Sender: TObject);
begin
     if dmMain.dsVehiculosEdit.DataSet.State in [dsInsert, dsEdit] then
        dmMain.dsVehiculosEdit.DataSet.Cancel;
     ModalResult := mrCancel;
end;

procedure TfrmVehiculos.actContraerExecute(Sender: TObject);
begin
     vGridVehiculos.FullCollapse;
end;

procedure TfrmVehiculos.actEliminarCombustibleExecute(Sender: TObject);
begin
     if not dmMain.dsVehiculosCombustible.DataSet.IsEmpty then
        if MessageDlg('¿Está seguro de eliminar este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
                dmMain.qryVehiculosCombustibleEdit.Close;
                dmMain.qryVehiculosCombustibleEdit.ParamByName('empresa_id').AsInteger     := _Globales.Empresa;
                dmMain.qryVehiculosCombustibleEdit.ParamByName('vehiculo_id').AsInteger    := dmMain.dsVehiculosCombustible.DataSet.FieldByName('vehiculo_id').AsInteger;
                dmMain.qryVehiculosCombustibleEdit.ParamByName('combustible_id').AsInteger := dmMain.dsVehiculosCombustible.DataSet.FieldByName('combustible_id').AsInteger;
                dmMain.qryVehiculosCombustibleEdit.Open;
                dmMain.dsVehiculosCombustibleEdit.DataSet.Delete;
                dmMain.CargaVehiculosCombustible(_Globales.Empresa, dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger);
           end;
end;

procedure TfrmVehiculos.actEliminarMantoExecute(Sender: TObject);
begin
     if not dmMain.dsVehiculosReparaciones.DataSet.IsEmpty then
        if MessageDlg('¿Está seguro de eliminar este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
                dmMain.qryVehiculosReparacionesEdit.Close;
                dmMain.qryVehiculosReparacionesEdit.ParamByName('empresa_id').AsInteger    := _Globales.Empresa;
                dmMain.qryVehiculosReparacionesEdit.ParamByName('vehiculo_id').AsInteger   := dmMain.dsVehiculosReparaciones.DataSet.FieldByName('vehiculo_id').AsInteger;
                dmMain.qryVehiculosReparacionesEdit.ParamByName('reparacion_id').AsInteger := dmMain.dsVehiculosReparaciones.DataSet.FieldByName('reparacion_id').AsInteger;
                dmMain.qryVehiculosReparacionesEdit.Open;
                dmMain.dsVehiculosReparacionesEdit.DataSet.Delete;
                dmMain.CargaVehiculosReparaciones(_Globales.Empresa, dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger);
           end;
end;

procedure TfrmVehiculos.actExpandirExecute(Sender: TObject);
begin
     vGridVehiculos.FullExpand;
end;

procedure TfrmVehiculos.actGuardarExecute(Sender: TObject);
begin
     if dmMain.dsVehiculosEdit.DataSet.State in [dsInsert, dsEdit] then
        begin
             dmMain.dsVehiculosEdit.DataSet.Post;
             ModalResult := mrOk;
        end;
end;

procedure TfrmVehiculos.actModificarCombustibleExecute(Sender: TObject);
begin
     if not dmMain.dsVehiculosCombustible.DataSet.IsEmpty then
        begin
             frmVehiculosCombustible := TfrmVehiculosCombustible.Create(Self);
             frmVehiculosCombustible.VehiculoId := dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger;
             dmMain.qryVehiculosCombustibleEdit.Close;
             dmMain.qryVehiculosCombustibleEdit.ParamByName('empresa_id').AsInteger     := _Globales.Empresa;
             dmMain.qryVehiculosCombustibleEdit.ParamByName('vehiculo_id').AsInteger    := dmMain.dsVehiculosCombustible.DataSet.FieldByName('vehiculo_id').AsInteger;
             dmMain.qryVehiculosCombustibleEdit.ParamByName('combustible_id').AsInteger := dmMain.dsVehiculosCombustible.DataSet.FieldByName('combustible_id').AsInteger;
             dmMain.qryVehiculosCombustibleEdit.Open;
             dmMain.dsVehiculosCombustibleEdit.DataSet.Edit;
             if frmVehiculosCombustible.ShowModal = mrOk then
                dmMain.CargaVehiculosCombustible(_Globales.Empresa, dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger);
        end;
end;

procedure TfrmVehiculos.actModificarMantoExecute(Sender: TObject);
begin
     if not dmMain.dsVehiculosReparaciones.DataSet.IsEmpty then
        begin
             frmVehiculosReparaciones := TfrmVehiculosReparaciones.Create(Self);
             frmVehiculosReparaciones.VehiculoId := dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger;
             dmMain.qryVehiculosReparacionesEdit.Close;
             dmMain.qryVehiculosReparacionesEdit.ParamByName('empresa_id').AsInteger    := _Globales.Empresa;
             dmMain.qryVehiculosReparacionesEdit.ParamByName('vehiculo_id').AsInteger   := dmMain.dsVehiculosReparaciones.DataSet.FieldByName('vehiculo_id').AsInteger;
             dmMain.qryVehiculosReparacionesEdit.ParamByName('reparacion_id').AsInteger := dmMain.dsVehiculosReparaciones.DataSet.FieldByName('reparacion_id').AsInteger;
             dmMain.qryVehiculosReparacionesEdit.Open;
             dmMain.dsVehiculosReparacionesEdit.DataSet.Edit;
             if frmVehiculosReparaciones.ShowModal = mrOk then
                dmMain.CargaVehiculosReparaciones(_Globales.Empresa, dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger);
        end;
end;

procedure TfrmVehiculos.actVerCombustibleExecute(Sender: TObject);
begin
     if not dmMain.dsVehiculosCombustible.DataSet.IsEmpty then
        begin
             frmVehiculosCombustible := TfrmVehiculosCombustible.Create(Self);
             frmVehiculosCombustible.VehiculoId := dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger;
             dmMain.qryVehiculosCombustibleEdit.Close;
             dmMain.qryVehiculosCombustibleEdit.ParamByName('empresa_id').AsInteger     := _Globales.Empresa;
             dmMain.qryVehiculosCombustibleEdit.ParamByName('vehiculo_id').AsInteger    := dmMain.dsVehiculosCombustible.DataSet.FieldByName('vehiculo_id').AsInteger;
             dmMain.qryVehiculosCombustibleEdit.ParamByName('combustible_id').AsInteger := dmMain.dsVehiculosCombustible.DataSet.FieldByName('combustible_id').AsInteger;
             dmMain.qryVehiculosCombustibleEdit.Open;
             frmVehiculosCombustible.ShowModal;
        end;
end;

procedure TfrmVehiculos.actVerMantoExecute(Sender: TObject);
begin
     if not dmMain.dsVehiculosReparaciones.DataSet.IsEmpty then
        begin
             frmVehiculosReparaciones := TfrmVehiculosReparaciones.Create(Self);
             frmVehiculosReparaciones.VehiculoId := dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger;
             dmMain.qryVehiculosReparacionesEdit.Close;
             dmMain.qryVehiculosReparacionesEdit.ParamByName('empresa_id').AsInteger    := _Globales.Empresa;
             dmMain.qryVehiculosReparacionesEdit.ParamByName('vehiculo_id').AsInteger   := dmMain.dsVehiculosReparaciones.DataSet.FieldByName('vehiculo_id').AsInteger;
             dmMain.qryVehiculosReparacionesEdit.ParamByName('reparacion_id').AsInteger := dmMain.dsVehiculosReparaciones.DataSet.FieldByName('reparacion_id').AsInteger;
             dmMain.qryVehiculosReparacionesEdit.Open;
             frmVehiculosReparaciones.ShowModal;
        end;
end;

procedure TfrmVehiculos.FormCreate(Sender: TObject);
begin
     dmMain.qryVehiculosEdit.Open;
     vGridVehiculos.FullExpand;
end;

procedure TfrmVehiculos.FormShow(Sender: TObject);
begin
     if dmMain.dsVehiculosEdit.DataSet.State = dsInsert then
        Caption := 'Vehículos (nuevo)';
     if dmMain.dsVehiculosEdit.DataSet.State = dsEdit then
        Caption := 'Vehículos (modificar)';
     if dmMain.dsVehiculosEdit.DataSet.State = dsBrowse then
        Caption := 'Vehículos (consultar)';

     cxTabSheet2.TabVisible := dmMain.dsVehiculosEdit.DataSet.State in [dsEdit, dsBrowse];
     cxTabSheet3.TabVisible := dmMain.dsVehiculosEdit.DataSet.State in [dsEdit, dsBrowse];

     if dmMain.dsVehiculosEdit.DataSet.State in [dsEdit, dsBrowse] then
        begin
             dmMain.CargaVehiculosCombustible(_Globales.Empresa,
                                              dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger
                                              );
             dmMain.CargaVehiculosReparaciones(_Globales.Empresa,
                                               dmMain.dsVehiculosEdit.DataSet.FieldByName('vehiculo_id').AsInteger
                                              );
        end;

     xEstatus.Properties.ReadOnly       := dmMain.dsVehiculosEdit.DataSet.State <> dsEdit;
     xEstatus.Visible                   := dmMain.dsVehiculosEdit.DataSet.State in [dsEdit, dsBrowse];
     actGuardar.Enabled                 := dmMain.dsVehiculosEdit.DataSet.State in [dsInsert, dsEdit];
     actGuardar.Visible                 := dmMain.dsVehiculosEdit.DataSet.State in [dsInsert, dsEdit];
     vGridVehiculos.OptionsData.Editing := dmMain.dsVehiculosEdit.DataSet.State in [dsInsert, dsEdit];

     vGridVehiculos.LookAndFeel.NativeStyle := dmMain.dsVehiculosEdit.DataSet.State in [dsBrowse];
end;

procedure TfrmVehiculos.xdescripcionKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

end.

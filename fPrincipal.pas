unit fPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, dxBar, dxRibbon, dxRibbonForm,
  dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter, cxContainer,
  cxEdit, dxSkinsForm, dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxCurrencyEdit, cxBarEditItem,
  dxBarExtDBItems, Vcl.ImgList, cxCalendar, StrUtils, dxSkinDevExpressStyle, Vcl.ActnList, cxImageComboBox, Vcl.ExtCtrls,
  cxTextEdit, cxDBEdit, Vcl.StdCtrls, cxImage, IniFiles, cxGridExportLink, cxMemo, cxMaskEdit, cxDropDownEdit, dxBarExtItems,
  DateUtils, Vcl.Grids, Vcl.DBGrids, dxSkinBlue, dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinOffice2013LightGray;

type
  TfrmPrincipal = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonBackstageView1: TdxRibbonBackstageView;
    dxRibbonBackstageViewTabSheet1: TdxRibbonBackstageViewTabSheet;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxRibbonBackstageViewGalleryControl1: TdxRibbonBackstageViewGalleryControl;
    cxLabel1: TcxLabel;
    dxRibbonBackstageViewGalleryControl1Group1: TdxRibbonBackstageViewGalleryGroup;
    dxSkinController1: TdxSkinController;
    dxRibbonBackstageViewGalleryControl1Group1Item1: TdxRibbonBackstageViewGalleryItem;
    ViewEmpleados: TcxGridDBTableView;
    cxGridMainLevelMain: TcxGridLevel;
    cxGridMain: TcxGrid;
    ViewEmpleadosColumnElemento: TcxGridDBColumn;
    ViewEmpleadosColumnNombres: TcxGridDBColumn;
    ViewEmpleadosColumnEstatus: TcxGridDBColumn;
    ViewEmpleadosColumnEmpresa: TcxGridDBColumn;
    ViewEmpleadosColumnOficina: TcxGridDBColumn;
    ViewEmpleadosColumnServicio: TcxGridDBColumn;
    dxRibbon1Tab2: TdxRibbonTab;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab4: TdxRibbonTab;
    dxRibbon1Tab5: TdxRibbonTab;
    dxRibbon1Tab6: TdxRibbonTab;
    dxRibbon1Tab7: TdxRibbonTab;
    btnElementosActivos: TdxBarButton;
    btnElementosInactivos: TdxBarButton;
    btnElementosPrecontrato: TdxBarButton;
    btnElementosReingreso: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    ImageListRibbon: TImageList;
    btnClientesActivos: TdxBarButton;
    btnClientesInactivos: TdxBarButton;
    ViewClientes: TcxGridDBTableView;
    ViewClientesColumnCliente: TcxGridDBColumn;
    ViewClientesColumnDescripcion: TcxGridDBColumn;
    ViewClientesColumnFechaIni: TcxGridDBColumn;
    ViewClientesColumnNombreFiscal: TcxGridDBColumn;
    ViewClientesColumnRepLegal: TcxGridDBColumn;
    cxEditStyleController1: TcxEditStyleController;
    imgListAcciones: TcxImageList;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    ActionList1: TActionList;
    actAgregarEmpleado: TAction;
    actModificarEmpleado: TAction;
    actBajaEmpleado: TAction;
    actConsultarEmpleadosActivos: TAction;
    actVerEmpleado: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    actAgregarCliente: TAction;
    actModificarCliente: TAction;
    actEliminarCliente: TAction;
    actVerCliente: TAction;
    actConsultarClientesActivos: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarManager1Bar6: TdxBar;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    actAgregarServicio: TAction;
    actModificarServicio: TAction;
    actEliminarServicio: TAction;
    actVerServicio: TAction;
    actConsultarServiciosActivos: TAction;
    ViewServicios: TcxGridDBTableView;
    ImageListRibbon16: TImageList;
    dxBarManager1Bar8: TdxBar;
    dxBarManager1Bar9: TdxBar;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    actAgregarVehiculo: TAction;
    actModificarVehiculo: TAction;
    actEliminarVehiculo: TAction;
    actVerVehiculo: TAction;
    actConsultarVehiculosActivos: TAction;
    ViewVehiculos: TcxGridDBTableView;
    actCredencial: TAction;
    actHojaTecnica: TAction;
    actCedula: TAction;
    dxBarManager1Bar10: TdxBar;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    actExportarExcel: TAction;
    dxBarManager1Bar11: TdxBar;
    dxBarLargeButton24: TdxBarLargeButton;
    SaveDialog1: TSaveDialog;
    dxBarManager1Bar12: TdxBar;
    dxBarManager1Bar13: TdxBar;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarLargeButton28: TdxBarLargeButton;
    actAgregarUsuario: TAction;
    actModificarUsuario: TAction;
    actEliminarUsuario: TAction;
    actVerUsuario: TAction;
    actConsultarUsuarios: TAction;
    dxBarLargeButton29: TdxBarLargeButton;
    ViewUsuarios: TcxGridDBTableView;
    ViewUsuariosColumnUsuario: TcxGridDBColumn;
    dxBarManager1Bar14: TdxBar;
    dxBarLargeButton30: TdxBarLargeButton;
    actPermisos: TAction;
    dxBarManager1Bar15: TdxBar;
    dxBarLargeButton31: TdxBarLargeButton;
    actAsignarFoto: TAction;
    dxBarManager1Bar16: TdxBar;
    dxBarLargeButton32: TdxBarLargeButton;
    actFichaRegistro: TAction;
    dxBarManager1Bar17: TdxBar;
    dxBarLargeButton33: TdxBarLargeButton;
    actConsultarEmpleadosInactivos: TAction;
    dxBarLargeButton34: TdxBarLargeButton;
    dxBarLargeButton35: TdxBarLargeButton;
    actConsultarClientesInactivos: TAction;
    actConsultarServiciosInactivos: TAction;
    dxBarLargeButton36: TdxBarLargeButton;
    ViewServiciosColumnServicio: TcxGridDBColumn;
    ViewServiciosColumnDescripcion: TcxGridDBColumn;
    ViewServiciosColumnCliente: TcxGridDBColumn;
    ViewServiciosColumnNombreCliente: TcxGridDBColumn;
    ViewServiciosColumnRepSeg: TcxGridDBColumn;
    ViewServiciosColumnRepSegTD: TcxGridDBColumn;
    ViewServiciosColumnRepSegEmail: TcxGridDBColumn;
    ViewVehiculosColumnVehiculoId: TcxGridDBColumn;
    ViewVehiculosColumnMarca: TcxGridDBColumn;
    ViewVehiculosColumnModelo: TcxGridDBColumn;
    ViewVehiculosColumnSubMarca: TcxGridDBColumn;
    ViewVehiculosColumnColor: TcxGridDBColumn;
    ViewVehiculosColumnPlacas: TcxGridDBColumn;
    ViewVehiculosColumnPlacasOrigen: TcxGridDBColumn;
    actServiciosFunciones: TAction;
    dxBarManager1Bar18: TdxBar;
    dxBarLargeButton38: TdxBarLargeButton;
    actConsultarVehiculosInactivos: TAction;
    actReingreso: TAction;
    dxBarLargeButton37: TdxBarLargeButton;
    dxBarManager1Bar7: TdxBar;
    dxBarLargeButton39: TdxBarLargeButton;
    actProgramarServicios: TAction;
    xFechaProgramacion: TdxBarDateCombo;
    ViewAsistenciaCaptura: TcxGridDBTableView;
    ViewAsistenciaCapturaColumnAnio: TcxGridDBColumn;
    ViewAsistenciaCapturaColumnMes: TcxGridDBColumn;
    ViewAsistenciaCapturaColumnDia: TcxGridDBColumn;
    ViewAsistenciaCapturaColumnRelleno: TcxGridDBColumn;
    dxBarManager1Bar19: TdxBar;
    dxBarManager1Bar20: TdxBar;
    xFechaAsistenciaIni: TdxBarDateCombo;
    xFechaAsistenciaFin: TdxBarDateCombo;
    dxBarLargeButton41: TdxBarLargeButton;
    actCapturarAsistencia: TAction;
    dxBarLargeButton42: TdxBarLargeButton;
    actConsultarAsistencia: TAction;
    dxBarLargeButton43: TdxBarLargeButton;
    dxRibbon1Tab8: TdxRibbonTab;
    dxBarManager1Bar22: TdxBar;
    dxBarLargeButton44: TdxBarLargeButton;
    dxBarLargeButton45: TdxBarLargeButton;
    dxBarLargeButton46: TdxBarLargeButton;
    dxBarLargeButton47: TdxBarLargeButton;
    dxRibbonPopupMenuEmpleados: TdxRibbonPopupMenu;
    dxRibbonPopupMenuClientes: TdxRibbonPopupMenu;
    dxRibbonPopupMenuServicios: TdxRibbonPopupMenu;
    dxRibbonPopupMenuVehiculos: TdxRibbonPopupMenu;
    ViewAsistenciaConsulta: TcxGridDBTableView;
    ViewAsistenciaConsultaColumnServicio: TcxGridDBColumn;
    ViewAsistenciaConsultaColumnDescripcionServicio: TcxGridDBColumn;
    ViewAsistenciaConsultaColumnEmpleado: TcxGridDBColumn;
    ViewAsistenciaConsultaColumnNombreEmpleado: TcxGridDBColumn;
    ViewAsistenciaConsultaColumnEntradaProg: TcxGridDBColumn;
    ViewAsistenciaConsultaColumnEntrada: TcxGridDBColumn;
    ViewAsistenciaConsultaColumnSalidaProg: TcxGridDBColumn;
    ViewAsistenciaConsultaColumnSalida: TcxGridDBColumn;
    ViewAsistenciaConsultaColumnObservaciones: TcxGridDBColumn;
    ViewEquipo: TcxGridDBTableView;
    ViewEquipoColumnEquipo: TcxGridDBColumn;
    ViewEquipoColumnTipo: TcxGridDBColumn;
    ViewEquipoColumnDescripcion: TcxGridDBColumn;
    ViewEquipoColumnMarca: TcxGridDBColumn;
    ViewEquipoColumnProveedor: TcxGridDBColumn;
    actAgregarEquipo: TAction;
    actModificarEquipo: TAction;
    actEliminarEquipo: TAction;
    actVerEquipo: TAction;
    actConsultarEquipoActivo: TAction;
    actConsultarEquipoInactivo: TAction;
    dxBarManager1Bar21: TdxBar;
    dxBarLargeButton40: TdxBarLargeButton;
    dxBarLargeButton48: TdxBarLargeButton;
    dxBarManager1Bar23: TdxBar;
    dxBarLargeButton49: TdxBarLargeButton;
    dxRibbonPopupMenuEquipo: TdxRibbonPopupMenu;
    dxBarButtonAgregarEquipo: TdxBarButton;
    dxBarButtonModificarEquipo: TdxBarButton;
    dxBarButtonVerEquipo: TdxBarButton;
    dxBarButtonEliminarEquipo: TdxBarButton;
    actCopiarPreProgramacion: TAction;
    dxBarManager1Bar24: TdxBar;
    dxBarLargeButton50: TdxBarLargeButton;
    ViewAsistenciaConsultaColumnHorasExtra: TcxGridDBColumn;
    ViewEmpleadosColumnRFC: TcxGridDBColumn;
    ViewEmpleadosColumnFechaAlta: TcxGridDBColumn;
    ViewEmpleadosColumnDomicilio: TcxGridDBColumn;
    ViewEmpleadosColumnCuip: TcxGridDBColumn;
    ViewEmpleadosColumnFechaNacimiento: TcxGridDBColumn;
    ViewEmpleadosColumnNSS: TcxGridDBColumn;
    dxBarButtonAumentarEquipo: TdxBarButton;
    dxBarButtonDisminuirEquipo: TdxBarButton;
    ViewAsistenciaConsultaColumnFecha: TcxGridDBColumn;
    dxRibbon1Tab9: TdxRibbonTab;
    dxBarManager1Bar25: TdxBar;
    dxBarLargeButton51: TdxBarLargeButton;
    dxBarLargeButton52: TdxBarLargeButton;
    dxBarLargeButton53: TdxBarLargeButton;
    dxBarLargeButton54: TdxBarLargeButton;
    actAgregarMovto: TAction;
    actModificarMovto: TAction;
    actEliminarMovto: TAction;
    actVerMovto: TAction;
    actConsultarMovtosActivos: TAction;
    actConsultarMovtosInactivos: TAction;
    dxBarManager1Bar26: TdxBar;
    dxBarLargeButton55: TdxBarLargeButton;
    dxBarLargeButton56: TdxBarLargeButton;
    dxBarManager1Bar27: TdxBar;
    xfechaAlmacenDesde: TdxBarDateCombo;
    xfechaAlmacenHasta: TdxBarDateCombo;
    ViewAlmacen: TcxGridDBTableView;
    dxRibbonPopupMenuAlmacen: TdxRibbonPopupMenu;
    dxBarButtonAgregarMovtoAlmacen: TdxBarButton;
    dxBarButtonModificarMovtoAlmacen: TdxBarButton;
    dxBarButtonCancelarMovtoAlmacen: TdxBarButton;
    dxBarButtonVerMovtoAlmacen: TdxBarButton;
    ViewAlmacenColumnMovto: TcxGridDBColumn;
    ViewAlmacenColumnTipo: TcxGridDBColumn;
    ViewAlmacenColumnFecha: TcxGridDBColumn;
    ViewAlmacenColumnProveedor: TcxGridDBColumn;
    ViewAlmacenColumnReferencia: TcxGridDBColumn;
    ViewAlmacenColumnTotal: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxRibbon1TabChanging(Sender: TdxCustomRibbon; ANewTab: TdxRibbonTab; var Allow: Boolean);
    procedure actAgregarEmpleadoExecute(Sender: TObject);
    procedure actModificarEmpleadoExecute(Sender: TObject);
    procedure actBajaEmpleadoExecute(Sender: TObject);
    procedure actConsultarEmpleadosActivosExecute(Sender: TObject);
    procedure actVerEmpleadoExecute(Sender: TObject);
    procedure ViewEmpleadosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure ViewElementosTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure cxSplitter1AfterOpen(Sender: TObject);
    procedure actCredencialExecute(Sender: TObject);
    procedure actHojaTecnicaExecute(Sender: TObject);
    procedure actCedulaExecute(Sender: TObject);
    procedure actExportarExcelExecute(Sender: TObject);
    procedure actConsultarUsuariosExecute(Sender: TObject);
    procedure actPermisosExecute(Sender: TObject);
    procedure actConsultarClientesActivosExecute(Sender: TObject);
    procedure actAgregarClienteExecute(Sender: TObject);
    procedure actModificarClienteExecute(Sender: TObject);
    procedure actVerClienteExecute(Sender: TObject);
    procedure ViewClientesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actAsignarFotoExecute(Sender: TObject);
    procedure actFichaRegistroExecute(Sender: TObject);
    procedure actConsultarEmpleadosInactivosExecute(Sender: TObject);
    procedure actConsultarClientesInactivosExecute(Sender: TObject);
    procedure actConsultarServiciosActivosExecute(Sender: TObject);
    procedure actConsultarServiciosInactivosExecute(Sender: TObject);
    procedure actAgregarServicioExecute(Sender: TObject);
    procedure actModificarServicioExecute(Sender: TObject);
    procedure actVerServicioExecute(Sender: TObject);
    procedure ViewServiciosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actConsultarVehiculosActivosExecute(Sender: TObject);
    procedure actAgregarVehiculoExecute(Sender: TObject);
    procedure actModificarVehiculoExecute(Sender: TObject);
    procedure actVerVehiculoExecute(Sender: TObject);
    procedure ViewVehiculosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actEliminarClienteExecute(Sender: TObject);
    procedure actEliminarServicioExecute(Sender: TObject);
    procedure actEliminarVehiculoExecute(Sender: TObject);
    procedure actConsultarVehiculosInactivosExecute(Sender: TObject);
    procedure actReingresoExecute(Sender: TObject);
    procedure actProgramarServiciosExecute(Sender: TObject);
    procedure ViewAsistenciaCapturaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actCapturarAsistenciaExecute(Sender: TObject);
    procedure actConsultarAsistenciaExecute(Sender: TObject);
    procedure actAgregarEquipoExecute(Sender: TObject);
    procedure actModificarEquipoExecute(Sender: TObject);
    procedure actEliminarEquipoExecute(Sender: TObject);
    procedure actVerEquipoExecute(Sender: TObject);
    procedure actConsultarEquipoActivoExecute(Sender: TObject);
    procedure actConsultarEquipoInactivoExecute(Sender: TObject);
    procedure ViewEquipoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actCopiarPreProgramacionExecute(Sender: TObject);
    procedure actConsultarMovtosActivosExecute(Sender: TObject);
    procedure actConsultarMovtosInactivosExecute(Sender: TObject);
    procedure actAgregarMovtoExecute(Sender: TObject);
    procedure actModificarMovtoExecute(Sender: TObject);
    procedure actEliminarMovtoExecute(Sender: TObject);
    procedure actVerMovtoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ShowWaitForm;
    procedure HideWaitForm;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses dMain, fEmpleados, fReportes, fSplash, fWaitForm, fPermisos, fLogin,
  uGlobales, fClientes, fAsignarFoto, fServicios, fVehiculos, fEmpleadosBaja, fAsistencia, fEquipo, FMovtosAlmacen;


{ TForm1 }

procedure TfrmPrincipal.actAgregarClienteExecute(Sender: TObject);
begin
     frmClientes := TfrmClientes.Create(Self);
     dmMain.dsClientesEdit.DataSet.Insert;
     if frmClientes.ShowModal = mrOk then
        if actConsultarClientesActivos.Enabled then
           actConsultarClientesActivos.Execute;
end;

procedure TfrmPrincipal.actAgregarEmpleadoExecute(Sender: TObject);
begin
     frmEmpleados := TfrmEmpleados.Create(Self);

     dmMain.dsEmpleadosEdit.DataSet.Insert;
     dmMain.dsEmpleadosCursosEdit.DataSet.Insert;
     dmMain.dsEmpleadosSocioEconomicoEdit.DataSet.Insert;

     if frmEmpleados.ShowModal = mrOk then
        if actConsultarEmpleadosActivos.Enabled then
           actConsultarEmpleadosActivos.Execute;
end;

procedure TfrmPrincipal.actAgregarEquipoExecute(Sender: TObject);
begin
     frmEquipo := TfrmEquipo.Create(Self);
     dmMain.dsEquipoEdit.DataSet.Insert;
     if frmEquipo.ShowModal = mrOk then
        if actConsultarEquipoActivo.Enabled then
           actConsultarEquipoActivo.Execute;
end;

procedure TfrmPrincipal.actAgregarMovtoExecute(Sender: TObject);
begin
     frmMovtosAlmacen := TfrmMovtosAlmacen.Create(Self);
     dmMain.dsMovtosAlmacenEdit.DataSet.Insert;
     if frmMovtosAlmacen.ShowModal = mrOk then
        if actConsultarMovtosActivos.Enabled then
           actConsultarMovtosActivos.Execute;
end;

procedure TfrmPrincipal.actAgregarServicioExecute(Sender: TObject);
begin
     frmServicios := TfrmServicios.Create(Self);
     dmMain.dsServiciosEdit.DataSet.Insert;
     if frmServicios.ShowModal = mrOk then
        if actConsultarServiciosActivos.Enabled then
           actConsultarServiciosActivos.Execute;
end;

procedure TfrmPrincipal.actAgregarVehiculoExecute(Sender: TObject);
begin
     frmVehiculos := TfrmVehiculos.Create(Self);
     dmMain.dsVehiculosEdit.DataSet.Insert;
     if frmVehiculos.ShowModal = mrOk then
        if actConsultarVehiculosActivos.Enabled then
           actConsultarVehiculosActivos.Execute;
end;

procedure TfrmPrincipal.actAsignarFotoExecute(Sender: TObject);
begin
     if not dmMain.dsEmpleados.DataSet.IsEmpty then
        begin
             try
                frmAsignarFoto := TfrmAsignarFoto.Create(Self);
                dmMain.qryEmpleadosFotosEdit.Close;
                dmMain.qryEmpleadosFotosEdit.ParamByName('empleado_id').AsInteger := dmMain.dsEmpleados.DataSet.FieldByName('empleado_id').AsInteger;
                dmMain.qryEmpleadosFotosEdit.Open;
                dmMain.qryEmpleadosFotosEdit.Edit;
                frmAsignarFoto.xNombres.Text := Trim(dmMain.dsEmpleados.DataSet.FieldByName('nombre_empleado').AsString);
                frmAsignarFoto.ShowModal;
             finally
                    FreeAndNil(frmAsignarFoto);
             end;
        end;
end;

procedure TfrmPrincipal.actCapturarAsistenciaExecute(Sender: TObject);
begin
     ShowWaitForm;
     cxGridMainLevelMain.GridView := ViewAsistenciaCaptura;
     dmMain.CargaAsistencia(_Globales.Empresa,
                            xFechaAsistenciaIni.Date,
                            xFechaAsistenciaFin.Date);
     HideWaitForm;
end;

procedure TfrmPrincipal.actCedulaExecute(Sender: TObject);
begin
     if not dmMain.dsEmpleados.DataSet.IsEmpty then
        begin
             try
                frmReportes := TfrmReportes.Create(Self);
                frmReportes.ImprimirReporte(3,dmMain.dsEmpleados.DataSet.FieldByName('empleado_id').AsInteger,'');
                frmReportes.ShowModal;
             finally
                    FreeAndNil(frmReportes);
             end;
        end;
end;

procedure TfrmPrincipal.actConsultarAsistenciaExecute(Sender: TObject);
begin
     ShowWaitForm;
     cxGridMainLevelMain.GridView := ViewAsistenciaConsulta;
     ViewAsistenciaConsulta.Controller.ShowFindPanel;
     dmMain.ConsultaAsistencia(_Globales.Empresa,
                               xFechaAsistenciaIni.Date,
                               xFechaAsistenciaFin.Date);
     HideWaitForm;
end;

procedure TfrmPrincipal.actConsultarClientesActivosExecute(Sender: TObject);
begin
     ShowWaitForm;
     dmMain.CargaClientes(_Globales.Empresa,1);
     HideWaitForm;
end;

procedure TfrmPrincipal.actConsultarClientesInactivosExecute(Sender: TObject);
begin
     ShowWaitForm;
     dmMain.CargaClientes(_Globales.Empresa, 0);
     HideWaitForm;
end;

procedure TfrmPrincipal.actConsultarEmpleadosActivosExecute(Sender: TObject);
begin
     ShowWaitForm;
     dmMain.CargaEmpleados(_Globales.Empresa, 1);

     actReingreso.Visible := False;

     HideWaitForm;
end;

procedure TfrmPrincipal.actConsultarEmpleadosInactivosExecute(Sender: TObject);
begin
     ShowWaitForm;
     dmMain.CargaEmpleados(_Globales.Empresa, 0);

     actReingreso.Visible := True;

     HideWaitForm;
end;

procedure TfrmPrincipal.actConsultarEquipoActivoExecute(Sender: TObject);
begin
     ShowWaitForm;
     dmMain.CargaEquipo(_Globales.Empresa,1);
     HideWaitForm;
end;

procedure TfrmPrincipal.actConsultarEquipoInactivoExecute(Sender: TObject);
begin
     ShowWaitForm;
     dmMain.CargaEquipo(_Globales.Empresa,0);
     HideWaitForm;
end;

procedure TfrmPrincipal.actConsultarMovtosActivosExecute(Sender: TObject);
begin
     ShowWaitForm;
     dmMain.CargaMovimientosAlmacen(_Globales.Empresa,xfechaAlmacenDesde.Date, xfechaAlmacenHasta.Date, 'CAP', 'ACT');
     HideWaitForm;
end;

procedure TfrmPrincipal.actConsultarMovtosInactivosExecute(Sender: TObject);
begin
     ShowWaitForm;
     dmMain.CargaMovimientosAlmacen(_Globales.Empresa,xfechaAlmacenDesde.Date, xfechaAlmacenHasta.Date, 'CAN', 'CAN');
     HideWaitForm;
end;

procedure TfrmPrincipal.actConsultarServiciosActivosExecute(Sender: TObject);
begin
     ShowWaitForm;
     dmMain.CargaServicios(_Globales.Empresa, 1);
     HideWaitForm;
end;

procedure TfrmPrincipal.actConsultarServiciosInactivosExecute(Sender: TObject);
begin
     ShowWaitForm;
     dmMain.CargaServicios(_Globales.Empresa, 0);
     HideWaitForm;
end;

procedure TfrmPrincipal.actConsultarUsuariosExecute(Sender: TObject);
begin
     ShowWaitForm;
     dmMain.CargaUsuarios;
     HideWaitForm;
end;

procedure TfrmPrincipal.actConsultarVehiculosActivosExecute(Sender: TObject);
begin
     ShowWaitForm;
     dmMain.CargaVehiculos(_Globales.Empresa,1);
     HideWaitForm;
end;

procedure TfrmPrincipal.actConsultarVehiculosInactivosExecute(Sender: TObject);
begin
     ShowWaitForm;
     dmMain.CargaVehiculos(_Globales.Empresa,0);
     HideWaitForm;
end;

procedure TfrmPrincipal.actCopiarPreProgramacionExecute(Sender: TObject);
begin
     if not dmMain.ExistePreasignacionSemanal then
        case dmMain.CopiarPreProgramacion of
             0 : MessageDlg('No existe una preprogramación semanal previa', mtError, [mbOK], 0);
             1 : MessageDlg('Ya existe la preprogramación para esta semana (' +
                            FormatDateTime('dd/mm/yyyy',StartOfTheWeek(Now())) + ' al ' +
                            FormatDateTime('dd/mm/yyyy',EndOfTheWeek(Now())) + ')', mtError, [mbOK], 0);
             2 : MessageDlg('Se ha copiado la preprogramación anterior a la semana actual correctamente', mtInformation, [mbOK], 0);
        end
     else
         MessageDlg('Ya existe la preprogramación para esta semana (' +
                     FormatDateTime('dd/mm/yyyy',StartOfTheWeek(Now())) + ' al ' +
                     FormatDateTime('dd/mm/yyyy',EndOfTheWeek(Now())) + ')', mtError, [mbOK], 0);
end;

procedure TfrmPrincipal.actCredencialExecute(Sender: TObject);
begin
     if not dmMain.dsEmpleados.DataSet.IsEmpty then
        begin
             try
                frmReportes := TfrmReportes.Create(Self);
                frmReportes.ImprimirReporte(1,dmMain.dsEmpleados.DataSet.FieldByName('empleado_id').AsInteger,'');
                frmReportes.ShowModal;
             finally
                    FreeAndNil(frmReportes);
             end;
        end;
end;

procedure TfrmPrincipal.actBajaEmpleadoExecute(Sender: TObject);
begin
     with dmMain.dsEmpleados.DataSet do
          if not IsEmpty then
             if MessageDlg('¿Está seguro de dar de baja al empleado ' + Trim(FieldByName('nombre_empleado').AsString) + ' ' + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                try
                   frmEmpleadosBaja := TfrmEmpleadosBaja.Create(Self);
                   dmMain.qryEmpleadosEdit.Close;
                   dmMain.qryEmpleadosEdit.ParamByName('empleado_id').AsInteger := dmMain.dsEmpleados.DataSet.FieldByName('empleado_id').AsInteger;
                   dmMain.qryEmpleadosEdit.Open;
                   dmMain.qryEmpleadosEdit.Edit;
                   if frmEmpleadosBaja.ShowModal = mrOk then
                      if actConsultarEmpleadosActivos.Enabled then
                         actConsultarEmpleadosActivos.Execute;
                finally
                       FreeAndNil(frmEmpleadosBaja);
                end;
end;

procedure TfrmPrincipal.actEliminarClienteExecute(Sender: TObject);
begin
     if not dmMain.dsClientes.DataSet.IsEmpty then
        if MessageDlg('¿Está seguro de eliminar el cliente ' + dmMain.dsClientes.DataSet.FieldByName('descripcion').AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           if actConsultarClientesActivos.Enabled then
              begin
                   dmMain.InactivarCliente(_Globales.Empresa, dmMain.dsClientes.DataSet.FieldByName('cliente_id').AsString);
                   actConsultarClientesActivos.Execute;
              end;
end;

procedure TfrmPrincipal.actEliminarEquipoExecute(Sender: TObject);
begin
     if not dmMain.dsEquipo.DataSet.IsEmpty then
        if MessageDlg('¿Está seguro de eliminar el equipo ' +
                      dmMain.dsEquipo.DataSet.FieldByName('tipo').AsString + ' | ' +
                      dmMain.dsEquipo.DataSet.FieldByName('descripcion').AsString + ' | ' +
                      dmMain.dsEquipo.DataSet.FieldByName('marca').AsString +
                      '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           if actConsultarEquipoActivo.Enabled then
              begin
                   dmMain.InactivarEquipo(_Globales.Empresa, dmMain.dsEquipo.DataSet.FieldByName('equipo_id').AsInteger);
                   actConsultarEquipoActivo.Execute;
              end;
end;

procedure TfrmPrincipal.actEliminarMovtoExecute(Sender: TObject);
begin
     if not dmMain.dsMovtosAlmacen.DataSet.IsEmpty then
        if MessageDlg('¿Está seguro de cancelar el movimiento de almacén ' +
                      dmMain.dsMovtosAlmacen.DataSet.FieldByName('tipo_movto').AsString + ' | ' +
                      FormatDateTime('dd/mm/yyyy',dmMain.dsMovtosAlmacen.DataSet.FieldByName('fecha_movto').AsDateTime) + ' | ' +
                      dmMain.dsMovtosAlmacen.DataSet.FieldByName('proveedor').AsString +
                      '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           if actConsultarMovtosActivos.Enabled then
              begin
//                   dmMain.InactivarEquipo(_Globales.Empresa, dmMain.dsEquipo.DataSet.FieldByName('equipo_id').AsInteger);
                   actConsultarMovtosActivos.Execute;
              end;
end;

procedure TfrmPrincipal.actEliminarServicioExecute(Sender: TObject);
begin
     if not dmMain.dsServicios.DataSet.IsEmpty then
        if MessageDlg('¿Está seguro de eliminar el servicio ' + dmMain.dsServicios.DataSet.FieldByName('descripcion').AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           if actConsultarServiciosActivos.Enabled then
              begin
                   dmMain.InactivarServicio(_Globales.Empresa, dmMain.dsServicios.DataSet.FieldByName('servicio_id').AsString);
                   actConsultarServiciosActivos.Execute;
              end;
end;

procedure TfrmPrincipal.actEliminarVehiculoExecute(Sender: TObject);
begin
     if not dmMain.dsVehiculos.DataSet.IsEmpty then
        if MessageDlg('¿Está seguro de eliminar el vehículo ' +
                      dmMain.dsVehiculos.DataSet.FieldByName('marca').AsString + ' ' +
                      dmMain.dsVehiculos.DataSet.FieldByName('submarca').AsString + ' ' +
                      dmMain.dsVehiculos.DataSet.FieldByName('modelo').AsString +
                      '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           if actConsultarVehiculosActivos.Enabled then
              begin
                   dmMain.InactivarVehiculo(_Globales.Empresa, dmMain.dsVehiculos.DataSet.FieldByName('vehiculo_id').AsInteger);
                   actConsultarVehiculosActivos.Execute;
              end;
end;

procedure TfrmPrincipal.actExportarExcelExecute(Sender: TObject);
begin
     if cxGridMain.ActiveView.DataController.RecordCount > 0 then
        begin
             SaveDialog1.FileName := dxRibbon1.ActiveTab.Caption;
             if SaveDialog1.Execute then
                begin
                     ViewEmpleadosColumnRFC.Visible             := dxRibbon1.ActiveTab.Caption = 'EMPLEADOS';
                     ViewEmpleadosColumnFechaAlta.Visible       := dxRibbon1.ActiveTab.Caption = 'EMPLEADOS';
                     ViewEmpleadosColumnDomicilio.Visible       := dxRibbon1.ActiveTab.Caption = 'EMPLEADOS';
                     ViewEmpleadosColumnCuip.Visible            := dxRibbon1.ActiveTab.Caption = 'EMPLEADOS';
                     ViewEmpleadosColumnFechaNacimiento.Visible := dxRibbon1.ActiveTab.Caption = 'EMPLEADOS';
                     ViewEmpleadosColumnNSS.Visible             := dxRibbon1.ActiveTab.Caption = 'EMPLEADOS';

                     ExportGridToXLSX(SaveDialog1.FileName,
                                      cxGridMain
                                     );

                     ViewEmpleadosColumnRFC.Visible             := False;
                     ViewEmpleadosColumnFechaAlta.Visible       := False;
                     ViewEmpleadosColumnDomicilio.Visible       := False;
                     ViewEmpleadosColumnCuip.Visible            := False;
                     ViewEmpleadosColumnFechaNacimiento.Visible := False;
                     ViewEmpleadosColumnNSS.Visible             := False;
                end;
        end;
end;

procedure TfrmPrincipal.actFichaRegistroExecute(Sender: TObject);
begin
     if not dmMain.dsClientes.DataSet.IsEmpty then
        begin
             try
                frmReportes := TfrmReportes.Create(Self);
                frmReportes.ImprimirReporte(4,0,dmMain.dsClientes.DataSet.FieldByName('cliente_id').AsString);
                frmReportes.ShowModal;
             finally
                    FreeAndNil(frmReportes);
             end;
        end;
end;

procedure TfrmPrincipal.actHojaTecnicaExecute(Sender: TObject);
begin
     if not dmMain.dsEmpleados.DataSet.IsEmpty then
        begin
             try
                frmReportes := TfrmReportes.Create(Self);
                frmReportes.ImprimirReporte(2,dmMain.dsEmpleados.DataSet.FieldByName('empleado_id').AsInteger,'');
                frmReportes.ShowModal;
             finally
                    FreeAndNil(frmReportes);
             end;
        end;
end;

procedure TfrmPrincipal.actModificarClienteExecute(Sender: TObject);
var
   bmk : TBookmark;
begin
     if not dmMain.dsClientes.DataSet.IsEmpty then
        begin
             try
                bmk := dmMain.dsClientes.DataSet.GetBookmark;
                frmClientes := TfrmClientes.Create(Self);
                dmMain.qryClientesEdit.Close;
                dmMain.qryClientesEdit.ParamByName('cliente_id').AsString := dmMain.dsClientes.DataSet.FieldByName('cliente_id').AsString;
                dmMain.qryClientesEdit.Open;
                dmMain.qryClientesEdit.Edit;
                if frmClientes.ShowModal = mrOk then
                   if actConsultarClientesActivos.Enabled then
                      begin
                           actConsultarClientesActivos.Execute;
                           if dmMain.dsClientes.DataSet.BookmarkValid(bmk) then
                              dmMain.dsClientes.DataSet.GotoBookmark(bmk);
                      end;
             finally
                    if dmMain.dsClientes.DataSet.BookmarkValid(bmk) then
                       dmMain.dsClientes.DataSet.FreeBookmark(bmk);
                    FreeAndNil(frmClientes);
             end;
        end;
end;

procedure TfrmPrincipal.actModificarEmpleadoExecute(Sender: TObject);
var
   bmk : TBookmark;
begin
     if not dmMain.dsEmpleados.DataSet.IsEmpty then
        begin
             try
                bmk := dmMain.dsEmpleados.DataSet.GetBookmark;
                frmEmpleados := TfrmEmpleados.Create(Self);
                dmMain.qryEmpleadosEdit.Close;
                dmMain.qryEmpleadosEdit.ParamByName('empleado_id').AsInteger := dmMain.dsEmpleados.DataSet.FieldByName('empleado_id').AsInteger;
                dmMain.qryEmpleadosEdit.Open;
                dmMain.qryEmpleadosEdit.Edit;

                dmMain.qryEmpleadosCursosEdit.Close;
                dmMain.qryEmpleadosCursosEdit.ParamByName('empresa_id').AsInteger := dmMain.dsEmpleadosEdit.DataSet.FieldByName('empresa_id').AsInteger;
                dmMain.qryEmpleadosCursosEdit.ParamByName('empleado_id').AsInteger := dmMain.dsEmpleadosEdit.DataSet.FieldByName('empleado_id').AsInteger;
                dmMain.qryEmpleadosCursosEdit.Open;
                dmMain.qryEmpleadosCursosEdit.Edit;

                dmMain.qryEmpleadosSocioEconomicoEdit.Close;
                dmMain.qryEmpleadosSocioEconomicoEdit.ParamByName('empresa_id').AsInteger := dmMain.dsEmpleadosEdit.DataSet.FieldByName('empresa_id').AsInteger;
                dmMain.qryEmpleadosSocioEconomicoEdit.ParamByName('empleado_id').AsInteger := dmMain.dsEmpleadosEdit.DataSet.FieldByName('empleado_id').AsInteger;
                dmMain.qryEmpleadosSocioEconomicoEdit.Open;
                dmMain.qryEmpleadosSocioEconomicoEdit.Edit;

                if frmEmpleados.ShowModal = mrOk then
                   if actConsultarEmpleadosActivos.Enabled then
                      begin
                           actConsultarEmpleadosActivos.Execute;
                           if dmMain.dsEmpleados.DataSet.BookmarkValid(bmk) then
                              dmMain.dsEmpleados.DataSet.GotoBookmark(bmk);
                      end;
             finally
                    if dmMain.dsEmpleados.DataSet.BookmarkValid(bmk) then
                       dmMain.dsEmpleados.DataSet.FreeBookmark(bmk);
                    FreeAndNil(frmEmpleados);
             end;
        end;
end;

procedure TfrmPrincipal.actModificarEquipoExecute(Sender: TObject);
var
   bmk : TBookmark;
begin
     if not dmMain.dsEquipo.DataSet.IsEmpty then
        begin
             try
                bmk := dmMain.dsEquipo.DataSet.GetBookmark;
                frmEquipo := TfrmEquipo.Create(Self);
                dmMain.qryEquipoEdit.Close;
                dmMain.qryEquipoEdit.ParamByName('empresa_id').AsInteger := _Globales.Empresa;
                dmMain.qryEquipoEdit.ParamByName('equipo_id').AsInteger  := dmMain.dsEquipo.DataSet.FieldByName('equipo_id').AsInteger;
                dmMain.qryEquipoEdit.Open;
                dmMain.qryEquipoEdit.Edit;
                if frmEquipo.ShowModal = mrOk then
                   if actConsultarEquipoActivo.Enabled then
                      begin
                           actConsultarEquipoActivo.Execute;
                           if dmMain.dsEquipo.DataSet.BookmarkValid(bmk) then
                              dmMain.dsEquipo.DataSet.GotoBookmark(bmk);
                      end;
             finally
                    if dmMain.dsEquipo.DataSet.BookmarkValid(bmk) then
                       dmMain.dsEquipo.DataSet.FreeBookmark(bmk);
                    FreeAndNil(frmEquipo);
             end;
        end;
end;

procedure TfrmPrincipal.actModificarMovtoExecute(Sender: TObject);
var
   bmk : TBookmark;
begin
     if not dmMain.dsMovtosAlmacen.DataSet.IsEmpty then
        begin
             try
                bmk := dmMain.dsMovtosAlmacen.DataSet.GetBookmark;
                frmMovtosAlmacen := TfrmMovtosAlmacen.Create(Self);
                dmMain.qryMovtosAlmacenEdit.Close;
                dmMain.qryMovtosAlmacenEdit.ParamByName('empresa_id').AsInteger := _Globales.Empresa;
                dmMain.qryMovtosAlmacenEdit.ParamByName('id_movto_almacen').AsInteger  := dmMain.dsMovtosAlmacen.DataSet.FieldByName('id_movto_almacen').AsInteger;
                dmMain.qryMovtosAlmacenEdit.Open;
                dmMain.qryMovtosAlmacenEdit.Edit;
                if frmMovtosAlmacen.ShowModal = mrOk then
                   if actConsultarMovtosActivos.Enabled then
                      begin
                           actConsultarMovtosActivos.Execute;
                           if dmMain.dsMovtosAlmacen.DataSet.BookmarkValid(bmk) then
                              dmMain.dsMovtosAlmacen.DataSet.GotoBookmark(bmk);
                      end;
             finally
                    if dmMain.dsMovtosAlmacen.DataSet.BookmarkValid(bmk) then
                       dmMain.dsMovtosAlmacen.DataSet.FreeBookmark(bmk);
                    FreeAndNil(frmMovtosAlmacen);
             end;
        end;
end;

procedure TfrmPrincipal.actModificarServicioExecute(Sender: TObject);
var
   bmk : TBookmark;
begin
     if not dmMain.dsServicios.DataSet.IsEmpty then
        begin
             try
                bmk := dmMain.dsServicios.DataSet.GetBookmark;
                frmServicios := TfrmServicios.Create(Self);
                dmMain.qryServiciosEdit.Close;
                dmMain.qryServiciosEdit.ParamByName('servicio_id').AsString := dmMain.dsServicios.DataSet.FieldByName('servicio_id').AsString;
                dmMain.qryServiciosEdit.Open;
                dmMain.qryServiciosEdit.Edit;
                if frmServicios.ShowModal = mrOk then
                   if actConsultarServiciosActivos.Enabled then
                      begin
                           actConsultarServiciosActivos.Execute;
                           if dmMain.dsServicios.DataSet.BookmarkValid(bmk) then
                              dmMain.dsServicios.DataSet.GotoBookmark(bmk);
                      end;
             finally
                    if dmMain.dsServicios.DataSet.BookmarkValid(bmk) then
                       dmMain.dsServicios.DataSet.FreeBookmark(bmk);
                    FreeAndNil(frmServicios);
             end;
        end;
end;

procedure TfrmPrincipal.actModificarVehiculoExecute(Sender: TObject);
var
   bmk : TBookmark;
begin
     if not dmMain.dsVehiculos.DataSet.IsEmpty then
        begin
             try
                bmk := dmMain.dsVehiculos.DataSet.GetBookmark;
                frmVehiculos := TfrmVehiculos.Create(Self);
                dmMain.qryVehiculosEdit.Close;
                dmMain.qryVehiculosEdit.ParamByName('empresa_id').AsInteger  := _Globales.Empresa;
                dmMain.qryVehiculosEdit.ParamByName('vehiculo_id').AsInteger := dmMain.dsVehiculos.DataSet.FieldByName('vehiculo_id').AsInteger;
                dmMain.qryVehiculosEdit.Open;
                dmMain.qryVehiculosEdit.Edit;
                if frmVehiculos.ShowModal = mrOk then
                   if actConsultarVehiculosActivos.Enabled then
                      begin
                           actConsultarVehiculosActivos.Execute;
                           if dmMain.dsVehiculos.DataSet.BookmarkValid(bmk) then
                              dmMain.dsVehiculos.DataSet.GotoBookmark(bmk);
                      end;
             finally
                    if dmMain.dsVehiculos.DataSet.BookmarkValid(bmk) then
                       dmMain.dsVehiculos.DataSet.FreeBookmark(bmk);
                    FreeAndNil(frmVehiculos);
             end;
        end;
end;

procedure TfrmPrincipal.actPermisosExecute(Sender: TObject);
begin
     if not dmMain.dsUsuarios.DataSet.IsEmpty then
        try
           frmPermisos := TfrmPermisos.Create(Self);
           dmMain.CargaPermisos(dmMain.dsUsuarios.DataSet.FieldByName('clave').AsString);
           frmPermisos.ShowModal;
        finally
               FreeAndNil(frmPermisos);
        end;
end;

procedure TfrmPrincipal.actProgramarServiciosExecute(Sender: TObject);
var
   k : Integer;
begin
     if MessageDlg('¿Generar la programación de Servicios de la semana del ' + FormatDateTime('dd/mm/yyyy',StartOfTheWeek(xFechaProgramacion.Date)) + ' al ' + FormatDateTime('dd/mm/yyyy',EndOfTheWeek(xFechaProgramacion.Date)) + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
             k := dmMain.ProgramarServicios(_Globales.Empresa,StartOfTheWeek(xFechaProgramacion.Date));
             if k > 0 then
                MessageDlg('Se ha generado la programación de la semana del ' + FormatDateTime('dd/mm/yyyy',StartOfTheWeek(xFechaProgramacion.Date)) + ' al ' + FormatDateTime('dd/mm/yyyy',EndOfTheWeek(xFechaProgramacion.Date)) +
                           ' correctamente' + #13 + #10 + '(' + IntToStr(k) + ' servicios)', mtInformation, [mbOk], 0);
             if k = 0 then
                MessageDlg('Ya se ha generado la programación de la semana del ' + FormatDateTime('dd/mm/yyyy',StartOfTheWeek(xFechaProgramacion.Date)) + ' al ' + FormatDateTime('dd/mm/yyyy',EndOfTheWeek(xFechaProgramacion.Date)), mtInformation, [mbOk], 0);
        end;
end;

procedure TfrmPrincipal.actReingresoExecute(Sender: TObject);
begin
     if not dmMain.dsEmpleados.DataSet.IsEmpty then
        begin
             dmMain.ReingresoEmpleado(_Globales.Empresa, dmMain.cdsEmpleados.FieldByName('empleado_id').AsInteger);
             actConsultarEmpleadosInactivos.Execute;
        end;
end;

procedure TfrmPrincipal.actVerClienteExecute(Sender: TObject);
begin
     if not dmMain.dsClientes.DataSet.IsEmpty then
        begin
             try
                frmClientes := TfrmClientes.Create(Self);
                dmMain.qryClientesEdit.Close;
                dmMain.qryClientesEdit.ParamByName('cliente_id').AsString := dmMain.dsClientes.DataSet.FieldByName('cliente_id').AsString;
                dmMain.qryClientesEdit.Open;
                frmClientes.ShowModal;
             finally
                    FreeAndNil(frmClientes);
             end;
        end;
end;

procedure TfrmPrincipal.actVerEmpleadoExecute(Sender: TObject);
begin
     if not dmMain.dsEmpleados.DataSet.IsEmpty then
        begin
             try
                frmEmpleados := TfrmEmpleados.Create(Self);

                dmMain.qryEmpleadosEdit.Close;
                dmMain.qryEmpleadosEdit.ParamByName('empleado_id').AsInteger := dmMain.dsEmpleados.DataSet.FieldByName('empleado_id').AsInteger;
                dmMain.qryEmpleadosEdit.Open;

                dmMain.qryEmpleadosCursosEdit.Close;
                dmMain.qryEmpleadosCursosEdit.ParamByName('empresa_id').AsInteger := dmMain.dsEmpleadosEdit.DataSet.FieldByName('empresa_id').AsInteger;
                dmMain.qryEmpleadosCursosEdit.ParamByName('empleado_id').AsInteger := dmMain.dsEmpleadosEdit.DataSet.FieldByName('empleado_id').AsInteger;
                dmMain.qryEmpleadosCursosEdit.Open;

                dmMain.qryEmpleadosSocioEconomicoEdit.Close;
                dmMain.qryEmpleadosSocioEconomicoEdit.ParamByName('empresa_id').AsInteger := dmMain.dsEmpleadosEdit.DataSet.FieldByName('empresa_id').AsInteger;
                dmMain.qryEmpleadosSocioEconomicoEdit.ParamByName('empleado_id').AsInteger := dmMain.dsEmpleadosEdit.DataSet.FieldByName('empleado_id').AsInteger;
                dmMain.qryEmpleadosSocioEconomicoEdit.Open;

                frmEmpleados.ShowModal;
             finally
                    FreeAndNil(frmEmpleados);
             end;
        end;
end;

procedure TfrmPrincipal.actVerEquipoExecute(Sender: TObject);
begin
     if not dmMain.dsEquipo.DataSet.IsEmpty then
        begin
             try
                frmEquipo := TfrmEquipo.Create(Self);
                dmMain.qryEquipoEdit.Close;
                dmMain.qryEquipoEdit.ParamByName('empresa_id').AsInteger := _Globales.Empresa;
                dmMain.qryEquipoEdit.ParamByName('equipo_id').AsInteger  := dmMain.dsEquipo.DataSet.FieldByName('equipo_id').AsInteger;
                dmMain.qryEquipoEdit.Open;
                frmEquipo.ShowModal;
             finally
                    FreeAndNil(frmEquipo);
             end;
        end;
end;

procedure TfrmPrincipal.actVerMovtoExecute(Sender: TObject);
begin
     if not dmMain.dsMovtosAlmacen.DataSet.IsEmpty then
        begin
             try
                frmMovtosAlmacen := TfrmMovtosAlmacen.Create(Self);
                dmMain.qryMovtosAlmacenEdit.Close;
                dmMain.qryMovtosAlmacenEdit.ParamByName('empresa_id').AsInteger := _Globales.Empresa;
                dmMain.qryMovtosAlmacenEdit.ParamByName('id_movto_almacen').AsInteger := dmMain.dsMovtosAlmacen.DataSet.FieldByName('id_movto_almacen').AsInteger;
                dmMain.qryMovtosAlmacenEdit.Open;
                frmMovtosAlmacen.ShowModal;
             finally
                    FreeAndNil(frmMovtosAlmacen);
             end;
        end;
end;

procedure TfrmPrincipal.actVerServicioExecute(Sender: TObject);
begin
     if not dmMain.dsServicios.DataSet.IsEmpty then
        begin
             try
                frmServicios := TfrmServicios.Create(Self);
                dmMain.qryServiciosEdit.Close;
                dmMain.qryServiciosEdit.ParamByName('servicio_id').AsString := dmMain.dsServicios.DataSet.FieldByName('servicio_id').AsString;
                dmMain.qryServiciosEdit.Open;
                frmServicios.ShowModal;
             finally
                    FreeAndNil(frmServicios);
             end;
        end;
end;

procedure TfrmPrincipal.actVerVehiculoExecute(Sender: TObject);
begin
     if not dmMain.dsVehiculos.DataSet.IsEmpty then
        begin
             try
                frmVehiculos := TfrmVehiculos.Create(Self);
                dmMain.qryVehiculosEdit.Close;
                dmMain.qryVehiculosEdit.ParamByName('empresa_id').AsInteger  := _Globales.Empresa;
                dmMain.qryVehiculosEdit.ParamByName('vehiculo_id').AsInteger := dmMain.dsVehiculos.DataSet.FieldByName('vehiculo_id').AsInteger;
                dmMain.qryVehiculosEdit.Open;
                frmVehiculos.ShowModal;
             finally
                    FreeAndNil(frmVehiculos);
             end;
        end;
end;

procedure TfrmPrincipal.cxSplitter1AfterOpen(Sender: TObject);
begin
     if not dmMain.dsEmpleados.DataSet.IsEmpty then
        dmMain.CargaDetalleEmpleado(_Globales.Empresa, dmMain.cdsEmpleados.FieldByName('empleado_id').AsInteger);
end;

procedure TfrmPrincipal.dxRibbon1TabChanging(Sender: TdxCustomRibbon; ANewTab: TdxRibbonTab; var Allow: Boolean);
begin
     if Assigned(dmMain) then
        begin
             if ANewTab.Caption = 'EMPLEADOS' then
                begin
                     cxGridMainLevelMain.GridView := ViewEmpleados;
                     ViewEmpleados.Controller.ShowFindPanel;
                end;

             if ANewTab.Caption = 'CLIENTES' then
                cxGridMainLevelMain.GridView := ViewClientes;

             if ANewTab.Caption = 'SERVICIOS' then
                begin
                     cxGridMainLevelMain.GridView := ViewServicios;
                     ViewServicios.Controller.ShowFindPanel;
                end;

             if ANewTab.Caption = 'ASISTENCIA' then
                cxGridMainLevelMain.GridView := ViewAsistenciaCaptura;

             if ANewTab.Caption = 'VEHÍCULOS' then
                cxGridMainLevelMain.GridView := ViewVehiculos;

             if ANewTab.Caption = 'EQUIPO Y ACCESORIOS' then
                begin
                     cxGridMainLevelMain.GridView := ViewEquipo;
                     ViewEquipo.Controller.ShowFindPanel;
                end;

             if ANewTab.Caption = 'ALMACÉN' then
                cxGridMainLevelMain.GridView := ViewAlmacen;

             if ANewTab.Caption = 'USUARIOS / PERMISOS' then
                cxGridMainLevelMain.GridView := ViewUsuarios;
        end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
   IniFile : TIniFile;
begin
  DisableAero := True;

  _Globales.Usuario := 'ADMIN';

  // Se crea la forma Splash
  frmSplash := TfrmSplash.Create(Self);
  frmSplash.Show;
  frmSplash.Update;

  frmWaitForm := TfrmWaitForm.Create(Self);

  dmMain := TdmMain.Create(Self);
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
  try
     try
        dmMain.ZConnection1.HostName := IniFile.ReadString('bd','host','');
        dmMain.ZConnection1.User := IniFile.ReadString('bd','user','');
        dmMain.ZConnection1.Password := IniFile.ReadString('bd','pass','');
        dmMain.ZConnection1.Database := IniFile.ReadString('bd','database','');
        dmMain.ZConnection1.LibraryLocation := '.\libpq.dll';
        dmMain.ZConnection1.Connect;
     Except
           on e:exception do
              raise Exception.Create('Error al conectarse con la base de datos. ' + e.Message);
     end;
  finally
        IniFile.Free;
  end;

  dmMain.CargaDatasetsAuxiliares;

  dxRibbonStatusBar1.Panels[0].Text := FormatDateTime('dd mmmm yyyy',Now);
  dxRibbonStatusBar1.Panels[2].Text := dmMain.ZConnection1.HostName + ' ~ ' + dmMain.ZConnection1.Database;
  frmPrincipal.Caption := frmPrincipal.Caption + '  v.' + _VERSION;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
     ViewEmpleados.DataController.DataSource := dmMain.dsEmpleados;
     ViewClientes.DataController.DataSource  := dmMain.dsClientes;
     ViewServicios.DataController.DataSource := dmMain.dsServicios;
     ViewUsuarios.DataController.DataSource  := dmMain.dsUsuarios;
     ViewVehiculos.DataController.DataSource := dmMain.dsVehiculos;

     // Se cierra la forma Splash
     frmSplash.Close;
     frmSplash.Free;

     frmLogin := TfrmLogin.Create(Self);
     if frmLogin.ShowModal = mrCancel then
        Halt(0);

     if _Globales.Usuario <> 'ADMIN' then
        dmMain.CargaPermisosAcciones(ActionList1,_Globales.Usuario)
     else
         dmMain.RegistraAcciones(ActionList1);
     dxRibbonStatusBar1.Panels[1].Text := _Globales.Usuario;
     dxRibbonStatusBar1.Panels[3].Text := '(' + IntToStr(_Globales.Empresa) + ') ' + _Globales.EmpresaDescripcion;

     actReingreso.Visible := False;

     xFechaProgramacion.Date := Now;
     xFechaAsistenciaIni.Date := StartOfTheWeek(Now);
     xFechaAsistenciaFin.Date := EndOfTheWeek(Now);

     ViewEmpleados.Controller.ShowFindPanel;
end;

procedure TfrmPrincipal.HideWaitForm;
begin
     frmWaitForm.Hide;
end;

procedure TfrmPrincipal.ShowWaitForm;
begin
     frmWaitForm.Show;
     frmWaitForm.Update;
end;

procedure TfrmPrincipal.ViewEmpleadosCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
     if actVerEmpleado.Enabled then
        actVerEmpleado.Execute;
end;

procedure TfrmPrincipal.ViewEquipoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
     if actVerEquipo.Enabled then
        actVerEquipo.Execute;
end;

procedure TfrmPrincipal.ViewServiciosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
     if actVerServicio.Enabled then
        actVerServicio.Execute;
end;

procedure TfrmPrincipal.ViewVehiculosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
     if actVerVehiculo.Enabled then
        actVerVehiculo.Execute;
end;

procedure TfrmPrincipal.ViewAsistenciaCapturaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
     if not dmMain.dsAsistencia.DataSet.IsEmpty then
        try
           frmAsistencia := TfrmAsistencia.Create(Self);
           frmAsistencia.pAnio := dmMain.dsAsistencia.DataSet.FieldByName('anio').AsInteger;
           frmAsistencia.pMes  := dmMain.dsAsistencia.DataSet.FieldByName('mes').AsInteger;
           frmAsistencia.pDia  := dmMain.dsAsistencia.DataSet.FieldByName('dia').AsInteger;
           frmAsistencia.CargaAsistencia;
           frmAsistencia.ShowModal;
        finally
               FreeAndNil(frmAsistencia);
        end;
end;

procedure TfrmPrincipal.ViewClientesCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
     if actVerCliente.Enabled then
        actVerCliente.Execute;
end;

procedure TfrmPrincipal.ViewElementosTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(Sender: TcxDataSummaryItem; const AValue: Variant;
  AIsFooter: Boolean; var AText: string);
begin
     AText := 'empleados';
end;

end.

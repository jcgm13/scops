unit fServicios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxSkinsCore, dxSkinOffice2010Black, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxEdit, cxDBLookupComboBox, cxCalendar, cxCheckBox, cxImageComboBox, cxRadioGroup, cxTextEdit, cxCurrencyEdit, cxContainer,
  Vcl.Menus, Data.DB, Vcl.ActnList, Vcl.StdCtrls, cxButtons, cxGroupBox, cxDBEdit, Vcl.ExtCtrls, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxHyperLinkEdit, StrUtils, cxMaskEdit, cxDropDownEdit, cxMemo, cxLookupEdit, cxDBLookupEdit,
  dxSkinDevExpressStyle, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxGridBandedTableView, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator, cxDateNavigator, cxLabel,
  Vcl.Grids, Vcl.DBGrids, cxButtonEdit, cxGridDBBandedTableView, DateUtils, dxToggleSwitch, dxBar, dxRibbon, dxSkinBlue,
  dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinOffice2013LightGray, System.Actions;

type
  TfrmServicios = class(TForm)
    Panel2: TPanel;
    xservicio_id: TcxDBTextEdit;
    xdescripcion: TcxDBTextEdit;
    Panel1: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ActionList1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    actExpandir: TAction;
    actContraer: TAction;
    xcliente_id: TcxDBLookupComboBox;
    cxButton3: TcxButton;
    actCopiarInfoCliente: TAction;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    vGridServicios: TcxDBVerticalGrid;
    vGridServiciosCategoryRow1: TcxCategoryRow;
    vGridServiciosDBEditorRow4: TcxDBEditorRow;
    vGridServiciosDBEditorRow2: TcxDBEditorRow;
    vGridServiciosDBEditorRow3: TcxDBEditorRow;
    vGridServiciosDBEditorRow6: TcxDBEditorRow;
    vGridServiciosDBEditorRow7: TcxDBEditorRow;
    vGridServiciosDBEditorRow8: TcxDBEditorRow;
    vGridServiciosDBEditorRow9: TcxDBEditorRow;
    vGridServiciosDBEditorRow10: TcxDBEditorRow;
    vGridServiciosDBEditorRow11: TcxDBEditorRow;
    vGridServiciosDBEditorRow12: TcxDBEditorRow;
    vGridServiciosDBEditorRow1: TcxDBEditorRow;
    vGridServiciosDBEditorRow33: TcxDBEditorRow;
    vGridServiciosDBEditorRow34: TcxDBEditorRow;
    vGridServiciosCategoryRow3: TcxCategoryRow;
    vGridServiciosDBEditorRow19: TcxDBEditorRow;
    vGridServiciosDBEditorRow20: TcxDBEditorRow;
    vGridServiciosDBEditorRow21: TcxDBEditorRow;
    vGridServiciosDBEditorRow23: TcxDBEditorRow;
    vGridServiciosDBEditorRow46: TcxDBEditorRow;
    vGridServiciosDBEditorRow5: TcxDBEditorRow;
    cxTabSheet4: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridLevel2: TcxGridLevel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    Panel3: TPanel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    actAgregarFuncion: TAction;
    actModificarFuncion: TAction;
    actEliminarFuncion: TAction;
    Panel4: TPanel;
    xfecha: TcxDateNavigator;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    actLimpiarSemana: TAction;
    actMarcarSemana: TAction;
    actProgramarDiurno: TAction;
    actProgramarNocturno: TAction;
    actProgramar24T1: TAction;
    actProgramar24T2: TAction;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    actConsultarFuncion: TAction;
    cxButton15: TcxButton;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column5: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column6: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column7: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column8: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column9: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column10: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column11: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column12: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column13: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column14: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column15: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column16: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column17: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column18: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column19: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column20: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column21: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column22: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column23: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column24: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column25: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1Column26: TcxGridDBBandedColumn;
    cxLabel1: TcxLabel;
    lblSemana: TcxLabel;
    cxTabSheet5: TcxTabSheet;
    Panel5: TPanel;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumnEquipoId: TcxGridDBColumn;
    cxGridDBColumnTipo: TcxGridDBColumn;
    cxGridDBColumnDescripcion: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    actAgregarEquipo: TAction;
    actEliminarEquipo: TAction;
    Panel6: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGridDBTableView2ColumnMarca: TcxGridDBColumn;
    cxGridDBTableView2ColumnModelo: TcxGridDBColumn;
    cxGridDBTableView2ColumnCantidad: TcxGridDBColumn;
    actAumentarEquipo: TAction;
    actDisminuirEquipo: TAction;
    dxRibbonPopupMenuEquipo: TdxRibbonPopupMenu;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    procedure actGuardarExecute(Sender: TObject);
    procedure xdescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure actCerrarExecute(Sender: TObject);
    procedure actExpandirExecute(Sender: TObject);
    procedure actContraerExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCopiarInfoClienteExecute(Sender: TObject);
    procedure cxDBImageComboBox1Enter(Sender: TObject);
    procedure cxPageControl1PageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure actAgregarFuncionExecute(Sender: TObject);
    procedure actModificarFuncionExecute(Sender: TObject);
    procedure actConsultarFuncionExecute(Sender: TObject);
    procedure actEliminarFuncionExecute(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure xfechaClick(Sender: TObject);
    procedure cxGridDBTableView1Column6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actLimpiarSemanaExecute(Sender: TObject);
    procedure actMarcarSemanaExecute(Sender: TObject);
    procedure actProgramarDiurnoExecute(Sender: TObject);
    procedure actProgramarNocturnoExecute(Sender: TObject);
    procedure actProgramar24T1Execute(Sender: TObject);
    procedure actProgramar24T2Execute(Sender: TObject);
    procedure actAgregarEquipoExecute(Sender: TObject);
    procedure actAumentarEquipoExecute(Sender: TObject);
    procedure actDisminuirEquipoExecute(Sender: TObject);
    procedure actEliminarEquipoExecute(Sender: TObject);
  private
    { Private declarations }
    AnioSel, SemanaSel : Integer;
    function Validate : Boolean;
    procedure RevisaAccionesFunciones;
    procedure CargaPreasignacion;
  public
    { Public declarations }
  end;

var
  frmServicios: TfrmServicios;

implementation

{$R *.dfm}

uses dMain, fPrincipal, uGlobales, fServiciosFunciones, fSeleccionEmpleados, fSeleccionEquipo;

procedure TfrmServicios.actAgregarEquipoExecute(Sender: TObject);
begin
     frmSeleccionEquipo := TfrmSeleccionEquipo.Create(Nil);
     frmSeleccionEquipo.ServicioId := xservicio_id.Text;
     if frmSeleccionEquipo.ShowModal = mrOk then
        begin
             dmMain.AsignaEquipoServicio(_Globales.Empresa,
                                         xservicio_id.Text,
                                         EquipoSeleccionado
                                        );
             dmMain.CargaEquipoServicio(_Globales.Empresa,xservicio_id.Text);
        end;
end;

procedure TfrmServicios.actAgregarFuncionExecute(Sender: TObject);
begin
     try
        frmServiciosFunciones := TfrmServiciosFunciones.Create(Nil);
        dmMain.qryServiciosFuncionesEdit.Close;
        dmMain.qryServiciosFuncionesEdit.ParamByName('empresa_id').AsInteger := dmMain.dsServiciosEdit.DataSet.FieldByName('empresa_id').AsInteger;
        dmMain.qryServiciosFuncionesEdit.ParamByName('servicio_id').AsString := dmMain.dsServiciosEdit.DataSet.FieldByName('servicio_id').AsString;
        dmMain.qryServiciosFuncionesEdit.ParamByName('funcion_id').AsInteger := 0;
        dmMain.qryServiciosFuncionesEdit.Open;
        dmMain.dsServiciosFuncionesEdit.DataSet.Insert;
        if frmServiciosFunciones.ShowModal = mrOk then
           begin
                dmMain.CargaFunciones(_Globales.Empresa,xservicio_id.Text);
                dmMain.CargaFuncionesEmpleados(_Globales.Empresa,xservicio_id.Text);
           end;
     finally
            RevisaAccionesFunciones;
            FreeAndNil(frmServiciosFunciones);
     end;
end;

procedure TfrmServicios.actAumentarEquipoExecute(Sender: TObject);
begin
     if not dmMain.dsServiciosEquipo.DataSet.IsEmpty then
        begin
             dmMain.MovimientoEquipo(_Globales.Empresa,
                                     xservicio_id.Text,
                                     dmMain.dsServiciosEquipo.DataSet.FieldByName('equipo_id').AsInteger,
                                     '+'
                                    );
             dmMain.CargaEquipoServicio(_Globales.Empresa,xservicio_id.Text);
        end;
end;

procedure TfrmServicios.actCerrarExecute(Sender: TObject);
begin
     if dmMain.dsServiciosEdit.DataSet.State in [dsInsert, dsEdit] then
        dmMain.dsServiciosEdit.DataSet.Cancel;
     ModalResult := mrCancel;
end;

procedure TfrmServicios.actConsultarFuncionExecute(Sender: TObject);
begin
     if not dmMain.dsServiciosFunciones.DataSet.IsEmpty then
         try
            frmServiciosFunciones := TfrmServiciosFunciones.Create(Nil);
            dmMain.qryServiciosFuncionesEdit.Close;
            dmMain.qryServiciosFuncionesEdit.ParamByName('empresa_id').AsInteger := dmMain.dsServiciosEdit.DataSet.FieldByName('empresa_id').AsInteger;
            dmMain.qryServiciosFuncionesEdit.ParamByName('servicio_id').AsString := dmMain.dsServiciosEdit.DataSet.FieldByName('servicio_id').AsString;
            dmMain.qryServiciosFuncionesEdit.ParamByName('funcion_id').AsInteger := dmMain.dsServiciosFunciones.DataSet.FieldByName('funcion').AsInteger;
            dmMain.qryServiciosFuncionesEdit.Open;
            if frmServiciosFunciones.ShowModal = mrOk then
               dmMain.CargaFunciones(_Globales.Empresa,xservicio_id.Text);
         finally
                FreeAndNil(frmServiciosFunciones);
         end;
end;

procedure TfrmServicios.actContraerExecute(Sender: TObject);
begin
     vGridServicios.FullCollapse;
end;

procedure TfrmServicios.actCopiarInfoClienteExecute(Sender: TObject);
begin
     if xcliente_id.EditValue <> Null then
        dmMain.CopiarInfoCliente(_Globales.Empresa, xcliente_id.EditValue);
end;

procedure TfrmServicios.actDisminuirEquipoExecute(Sender: TObject);
begin
     if not dmMain.dsServiciosEquipo.DataSet.IsEmpty then
        if dmMain.dsServiciosEquipo.DataSet.FieldByName('cantidad').AsInteger > 1 then
           begin
                dmMain.MovimientoEquipo(_Globales.Empresa,
                                        xservicio_id.Text,
                                        dmMain.dsServiciosEquipo.DataSet.FieldByName('equipo_id').AsInteger,
                                        '-'
                                       );
                dmMain.CargaEquipoServicio(_Globales.Empresa,xservicio_id.Text);
           end;
end;

procedure TfrmServicios.actEliminarEquipoExecute(Sender: TObject);
begin
     if not dmMain.dsServiciosEquipo.DataSet.IsEmpty then
        if MessageDlg('¿Está seguro de eliminar este equipo del servicio?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
                dmMain.EliminarEquipo(_Globales.Empresa,
                                      xservicio_id.Text,
                                      dmMain.dsServiciosEquipo.DataSet.FieldByName('equipo_id').AsInteger
                                     );
                dmMain.CargaEquipoServicio(_Globales.Empresa,xservicio_id.Text);
           end;
end;

procedure TfrmServicios.actEliminarFuncionExecute(Sender: TObject);
begin
     if not dmMain.dsServiciosFunciones.DataSet.IsEmpty then
        if MessageDlg('¿Está seguro de eliminar la función del servicio?',mtConfirmation,mbYesNo,0) = mrYes then
           try
              try
                 dmMain.EliminarFuncion(
                                        dmMain.dsServiciosEdit.DataSet.FieldByName('empresa_id').AsInteger,
                                        dmMain.dsServiciosEdit.DataSet.FieldByName('servicio_id').AsString,
                                        dmMain.dsServiciosFunciones.DataSet.FieldByName('funcion').AsInteger
                                       );
                 dmMain.CargaFunciones(_Globales.Empresa,xservicio_id.Text);
                 dmMain.CargaFuncionesEmpleados(_Globales.Empresa,xservicio_id.Text);
              Except
                    on e:Exception do
                       raise Exception.Create('Error en TfrmServicios.actEliminarExecute. ' + e.Message);
              end;
           finally
                  RevisaAccionesFunciones;
           end;
end;

procedure TfrmServicios.actExpandirExecute(Sender: TObject);
begin
     vGridServicios.FullExpand;
end;

procedure TfrmServicios.actGuardarExecute(Sender: TObject);
begin
     if dmMain.dsServiciosEdit.DataSet.State in [dsInsert, dsEdit] then
        if Validate then
           begin
                dmMain.dsServiciosEdit.DataSet.Post;
                ModalResult := mrOk;
           end;
end;

procedure TfrmServicios.actLimpiarSemanaExecute(Sender: TObject);
begin
     dmMain.Preasignacion_LimpiarSemana(
                                        dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('servicio_id').AsString,
                                        dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('empresa_id').AsInteger,
                                        dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('funcion_id').AsInteger,
                                        dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('asignacion_id').AsInteger,
                                        YearOf(xfecha.Date),
                                        WeekOfTheYear(xfecha.Date),
                                        StartOfTheWeek(xfecha.Date)
                                       );
end;

procedure TfrmServicios.actMarcarSemanaExecute(Sender: TObject);
begin
     dmMain.Preasignacion_MarcarSemana(
                                       dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('servicio_id').AsString,
                                       dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('empresa_id').AsInteger,
                                       dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('funcion_id').AsInteger,
                                       dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('asignacion_id').AsInteger,
                                       YearOf(xfecha.Date),
                                       WeekOfTheYear(xfecha.Date),
                                       StartOfTheWeek(xfecha.Date)
                                      );
end;

procedure TfrmServicios.actModificarFuncionExecute(Sender: TObject);
begin
     if not dmMain.dsServiciosFunciones.DataSet.IsEmpty then
         try
            frmServiciosFunciones := TfrmServiciosFunciones.Create(Nil);
            dmMain.qryServiciosFuncionesEdit.Close;
            dmMain.qryServiciosFuncionesEdit.ParamByName('empresa_id').AsInteger := dmMain.dsServiciosEdit.DataSet.FieldByName('empresa_id').AsInteger;
            dmMain.qryServiciosFuncionesEdit.ParamByName('servicio_id').AsString := dmMain.dsServiciosEdit.DataSet.FieldByName('servicio_id').AsString;
            dmMain.qryServiciosFuncionesEdit.ParamByName('funcion_id').AsInteger := dmMain.dsServiciosFunciones.DataSet.FieldByName('funcion').AsInteger;
            dmMain.qryServiciosFuncionesEdit.Open;
            dmMain.dsServiciosFuncionesEdit.DataSet.Edit;
            if frmServiciosFunciones.ShowModal = mrOk then
               begin
                    dmMain.CargaFunciones(_Globales.Empresa,xservicio_id.Text);
                    dmMain.CargaFuncionesEmpleados(_Globales.Empresa,xservicio_id.Text);
               end;
         finally
                RevisaAccionesFunciones;
                FreeAndNil(frmServiciosFunciones);
         end;
end;

procedure TfrmServicios.actProgramar24T1Execute(Sender: TObject);
begin
     dmMain.Preasignacion_Programar24hT1(
                                         dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('servicio_id').AsString,
                                         dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('empresa_id').AsInteger,
                                         dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('funcion_id').AsInteger,
                                         dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('asignacion_id').AsInteger,
                                         YearOf(xfecha.Date),
                                         WeekOfTheYear(xfecha.Date),
                                         StartOfTheWeek(xfecha.Date)
                                        );
end;

procedure TfrmServicios.actProgramar24T2Execute(Sender: TObject);
begin
     dmMain.Preasignacion_Programar24hT2(
                                         dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('servicio_id').AsString,
                                         dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('empresa_id').AsInteger,
                                         dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('funcion_id').AsInteger,
                                         dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('asignacion_id').AsInteger,
                                         YearOf(xfecha.Date),
                                         WeekOfTheYear(xfecha.Date),
                                         StartOfTheWeek(xfecha.Date)
                                        );
end;

procedure TfrmServicios.actProgramarDiurnoExecute(Sender: TObject);
begin
     dmMain.Preasignacion_ProgramarDiurno(
                                          dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('servicio_id').AsString,
                                          dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('empresa_id').AsInteger,
                                          dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('funcion_id').AsInteger,
                                          dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('asignacion_id').AsInteger,
                                          YearOf(xfecha.Date),
                                          WeekOfTheYear(xfecha.Date),
                                          StartOfTheWeek(xfecha.Date)
                                         );
end;

procedure TfrmServicios.actProgramarNocturnoExecute(Sender: TObject);
begin
     dmMain.Preasignacion_ProgramarNocturno(
                                            dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('servicio_id').AsString,
                                            dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('empresa_id').AsInteger,
                                            dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('funcion_id').AsInteger,
                                            dmMain.dsServiciosPreasignacionSemanal.DataSet.FieldByName('asignacion_id').AsInteger,
                                            YearOf(xfecha.Date),
                                            WeekOfTheYear(xfecha.Date),
                                            StartOfTheWeek(xfecha.Date)
                                           );
end;

procedure TfrmServicios.CargaPreasignacion;
begin
//     if (SemanaSel <> WeekOfTheYear(xfecha.Date)) or (AnioSel <> YearOf(xfecha.Date)) then
//        begin
             dmMain.CargaPreasignacionSemanal(_Globales.Empresa,
                                              xservicio_id.Text,
                                              YearOf(xfecha.Date),
                                              WeekOfTheYear(xfecha.Date));
             lblSemana.Caption := FormatDateTime('"del" dd "de" mmmm "del" yyyy',StartOfTheWeek(xfecha.Date)) + '  al  ' + FormatDateTime('dd "de" mmmm "del" yyyy',EndOfTheWeek(xfecha.Date));
//        end;

     SemanaSel := WeekOfTheYear(xfecha.Date);
     AnioSel   := YearOf(xfecha.Date);
end;

procedure TfrmServicios.cxDBImageComboBox1Enter(Sender: TObject);
begin
     SelectNext(ActiveControl,True,True)
end;

procedure TfrmServicios.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
     actConsultarFuncion.Execute;
end;

procedure TfrmServicios.cxGridDBTableView1Column6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
     case AButtonIndex of
          0 :
            begin
                 frmSeleccionEmpleados := TfrmSeleccionEmpleados.Create(Nil);
                 if frmSeleccionEmpleados.ShowModal = mrOk then
                    dmMain.AsignaEmpleadoFuncion(_Globales.Empresa,
                                                 xservicio_id.Text,
                                                 EmpleadoSeleccionado,
                                                 dmMain.dsServiciosFuncionesEmpleados.DataSet.FieldByName('funcion').AsInteger,
                                                 dmMain.dsServiciosFuncionesEmpleados.DataSet.FieldByName('asignacion_id').AsInteger
                                                );
            end;
         1 :
           begin
                if MessageDlg('¿Está seguro de quitar la asignación de este empleado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                   dmMain.QuitaAsignacionEmpleadoFuncion(
                                                         _Globales.Empresa,
                                                         xservicio_id.Text,
                                                         dmMain.dsServiciosFuncionesEmpleados.DataSet.FieldByName('empleado_id').AsInteger,
                                                         dmMain.dsServiciosFuncionesEmpleados.DataSet.FieldByName('funcion').AsInteger,
                                                         dmMain.dsServiciosFuncionesEmpleados.DataSet.FieldByName('asignacion_id').AsInteger
                                                        );
           end;
     end;

     dmMain.CargaFuncionesEmpleados(_Globales.Empresa,xservicio_id.Text);
end;

procedure TfrmServicios.cxPageControl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
     cxButton1.Visible := NewPage.TabIndex = 0;
     cxButton2.Visible := NewPage.TabIndex = 0;
     if NewPage.TabIndex = 3 then
        CargaPreasignacion;
end;

procedure TfrmServicios.FormCreate(Sender: TObject);
begin
     dmMain.qryServiciosEdit.Open;
     vGridServicios.FullExpand;
end;

procedure TfrmServicios.FormShow(Sender: TObject);
begin
     if dmMain.dsServiciosEdit.DataSet.State = dsInsert then
        Caption := 'Servicios (nuevo)';
     if dmMain.dsServiciosEdit.DataSet.State = dsEdit then
        Caption := 'Servicios (modificar)';
     if dmMain.dsServiciosEdit.DataSet.State = dsBrowse then
        Caption := 'Servicios (consultar)';

     xfecha.Date := Now;
     AnioSel     := YearOf(xfecha.Date);
     SemanaSel   := WeekOfTheYear(xfecha.Date);

     if dmMain.dsServiciosEdit.DataSet.State in [dsEdit,dsBrowse] then
        begin
             dmMain.CargaFunciones(_Globales.Empresa,xservicio_id.Text);
             dmMain.CargaFuncionesEmpleados(_Globales.Empresa,xservicio_id.Text);
             dmMain.CargaEquipoServicio(_Globales.Empresa,xservicio_id.Text);
             CargaPreasignacion;
        end;

     actGuardar.Enabled                 := dmMain.dsServiciosEdit.DataSet.State in [dsInsert, dsEdit];
     actGuardar.Visible                 := dmMain.dsServiciosEdit.DataSet.State in [dsInsert, dsEdit];
     xservicio_id.Enabled               := dmMain.dsServiciosEdit.DataSet.State in [dsInsert];
     xdescripcion.Enabled               := dmMain.dsServiciosEdit.DataSet.State in [dsInsert, dsEdit];
     xcliente_id.Enabled                := dmMain.dsServiciosEdit.DataSet.State in [dsInsert, dsEdit];
     vGridServicios.OptionsData.Editing := dmMain.dsServiciosEdit.DataSet.State in [dsInsert, dsEdit];
     actCopiarInfoCliente.Visible       := dmMain.dsServiciosEdit.DataSet.State in [dsInsert, dsEdit];

     cxPageControl1.Pages[1].Visible := dmMain.dsServiciosEdit.DataSet.State <> dsInsert;
     cxPageControl1.Pages[2].Visible := dmMain.dsServiciosEdit.DataSet.State <> dsInsert;
     cxPageControl1.Pages[3].Visible := dmMain.dsServiciosEdit.DataSet.State <> dsInsert;
     cxPageControl1.Pages[4].Visible := dmMain.dsServiciosEdit.DataSet.State <> dsInsert;
     cxPageControl1.Pages[1].TabVisible := dmMain.dsServiciosEdit.DataSet.State <> dsInsert;
     cxPageControl1.Pages[2].TabVisible := dmMain.dsServiciosEdit.DataSet.State <> dsInsert;
     cxPageControl1.Pages[3].TabVisible := dmMain.dsServiciosEdit.DataSet.State <> dsInsert;
     cxPageControl1.Pages[4].TabVisible := dmMain.dsServiciosEdit.DataSet.State <> dsInsert;

     RevisaAccionesFunciones;

     vGridServicios.LookAndFeel.NativeStyle := dmMain.dsServiciosEdit.DataSet.State in [dsBrowse];
end;

procedure TfrmServicios.RevisaAccionesFunciones;
begin
     actModificarFuncion.Enabled := not dmMain.dsServiciosFunciones.DataSet.IsEmpty;
     actEliminarFuncion.Enabled  := not dmMain.dsServiciosFunciones.DataSet.IsEmpty;
     actConsultarFuncion.Enabled := not dmMain.dsServiciosFunciones.DataSet.IsEmpty;

     actModificarFuncion.Visible := not dmMain.dsServiciosFunciones.DataSet.IsEmpty;
     actEliminarFuncion.Visible  := not dmMain.dsServiciosFunciones.DataSet.IsEmpty;
     actConsultarFuncion.Visible := not dmMain.dsServiciosFunciones.DataSet.IsEmpty;
end;

function TfrmServicios.Validate: Boolean;
var
   msg : string;
begin
     msg := '';
     if Trim(xservicio_id.Text) = '' then
        msg := msg + ifthen(Trim(msg)<>'',#13#10+'- Debe capturar la clave del servicio','- Debe capturar la clave del servicio')
     else
         if dmMain.dsServiciosEdit.State = dsInsert then
            if dmMain.ExisteServicioId(_Globales.Empresa, xservicio_id.Text) then
               msg := msg + ifthen(Trim(msg)<>'',#13#10+'- La clave del servicio ya existe','- La clave del servicio ya existe');
     if Trim(xdescripcion.Text) = '' then
        msg := msg + ifthen(Trim(msg)<>'',#13#10+'- Debe capturar la Descripción','- Debe capturar la Descripción');
     if Trim(xcliente_id.Text) = '' then
        msg := msg + ifthen(Trim(msg)<>'',#13#10+'- Debe capturar el cliente','- Debe capturar el cliente');

     Result := Trim(msg)='';

     if Trim(msg)<>'' then
        MessageDlg(msg,mtError,[mbOK],0);
end;

procedure TfrmServicios.xdescripcionKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

procedure TfrmServicios.xfechaClick(Sender: TObject);
begin
     CargaPreasignacion;
end;

end.

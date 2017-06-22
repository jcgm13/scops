unit FMovtosAlmacen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlue,
  dxSkinDevExpressStyle, dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinOffice2013LightGray, cxControls, cxContainer,
  cxEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxTextEdit,
  cxLabel, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxCalendar, cxButtonEdit;

type
  TfrmMovtosAlmacen = class(TForm)
    actlst1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    pnl1: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Label1: TcxLabel;
    xequipo_id: TcxDBTextEdit;
    xActivo: TcxDBImageComboBox;
    cxLabel1: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel20: TcxLabel;
    cxLabel2: TcxLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ColId: TcxGridDBColumn;
    cxGrid1DBTableView1ColTipo: TcxGridDBColumn;
    cxGrid1DBTableView1ColDescripcion: TcxGridDBColumn;
    cxGrid1DBTableView1ColCantidad: TcxGridDBColumn;
    cxGrid1DBTableView1ColCosto: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit5: TcxDBComboBox;
    cxDBTextEdit1: TcxButtonEdit;
    cxGrid1DBTableView1ColButton: TcxGridDBColumn;
    cxLabel5: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    actAgregarEquipo: TAction;
    actEliminarEquipo: TAction;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure actAgregarEquipoExecute(Sender: TObject);
    procedure actEliminarEquipoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCerrarExecute(Sender: TObject);
    procedure actGuardarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitarControles(habilitar : Boolean);
  public
    { Public declarations }
  end;

var
  frmMovtosAlmacen: TfrmMovtosAlmacen;

implementation

uses
  dMain, fPrincipal, fSeleccionEquipo, uGlobales;

{$R *.dfm}

procedure TfrmMovtosAlmacen.actAgregarEquipoExecute(Sender: TObject);
begin
     frmSeleccionEquipo := TfrmSeleccionEquipo.Create(Nil);
     if frmSeleccionEquipo.ShowModal = mrOk then
        begin
             {
             dmMain.AsignaEquipoServicio(_Globales.Empresa,
                                         xservicio_id.Text,
                                         EquipoSeleccionado
                                        );
             dmMain.CargaEquipoServicio(_Globales.Empresa,xservicio_id.Text);
             }
        end;
end;

procedure TfrmMovtosAlmacen.actCerrarExecute(Sender: TObject);
begin
     if dmMain.dsMovtosAlmacenEdit.DataSet.State in [dsInsert, dsEdit] then
        dmMain.dsMovtosAlmacenEdit.DataSet.Cancel;
     ModalResult := mrCancel;
end;

procedure TfrmMovtosAlmacen.actEliminarEquipoExecute(Sender: TObject);
begin
     if not dmMain.dsServiciosEquipo.DataSet.IsEmpty then
        if MessageDlg('¿Está seguro de eliminar este equipo del Movimiento de Almacén?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
                {
                dmMain.EliminarEquipo(_Globales.Empresa,
                                      xservicio_id.Text,
                                      dmMain.dsServiciosEquipo.DataSet.FieldByName('equipo_id').AsInteger
                                     );
                dmMain.CargaEquipoServicio(_Globales.Empresa,xservicio_id.Text);
                }
           end;
end;

procedure TfrmMovtosAlmacen.actGuardarExecute(Sender: TObject);
begin
     if dmMain.dsMovtosAlmacenEdit.DataSet.State in [dsInsert, dsEdit] then
        begin
             dmMain.dsMovtosAlmacenEdit.DataSet.Post;
             ModalResult := mrOk;
        end;
end;

procedure TfrmMovtosAlmacen.FormCreate(Sender: TObject);
begin
     dmMain.qryMovtosAlmacenEdit.Open;
end;

procedure TfrmMovtosAlmacen.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

procedure TfrmMovtosAlmacen.FormShow(Sender: TObject);
begin
     if dmMain.dsMovtosAlmacenEdit.DataSet.State = dsInsert then
        Caption := 'Movimientos de Almacén (nuevo)';
     if dmMain.dsMovtosAlmacenEdit.DataSet.State = dsEdit then
        Caption := 'Movimientos de Almacén (modificar)';
     if dmMain.dsMovtosAlmacenEdit.DataSet.State = dsBrowse then
        Caption := 'Movimientos de Almacén (consultar)';

     HabilitarControles(dmMain.dsMovtosAlmacenEdit.DataSet.State in [dsInsert, dsEdit]);

     xActivo.Enabled := dmMain.dsMovtosAlmacenEdit.DataSet.State = dsEdit;

     actGuardar.Enabled := dmMain.dsMovtosAlmacenEdit.DataSet.State in [dsInsert, dsEdit];
     actGuardar.Visible := dmMain.dsMovtosAlmacenEdit.DataSet.State in [dsInsert, dsEdit];
end;

procedure TfrmMovtosAlmacen.HabilitarControles(habilitar: Boolean);
var
   c : Integer;
begin
     for c := 0 to Self.ControlCount - 1 do
         if not(Self.Controls[c] is TcxLabel) and (Self.Controls[c].Tag = 0) then
            Self.Controls[c].Enabled := habilitar;
end;

end.

unit fPermisos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, Vcl.ActnList, Vcl.StdCtrls, cxButtons, cxTextEdit, cxDBEdit, Vcl.ExtCtrls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit,
  cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView,
  cxGrid, Vcl.Grids, Vcl.DBGrids, cxCheckBox, dxSkinDevExpressStyle, dxSkinOffice2016Colorful, System.Actions;

type
  TfrmPermisos = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    xusuario: TcxDBTextEdit;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ActionList1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    actExpandir: TAction;
    actContraer: TAction;
    cxGridMain: TcxGrid;
    ViewPermisos: TcxGridDBTableView;
    ViewPermisosColumnCategoria: TcxGridDBColumn;
    ViewPermisosColumnDescripcion: TcxGridDBColumn;
    ViewPermisosColumnPermiso: TcxGridDBColumn;
    cxGridMainLevelMain: TcxGridLevel;
    procedure actExpandirExecute(Sender: TObject);
    procedure actContraerExecute(Sender: TObject);
    procedure actCerrarExecute(Sender: TObject);
    procedure actGuardarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPermisos: TfrmPermisos;

implementation

{$R *.dfm}

uses dMain, fPrincipal;

procedure TfrmPermisos.actCerrarExecute(Sender: TObject);
begin
     ModalResult := mrCancel;
end;

procedure TfrmPermisos.actContraerExecute(Sender: TObject);
begin
     ViewPermisos.ViewData.Collapse(True);
end;

procedure TfrmPermisos.actExpandirExecute(Sender: TObject);
begin
     ViewPermisos.ViewData.Expand(True);
end;

procedure TfrmPermisos.actGuardarExecute(Sender: TObject);
begin
     dmMain.GuardaPermisos;
     ModalResult := mrOk;
end;

procedure TfrmPermisos.FormShow(Sender: TObject);
begin
     ViewPermisos.ViewData.Expand(True);
end;

end.

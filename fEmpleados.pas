unit fEmpleados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinOffice2010Black, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxPC,
  Data.DB, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxStyles, cxCheckBox, cxInplaceContainer, cxCalendar, cxRadioGroup,
  cxDBLookupComboBox, cxCurrencyEdit, cxGroupBox, Vcl.Menus, cxButtons, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, cxImageComboBox,
  dxSkinDevExpressStyle, StrUtils, cxMaskEdit, cxDropDownEdit, cxMemo, cxLabel, cxLookupEdit, cxDBLookupEdit, cxSpinEdit, cxImage,
  dxSkinBlue, dxSkinOffice2007Silver, dxSkinOffice2010Silver, dxSkinOffice2013LightGray, cxButtonEdit;

type
  TfrmEmpleados = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    xempleado_id: TcxDBTextEdit;
    xNombres: TcxDBTextEdit;
    xapellido_paterno: TcxDBTextEdit;
    xapellido_materno: TcxDBTextEdit;
    xsexo: TcxDBRadioGroup;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ActionList1: TActionList;
    actGuardar: TAction;
    actCerrar: TAction;
    cxDBImageComboBox1: TcxDBImageComboBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    cxTabSheet12: TcxTabSheet;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel7: TcxLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel8: TcxLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    cxLabel9: TcxLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxLabel10: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBRadioGroup3: TcxDBRadioGroup;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBRadioGroup4: TcxDBRadioGroup;
    cxLabel11: TcxLabel;
    cxDBDateEdit5: TcxDBDateEdit;
    cxLabel12: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxDBDateEdit6: TcxDBDateEdit;
    cxLabel14: TcxLabel;
    cxDBDateEdit7: TcxDBDateEdit;
    cxLabel15: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel16: TcxLabel;
    cxDBDateEdit8: TcxDBDateEdit;
    cxLabel17: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxLabel20: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel21: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel22: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel23: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel24: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel25: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel30: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel31: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxLabel32: TcxLabel;
    cxDBDateEdit9: TcxDBDateEdit;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxLabel36: TcxLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cxDBLookupComboBox12: TcxDBImageComboBox;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBTextEdit18: TcxDBTextEdit;
    cxLabel39: TcxLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    cxLabel44: TcxLabel;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    cxLabel45: TcxLabel;
    cxDBTextEdit23: TcxDBTextEdit;
    cxLabel46: TcxLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    cxLabel47: TcxLabel;
    cxDBTextEdit25: TcxDBTextEdit;
    cxLabel48: TcxLabel;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxLabel49: TcxLabel;
    cxDBCheckBox10: TcxDBCheckBox;
    cxLabel50: TcxLabel;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    cxLabel51: TcxLabel;
    cxDBRadioGroup5: TcxDBRadioGroup;
    cxDBRadioGroup6: TcxDBRadioGroup;
    cxDBCheckBox11: TcxDBCheckBox;
    cxLabel52: TcxLabel;
    cxDBTextEdit30: TcxDBTextEdit;
    cxLabel53: TcxLabel;
    cxDBDateEdit10: TcxDBDateEdit;
    cxDBLookupComboBox6: TcxDBImageComboBox;
    cxDBLookupComboBox9: TcxDBTextEdit;
    cxDBLookupComboBox10: TcxDBTextEdit;
    cxDBLookupComboBox7: TcxDBTextEdit;
    cxDBLookupComboBox8: TcxDBTextEdit;
    cxLabel54: TcxLabel;
    cxDBLookupComboBox13: TcxDBComboBox;
    cxDBRadioGroup7: TcxDBRadioGroup;
    cxDBRadioGroup8: TcxDBRadioGroup;
    cxDBRadioGroup9: TcxDBRadioGroup;
    cxDBRadioGroup10: TcxDBRadioGroup;
    cxDBRadioGroup11: TcxDBRadioGroup;
    cxDBRadioGroup12: TcxDBRadioGroup;
    cxDBRadioGroup13: TcxDBRadioGroup;
    cxDBRadioGroup14: TcxDBRadioGroup;
    cxDBRadioGroup15: TcxDBRadioGroup;
    cxDBRadioGroup16: TcxDBRadioGroup;
    cxDBRadioGroup17: TcxDBRadioGroup;
    cxDBRadioGroup18: TcxDBRadioGroup;
    cxDBRadioGroup19: TcxDBRadioGroup;
    cxDBRadioGroup20: TcxDBRadioGroup;
    cxDBRadioGroup21: TcxDBRadioGroup;
    cxDBRadioGroup22: TcxDBRadioGroup;
    cxDBRadioGroup23: TcxDBRadioGroup;
    cxDBRadioGroup24: TcxDBRadioGroup;
    cxDBDateEdit11: TcxDBDateEdit;
    cxDBDateEdit12: TcxDBDateEdit;
    cxDBDateEdit13: TcxDBDateEdit;
    cxDBDateEdit14: TcxDBDateEdit;
    cxDBDateEdit15: TcxDBDateEdit;
    cxLabel55: TcxLabel;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBRadioGroup25: TcxDBRadioGroup;
    cxLabel56: TcxLabel;
    cxDBDateEdit16: TcxDBDateEdit;
    cxLabel57: TcxLabel;
    cxDBDateEdit17: TcxDBDateEdit;
    cxDBDateEdit18: TcxDBDateEdit;
    cxLabel58: TcxLabel;
    cxLabel59: TcxLabel;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    cxLabel60: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel62: TcxLabel;
    cxCurrencyEdit2: TcxDBCurrencyEdit;
    cxCurrencyEdit1: TcxDBCurrencyEdit;
    cxLabel63: TcxLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBRadioGroup26: TcxDBRadioGroup;
    cxLabel65: TcxLabel;
    cxLabel64: TcxLabel;
    cxLabel66: TcxLabel;
    cxDBDateEdit19: TcxDBDateEdit;
    cxLabel67: TcxLabel;
    cxDBDateEdit20: TcxDBDateEdit;
    cxLabel68: TcxLabel;
    cxDBLookupComboBox14: TcxDBLookupComboBox;
    cxLabel69: TcxLabel;
    cxDBTextEdit34: TcxDBTextEdit;
    cxLabel70: TcxLabel;
    cxDBTextEdit35: TcxDBTextEdit;
    cxLabel71: TcxLabel;
    cxLabel72: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxLabel73: TcxLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxLabel74: TcxLabel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxLabel75: TcxLabel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    cxLabel76: TcxLabel;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cxLabel77: TcxLabel;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    cxLabel78: TcxLabel;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    cxLabel79: TcxLabel;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    cxLabel80: TcxLabel;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    cxLabel81: TcxLabel;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    cxLabel82: TcxLabel;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    cxLabel83: TcxLabel;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    cxLabel84: TcxLabel;
    cxDBMemo2: TcxDBMemo;
    cxLabel85: TcxLabel;
    cxLabel86: TcxLabel;
    cxDBTextEdit36: TcxDBTextEdit;
    cxLabel87: TcxLabel;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBTextEdit38: TcxDBTextEdit;
    cxLabel88: TcxLabel;
    cxLabel89: TcxLabel;
    cxDBTextEdit39: TcxDBImageComboBox;
    cxLabel90: TcxLabel;
    cxDBTextEdit40: TcxDBTextEdit;
    cxLabel91: TcxLabel;
    cxDBTextEdit41: TcxDBTextEdit;
    cxDBTextEdit42: TcxDBTextEdit;
    cxLabel92: TcxLabel;
    cxDBTextEdit43: TcxDBTextEdit;
    cxLabel93: TcxLabel;
    cxLabel94: TcxLabel;
    cxDBTextEdit44: TcxDBTextEdit;
    cxLabel95: TcxLabel;
    cxDBTextEdit45: TcxDBTextEdit;
    cxLabel96: TcxLabel;
    cxDBTextEdit46: TcxDBTextEdit;
    cxDBTextEdit47: TcxDBTextEdit;
    cxLabel97: TcxLabel;
    cxDBTextEdit48: TcxDBTextEdit;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    cxDBTextEdit49: TcxDBTextEdit;
    cxLabel100: TcxLabel;
    cxLabel101: TcxLabel;
    cxDBTextEdit50: TcxDBTextEdit;
    cxLabel102: TcxLabel;
    cxDBTextEdit51: TcxDBTextEdit;
    cxDBTextEdit52: TcxDBTextEdit;
    cxLabel103: TcxLabel;
    cxLabel104: TcxLabel;
    cxDBImageComboBox3: TcxDBImageComboBox;
    cxLabel105: TcxLabel;
    cxDBTextEdit53: TcxDBTextEdit;
    cxLabel106: TcxLabel;
    cxDBTextEdit54: TcxDBTextEdit;
    cxDBTextEdit55: TcxDBTextEdit;
    cxLabel107: TcxLabel;
    cxDBTextEdit56: TcxDBTextEdit;
    cxLabel108: TcxLabel;
    cxLabel109: TcxLabel;
    cxDBTextEdit57: TcxDBTextEdit;
    cxLabel110: TcxLabel;
    cxDBTextEdit58: TcxDBTextEdit;
    cxLabel111: TcxLabel;
    cxDBTextEdit59: TcxDBTextEdit;
    cxDBTextEdit60: TcxDBTextEdit;
    cxLabel112: TcxLabel;
    cxDBTextEdit61: TcxDBTextEdit;
    cxLabel113: TcxLabel;
    cxLabel114: TcxLabel;
    cxDBTextEdit62: TcxDBTextEdit;
    cxLabel115: TcxLabel;
    cxLabel116: TcxLabel;
    cxDBTextEdit63: TcxDBTextEdit;
    cxLabel117: TcxLabel;
    cxDBTextEdit64: TcxDBTextEdit;
    cxDBTextEdit65: TcxDBTextEdit;
    cxLabel118: TcxLabel;
    cxLabel119: TcxLabel;
    cxDBImageComboBox4: TcxDBImageComboBox;
    cxLabel120: TcxLabel;
    cxDBTextEdit66: TcxDBTextEdit;
    cxLabel121: TcxLabel;
    cxDBTextEdit67: TcxDBTextEdit;
    cxDBTextEdit68: TcxDBTextEdit;
    cxLabel122: TcxLabel;
    cxDBTextEdit69: TcxDBTextEdit;
    cxLabel123: TcxLabel;
    cxLabel124: TcxLabel;
    cxDBTextEdit70: TcxDBTextEdit;
    cxLabel125: TcxLabel;
    cxDBTextEdit71: TcxDBTextEdit;
    cxLabel126: TcxLabel;
    cxDBTextEdit72: TcxDBTextEdit;
    cxDBTextEdit73: TcxDBTextEdit;
    cxLabel127: TcxLabel;
    cxDBTextEdit74: TcxDBTextEdit;
    cxLabel128: TcxLabel;
    cxLabel129: TcxLabel;
    cxDBTextEdit75: TcxDBTextEdit;
    cxDBTextEdit76: TcxDBTextEdit;
    cxDBTextEdit77: TcxDBTextEdit;
    cxLabel130: TcxLabel;
    cxLabel131: TcxLabel;
    cxDBTextEdit78: TcxDBTextEdit;
    cxLabel132: TcxLabel;
    cxDBTextEdit79: TcxDBTextEdit;
    cxDBTextEdit80: TcxDBTextEdit;
    cxLabel133: TcxLabel;
    cxLabel134: TcxLabel;
    cxDBTextEdit81: TcxDBTextEdit;
    cxLabel135: TcxLabel;
    cxLabel136: TcxLabel;
    cxDBTextEdit82: TcxDBTextEdit;
    cxLabel137: TcxLabel;
    cxDBTextEdit83: TcxDBTextEdit;
    cxDBTextEdit84: TcxDBTextEdit;
    cxLabel138: TcxLabel;
    cxDBTextEdit85: TcxDBTextEdit;
    cxLabel139: TcxLabel;
    cxDBImageComboBox5: TcxDBImageComboBox;
    cxLabel140: TcxLabel;
    cxLabel141: TcxLabel;
    cxDBTextEdit86: TcxDBTextEdit;
    cxDBTextEdit87: TcxDBTextEdit;
    cxLabel142: TcxLabel;
    cxDBTextEdit88: TcxDBTextEdit;
    cxLabel143: TcxLabel;
    cxLabel144: TcxLabel;
    cxLabel145: TcxLabel;
    cxLabel146: TcxLabel;
    cxDBTextEdit89: TcxDBTextEdit;
    cxLabel147: TcxLabel;
    cxDBTextEdit90: TcxDBTextEdit;
    cxDBTextEdit91: TcxDBTextEdit;
    cxLabel148: TcxLabel;
    cxLabel149: TcxLabel;
    cxDBTextEdit92: TcxDBTextEdit;
    cxLabel150: TcxLabel;
    cxDBTextEdit93: TcxDBTextEdit;
    cxDBTextEdit94: TcxDBTextEdit;
    cxLabel151: TcxLabel;
    cxLabel152: TcxLabel;
    cxDBTextEdit95: TcxDBTextEdit;
    cxLabel153: TcxLabel;
    cxDBTextEdit96: TcxDBTextEdit;
    cxLabel154: TcxLabel;
    cxDBTextEdit97: TcxDBTextEdit;
    cxLabel155: TcxLabel;
    cxLabel156: TcxLabel;
    cxDBTextEdit98: TcxDBTextEdit;
    cxLabel157: TcxLabel;
    cxDBTextEdit99: TcxDBTextEdit;
    cxDBTextEdit100: TcxDBTextEdit;
    cxLabel158: TcxLabel;
    cxLabel159: TcxLabel;
    cxDBTextEdit101: TcxDBTextEdit;
    cxLabel160: TcxLabel;
    cxDBTextEdit102: TcxDBTextEdit;
    cxDBTextEdit103: TcxDBTextEdit;
    cxLabel161: TcxLabel;
    cxLabel162: TcxLabel;
    cxDBTextEdit104: TcxDBTextEdit;
    cxLabel163: TcxLabel;
    cxDBTextEdit105: TcxDBTextEdit;
    cxLabel164: TcxLabel;
    cxDBTextEdit106: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxLabel165: TcxLabel;
    cxDBTextEdit107: TcxDBTextEdit;
    cxLabel166: TcxLabel;
    cxDBTextEdit108: TcxDBTextEdit;
    cxLabel167: TcxLabel;
    cxDBTextEdit109: TcxDBTextEdit;
    cxLabel168: TcxLabel;
    cxLabel169: TcxLabel;
    cxDBTextEdit110: TcxDBTextEdit;
    cxDBTextEdit111: TcxDBTextEdit;
    cxLabel170: TcxLabel;
    cxDBTextEdit112: TcxDBTextEdit;
    cxTabSheet10: TcxTabSheet;
    cxDBImage1: TcxDBImage;
    cxLabel171: TcxLabel;
    cxLabel172: TcxLabel;
    cxDBLookupComboBox15: TcxDBLookupComboBox;
    cxDBLookupComboBox16: TcxDBLookupComboBox;
    cxLabel173: TcxLabel;
    cxDBLookupComboBox17: TcxDBLookupComboBox;
    cxLabel174: TcxLabel;
    cxDBLookupComboBox18: TcxDBLookupComboBox;
    cxLabel175: TcxLabel;
    cxDBLookupComboBox19: TcxDBLookupComboBox;
    cxLabel176: TcxLabel;
    cxDBDateEdit21: TcxDBDateEdit;
    cxLabel177: TcxLabel;
    cxDBDateEdit22: TcxDBDateEdit;
    cxLabel178: TcxLabel;
    cxLabel179: TcxLabel;
    cxDBTextEdit113: TcxDBTextEdit;
    cxLabel180: TcxLabel;
    cxDBTextEdit114: TcxDBTextEdit;
    cxLabel181: TcxLabel;
    cxDBTextEdit115: TcxDBTextEdit;
    cxLabel182: TcxLabel;
    cxDBTextEdit116: TcxDBTextEdit;
    cxLabel183: TcxLabel;
    cxDBTextEdit117: TcxDBTextEdit;
    cxLabel186: TcxLabel;
    cxLabel187: TcxLabel;
    cxDBTextEdit120: TcxDBTextEdit;
    cxDBTextEdit121: TcxDBTextEdit;
    cxLabel188: TcxLabel;
    cxDBTextEdit122: TcxDBTextEdit;
    cxLabel189: TcxLabel;
    cxDBTextEdit123: TcxDBTextEdit;
    cxLabel190: TcxLabel;
    lblMotivoBaja: TcxLabel;
    xmotivobaja: TcxDBImageComboBox;
    lblComentariosBaja: TcxLabel;
    xObservacionesBaja: TcxDBMemo;
    lblTituloBaja: TcxLabel;
    lblFechaBaja: TcxLabel;
    xFechaBaja: TcxDBDateEdit;
    cxLabel184: TcxLabel;
    cxDBImageComboBox6: TcxDBImageComboBox;
    cxLabel185: TcxLabel;
    cxDBDateEdit23: TcxDBDateEdit;
    cxLabel191: TcxLabel;
    cxDBTextEdit118: TcxDBTextEdit;
    cxLabel193: TcxLabel;
    cxDBTextEdit124: TcxDBTextEdit;
    cxLabel194: TcxLabel;
    cxDBTextEdit125: TcxDBTextEdit;
    cxLabel195: TcxLabel;
    cxDBTextEdit126: TcxDBTextEdit;
    cxLabel196: TcxLabel;
    cxDBComboBox1: TcxDBComboBox;
    cxLabel192: TcxLabel;
    cxDBTextEdit119: TcxDBTextEdit;
    cxLabel197: TcxLabel;
    btnCedula: TcxButton;
    btnHojaTecnica: TcxButton;
    btnCredencial: TcxButton;
    cxLabel198: TcxLabel;
    cxLabel199: TcxLabel;
    cxDBTextEdit127: TcxDBTextEdit;
    cxLabel200: TcxLabel;
    cxDBTextEdit128: TcxDBTextEdit;
    cxDBRadioGroup27: TcxDBRadioGroup;
    cxLabel201: TcxLabel;
    cxDBLookupComboBox20: TcxDBLookupComboBox;
    cxDBRadioGroup28: TcxDBRadioGroup;
    cxLabel202: TcxLabel;
    cxDBDateEdit24: TcxDBDateEdit;
    cxLabel203: TcxLabel;
    cxDBDateEdit25: TcxDBDateEdit;
    cxDBTextEdit129: TcxDBTextEdit;
    cxLabel204: TcxLabel;
    cxLabel205: TcxLabel;
    cxLabel206: TcxLabel;
    cxDBTextEdit130: TcxDBTextEdit;
    cxLabel207: TcxLabel;
    cxDBTextEdit131: TcxDBTextEdit;
    cxDBRadioGroup29: TcxDBRadioGroup;
    cxLabel208: TcxLabel;
    cxDBLookupComboBox21: TcxDBLookupComboBox;
    cxDBRadioGroup30: TcxDBRadioGroup;
    cxLabel209: TcxLabel;
    cxDBDateEdit26: TcxDBDateEdit;
    cxLabel210: TcxLabel;
    cxDBDateEdit27: TcxDBDateEdit;
    cxDBTextEdit132: TcxDBTextEdit;
    cxLabel211: TcxLabel;
    cxDBDateEdit28: TcxDBDateEdit;
    cxLabel212: TcxLabel;
    cxDBTextEdit133: TcxDBTextEdit;
    cxDBDateEdit29: TcxDBDateEdit;
    cxLabel213: TcxLabel;
    cxLabel214: TcxLabel;
    cxDBRadioGroup31: TcxDBRadioGroup;
    cxDBLookupComboBox22: TcxDBLookupComboBox;
    cxLabel215: TcxLabel;
    cxDBRadioGroup32: TcxDBRadioGroup;
    cxDBTextEdit134: TcxDBTextEdit;
    cxLabel216: TcxLabel;
    cxDBTextEdit135: TcxDBTextEdit;
    cxLabel217: TcxLabel;
    cxLabel218: TcxLabel;
    cxDBCheckBox12: TcxDBCheckBox;
    cxLabel219: TcxLabel;
    cxDBCurrencyEdit13: TcxDBCurrencyEdit;
    cxDBRadioGroup33: TcxDBRadioGroup;
    cxLabel220: TcxLabel;
    cxDBTextEdit136: TcxDBTextEdit;
    cxLabel221: TcxLabel;
    cxDBTextEdit137: TcxDBTextEdit;
    cxLabel222: TcxLabel;
    cxDBTextEdit138: TcxDBTextEdit;
    cxDBRadioGroup34: TcxDBRadioGroup;
    cxLabel223: TcxLabel;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCurrencyEdit14: TcxDBCurrencyEdit;
    cxLabel224: TcxLabel;
    cxDBRadioGroup35: TcxDBRadioGroup;
    cxDBRadioGroup36: TcxDBRadioGroup;
    cxDBRadioGroup37: TcxDBRadioGroup;
    cxLabel225: TcxLabel;
    cxLabel226: TcxLabel;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxDBCheckBox21: TcxDBCheckBox;
    cxDBCheckBox22: TcxDBCheckBox;
    cxDBCheckBox23: TcxDBCheckBox;
    cxDBCheckBox24: TcxDBCheckBox;
    cxDBCheckBox25: TcxDBCheckBox;
    cxDBCheckBox26: TcxDBCheckBox;
    cxLabel227: TcxLabel;
    cxLabel228: TcxLabel;
    cxDBCurrencyEdit15: TcxDBCurrencyEdit;
    cxDBCurrencyEdit16: TcxDBCurrencyEdit;
    cxLabel229: TcxLabel;
    cxLabel230: TcxLabel;
    cxDBCurrencyEdit17: TcxDBCurrencyEdit;
    cxDBCurrencyEdit18: TcxDBCurrencyEdit;
    cxLabel231: TcxLabel;
    cxDBCurrencyEdit19: TcxDBCurrencyEdit;
    cxLabel232: TcxLabel;
    cxDBCurrencyEdit20: TcxDBCurrencyEdit;
    cxLabel233: TcxLabel;
    cxLabel234: TcxLabel;
    cxDBCurrencyEdit21: TcxDBCurrencyEdit;
    cxDBCurrencyEdit22: TcxDBCurrencyEdit;
    cxLabel235: TcxLabel;
    cxLabel236: TcxLabel;
    cxDBCurrencyEdit23: TcxDBCurrencyEdit;
    cxDBCurrencyEdit24: TcxDBCurrencyEdit;
    cxLabel237: TcxLabel;
    cxDBCurrencyEdit25: TcxDBCurrencyEdit;
    cxLabel238: TcxLabel;
    cxDBCurrencyEdit26: TcxDBCurrencyEdit;
    cxLabel239: TcxLabel;
    cxDBCurrencyEdit27: TcxDBCurrencyEdit;
    cxLabel241: TcxLabel;
    cxDBCurrencyEdit29: TcxDBCurrencyEdit;
    cxDBCurrencyEdit31: TcxDBCurrencyEdit;
    cxLabel243: TcxLabel;
    cxLabel244: TcxLabel;
    cxDBCurrencyEdit32: TcxDBCurrencyEdit;
    cxLabel245: TcxLabel;
    cxLabel240: TcxLabel;
    cxDBRadioGroup38: TcxDBRadioGroup;
    cxLabel242: TcxLabel;
    cxLabel246: TcxLabel;
    cxDBTextEdit139: TcxDBTextEdit;
    cxLabel247: TcxLabel;
    cxLabel248: TcxLabel;
    cxDBTextEdit140: TcxDBTextEdit;
    cxDBTextEdit141: TcxDBTextEdit;
    cxDBTextEdit142: TcxDBTextEdit;
    cxLabel249: TcxLabel;
    cxLabel250: TcxLabel;
    cxLabel251: TcxLabel;
    cxLabel252: TcxLabel;
    cxDBTextEdit143: TcxDBTextEdit;
    cxLabel253: TcxLabel;
    cxLabel254: TcxLabel;
    cxDBTextEdit144: TcxDBTextEdit;
    cxDBTextEdit145: TcxDBTextEdit;
    cxDBTextEdit146: TcxDBTextEdit;
    cxLabel255: TcxLabel;
    cxLabel256: TcxLabel;
    cxLabel257: TcxLabel;
    cxLabel258: TcxLabel;
    cxDBTextEdit147: TcxDBTextEdit;
    cxLabel259: TcxLabel;
    cxLabel260: TcxLabel;
    cxDBTextEdit148: TcxDBTextEdit;
    cxDBTextEdit149: TcxDBTextEdit;
    cxDBTextEdit150: TcxDBTextEdit;
    cxLabel261: TcxLabel;
    cxLabel262: TcxLabel;
    cxLabel263: TcxLabel;
    cxLabel264: TcxLabel;
    cxDBTextEdit151: TcxDBTextEdit;
    cxLabel265: TcxLabel;
    cxLabel266: TcxLabel;
    cxDBTextEdit152: TcxDBTextEdit;
    cxDBTextEdit153: TcxDBTextEdit;
    cxDBTextEdit154: TcxDBTextEdit;
    cxLabel267: TcxLabel;
    cxLabel268: TcxLabel;
    cxLabel269: TcxLabel;
    cxLabel270: TcxLabel;
    cxDBTextEdit155: TcxDBTextEdit;
    cxLabel271: TcxLabel;
    cxLabel272: TcxLabel;
    cxDBTextEdit156: TcxDBTextEdit;
    cxDBTextEdit157: TcxDBTextEdit;
    cxLabel275: TcxLabel;
    cxLabel273: TcxLabel;
    cxLabel285: TcxLabel;
    cxDBRadioGroup40: TcxDBRadioGroup;
    cxDBRadioGroup41: TcxDBRadioGroup;
    cxDBRadioGroup39: TcxDBRadioGroup;
    cxDBRadioGroup42: TcxDBRadioGroup;
    cxDBRadioGroup43: TcxDBRadioGroup;
    cxDBRadioGroup44: TcxDBRadioGroup;
    cxDBRadioGroup45: TcxDBRadioGroup;
    cxDBRadioGroup46: TcxDBRadioGroup;
    cxDBRadioGroup47: TcxDBRadioGroup;
    cxDBRadioGroup48: TcxDBRadioGroup;
    cxLabel274: TcxLabel;
    cxDBCheckBox20: TcxDBCheckBox;
    cxDBCheckBox27: TcxDBCheckBox;
    cxDBCheckBox28: TcxDBCheckBox;
    cxDBCheckBox29: TcxDBCheckBox;
    cxDBCheckBox30: TcxDBCheckBox;
    cxDBCheckBox31: TcxDBCheckBox;
    cxDBTextEdit159: TcxDBTextEdit;
    cxLabel277: TcxLabel;
    cxDBTextEdit160: TcxDBTextEdit;
    cxLabel278: TcxLabel;
    cxDBTextEdit161: TcxDBTextEdit;
    cxLabel279: TcxLabel;
    cxDBTextEdit162: TcxDBTextEdit;
    cxLabel280: TcxLabel;
    cxDBTextEdit163: TcxDBTextEdit;
    cxLabel281: TcxLabel;
    cxDBTextEdit164: TcxDBTextEdit;
    cxLabel282: TcxLabel;
    cxDBTextEdit165: TcxDBTextEdit;
    cxLabel283: TcxLabel;
    cxDBTextEdit166: TcxDBTextEdit;
    cxLabel284: TcxLabel;
    cxDBTextEdit167: TcxDBTextEdit;
    cxDBCheckBox32: TcxDBCheckBox;
    cxLabel286: TcxLabel;
    cxDBTextEdit168: TcxDBTextEdit;
    cxLabel287: TcxLabel;
    cxDBTextEdit169: TcxDBTextEdit;
    cxLabel288: TcxLabel;
    cxDBTextEdit170: TcxDBTextEdit;
    cxLabel289: TcxLabel;
    cxDBTextEdit171: TcxDBTextEdit;
    cxLabel290: TcxLabel;
    cxDBCurrencyEdit28: TcxDBCurrencyEdit;
    cxLabel276: TcxLabel;
    cxDBTextEdit158: TcxDBTextEdit;
    cxLabel291: TcxLabel;
    cxDBTextEdit172: TcxDBTextEdit;
    cxLabel292: TcxLabel;
    cxDBTextEdit173: TcxDBTextEdit;
    cxLabel293: TcxLabel;
    cxDBTextEdit174: TcxDBTextEdit;
    cxLabel294: TcxLabel;
    cxDBTextEdit175: TcxDBTextEdit;
    cxLabel295: TcxLabel;
    cxDBTextEdit176: TcxDBTextEdit;
    cxLabel296: TcxLabel;
    cxDBTextEdit177: TcxDBTextEdit;
    cxLabel297: TcxLabel;
    cxDBTextEdit178: TcxDBTextEdit;
    cxLabel298: TcxLabel;
    cxDBTextEdit179: TcxDBTextEdit;
    cxLabel299: TcxLabel;
    cxDBTextEdit180: TcxDBTextEdit;
    cxLabel300: TcxLabel;
    cxLabel301: TcxLabel;
    cxLabel302: TcxLabel;
    cxDBMemo3: TcxDBMemo;
    OpenDialog1: TOpenDialog;
    btnEditCURP: TcxButtonEdit;
    procedure actCerrarExecute(Sender: TObject);
    procedure actGuardarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBImageComboBox1Enter(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    function Validate : Boolean;
    procedure HabilitarControles(habilitar : Boolean);
  public
    { Public declarations }
    ModoRegistro : integer;
  end;

var
  frmEmpleados: TfrmEmpleados;

implementation

{$R *.dfm}

uses dMain, fPrincipal, uGlobales;

procedure TfrmEmpleados.actCerrarExecute(Sender: TObject);
begin
     if dmMain.dsEmpleadosEdit.DataSet.State in [dsInsert, dsEdit] then
        begin
             dmMain.dsEmpleadosEdit.DataSet.Cancel;
             dmMain.dsEmpleadosCursosEdit.DataSet.Cancel;
        end;
     ModalResult := mrCancel;
end;

procedure TfrmEmpleados.actGuardarExecute(Sender: TObject);
begin
     if dmMain.dsEmpleadosEdit.DataSet.State in [dsInsert, dsEdit] then
        if Validate then
           begin
                dmMain.dsEmpleadosEdit.DataSet.Post;
                dmMain.dsEmpleadosCursosEdit.DataSet.Post;
                dmMain.dsEmpleadosSocioEconomicoEdit.DataSet.Post;

                ModalResult := mrOk;
           end;
end;

procedure TfrmEmpleados.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
     if OpenDialog1.Execute then
        begin
             btnEditCURP.Hint := OpenDialog1.FileName;
             btnEditCURP.Properties.Buttons[0].Kind := bkGlyph;
        end;
end;

procedure TfrmEmpleados.cxDBImageComboBox1Enter(Sender: TObject);
begin
     SelectNext(ActiveControl,True,True)
end;

procedure TfrmEmpleados.FormCreate(Sender: TObject);
begin
     dmMain.qryEmpleadosEdit.Open;
     dmMain.qryEmpleadosCursosEdit.Open;
     dmMain.qryEmpleadosSocioEconomicoEdit.Open;

     cxPageControl1.DoubleBuffered := True;
end;

procedure TfrmEmpleados.FormKeyPress(Sender: TObject; var Key: Char);
begin
     {
     if key = #27 then
        if dmMain.dsEmpleadosEdit.DataSet.State = dsBrowse then
           actCerrar.Execute;
        }

     if key = #13 then
        begin
             key := #0;
             SelectNext(ActiveControl,True,True)
        end;
end;

procedure TfrmEmpleados.FormShow(Sender: TObject);
begin
     if dmMain.dsEmpleadosEdit.DataSet.State = dsInsert then
        Caption := 'Empleados (nuevo)';
     if dmMain.dsEmpleadosEdit.DataSet.State = dsEdit then
        Caption := 'Empleados (modificar)';
     if dmMain.dsEmpleadosEdit.DataSet.State = dsBrowse then
        Caption := 'Empleados (consultar)';

     actGuardar.Enabled                 := dmMain.dsEmpleadosEdit.DataSet.State in [dsInsert, dsEdit];
     actGuardar.Visible                 := dmMain.dsEmpleadosEdit.DataSet.State in [dsInsert, dsEdit];
     xNombres.Enabled                   := dmMain.dsEmpleadosEdit.DataSet.State in [dsInsert, dsEdit];
     xapellido_paterno.Enabled          := dmMain.dsEmpleadosEdit.DataSet.State in [dsInsert, dsEdit];
     xapellido_materno.Enabled          := dmMain.dsEmpleadosEdit.DataSet.State in [dsInsert, dsEdit];
     xsexo.Enabled                      := dmMain.dsEmpleadosEdit.DataSet.State in [dsInsert, dsEdit];

     btnCredencial.Visible  := dmMain.dsEmpleadosEdit.DataSet.State in [dsEdit, dsBrowse];
     btnHojaTecnica.Visible := dmMain.dsEmpleadosEdit.DataSet.State in [dsEdit, dsBrowse];
     btnCedula.Visible      := dmMain.dsEmpleadosEdit.DataSet.State in [dsEdit, dsBrowse];

     HabilitarControles(dmMain.dsEmpleadosEdit.DataSet.State in [dsInsert, dsEdit]);

     if dmMain.dsEmpleadosEdit.DataSet.State in [dsEdit, dsBrowse] then
        dmMain.CargaFotoEmpleado(_Globales.Empresa, dmMain.dsEmpleadosEdit.DataSet.FieldByName('empleado_id').AsInteger);

     lblTituloBaja.Visible      := dmMain.dsEmpleadosEdit.DataSet.FieldByName('activo').AsString = '0';
     lblFechaBaja.Visible       := dmMain.dsEmpleadosEdit.DataSet.FieldByName('activo').AsString = '0';
     xFechaBaja.Visible         := dmMain.dsEmpleadosEdit.DataSet.FieldByName('activo').AsString = '0';
     lblMotivoBaja.Visible      := dmMain.dsEmpleadosEdit.DataSet.FieldByName('activo').AsString = '0';
     xMotivoBaja.Visible        := dmMain.dsEmpleadosEdit.DataSet.FieldByName('activo').AsString = '0';
//     lblComentariosBaja.Visible := dmMain.dsEmpleadosEdit.DataSet.FieldByName('activo').AsString = '0';
//     xObservacionesBaja.Visible := dmMain.dsEmpleadosEdit.DataSet.FieldByName('activo').AsString = '0';

     cxTabSheet10.TabVisible := dmMain.dsEmpleadosEdit.DataSet.State <> dsInsert;
end;

procedure TfrmEmpleados.HabilitarControles(habilitar: Boolean);
var
   p, c : Integer;
begin
     for p := 0 to cxPageControl1.PageCount -1 do
         for c := 0 to cxPageControl1.Pages[p].ControlCount - 1 do
             if not(cxPageControl1.Pages[p].Controls[c] is TcxLabel) and (cxPageControl1.Pages[p].Controls[c].Tag = 0) then
                cxPageControl1.Pages[p].Controls[c].Enabled := habilitar;
end;

function TfrmEmpleados.Validate: Boolean;
var
   msg : string;
begin
     if Trim(xNombres.Text) = '' then
        msg := '- Debe capturar el Nombre';
     if Trim(xapellido_paterno.Text) = '' then
        msg := msg + ifthen(Trim(msg)<>'',#13#10+'- Debe capturar el Apellido Paterno','- Debe capturar el Apellido Paterno');

     Result := Trim(msg)='';

     if Trim(msg)<>'' then
        MessageDlg(msg,mtError,[mbOK],0)
     else
         if dmMain.dsEmpleadosEdit.DataSet.State = dsInsert then
            begin
                 msg := Trim(xNombres.Text) + ' ' + Trim(xapellido_paterno.Text) + ' ' + Trim(xapellido_materno.Text);
                 msg := Trim(msg);
                 if dmMain.ExisteEmpleado(msg) then
                    begin
                         msg := 'El empleado ' + msg + #13 + #10 + 'ya se encuentra registrado en el sistema';
                         MessageDlg(msg,mtError,[mbOK],0);
                         Result := False;
                    end;
            end;
end;

end.

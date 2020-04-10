unit UntMain;

interface

uses
  FMX.Controls,
  FMX.Controls.Presentation,
  FMX.Dialogs,
  FMX.Edit,
  FMX.Forms,
  FMX.Graphics,
  FMX.Layouts,
  FMX.Objects,
  FMX.StdCtrls,
  FMX.TabControl,
  FMX.Types,

  System.Classes,
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Variants,

  Mobile100.Lib, FMX.MultiView;

type
  TFrmMain = class(TForm)
    lytMain: TLayout;
    tbcMain: TTabControl;
    tbiLogin: TTabItem;
    TabItem2: TTabItem;
    lytNavegacao: TLayout;
    toolLogin: TLayout;
    recToolLogin: TRectangle;
    lblTituloLogin: TLabel;
    recBack: TRectangle;
    lytBoxLogin: TLayout;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Layout1: TLayout;
    lblNaoTemCadastro: TLabel;
    swtLembrarSenha: TSwitch;
    lytBtnLogin: TLayout;
    recBtnLogin: TRectangle;
    lblBtnLogin: TLabel;
    speBtnLogin: TSpeedButton;
    lytLoginAlternativo: TLayout;
    lytBtnFacebook: TLayout;
    Rectangle1: TRectangle;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    lytBtnGoogle: TLayout;
    Rectangle2: TRectangle;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    lytEmail: TLayout;
    Rectangle3: TRectangle;
    Label3: TLabel;
    SpeedButton3: TSpeedButton;
    mtvMenu: TMultiView;
    procedure FormCreate(Sender: TObject);
    procedure speBtnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses
  UntDM,
  UntCadClientes;

{$R *.fmx}

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  tbcMain.TabPosition := TTabPosition.None;
  tbcMain.ActiveTab   := tbiLogin;

  TLibrary.ActiveForm := nil;
  TLibrary.MainMenu   := mtvMenu;
  TLibrary.LayoutMain := lytNavegacao;

  mtvMenu.HideMaster;
end;

procedure TFrmMain.speBtnLoginClick(Sender: TObject);
begin
  //Chamar o formulário de Clientes
  TLibrary.OpenForm(TFrmCadClientes, nil);
  tbcMain.Next();
end;

end.

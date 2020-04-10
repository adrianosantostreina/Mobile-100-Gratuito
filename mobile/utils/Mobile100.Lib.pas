unit Mobile100.Lib;

interface

uses
  System.SysUtils,
  System.Classes,
  System.StrUtils,

  FMX.Types,
  FMX.StdCtrls,
  FMX.Layouts,
  FMX.MultiView,
  FMX.Forms;

type
  TLibrary = class
    private
      class var FActiveForm : TForm;
      class var FLayoutMain : TLayout;
      class var FMainMenu   : TMultiView;
    public
      class procedure OpenForm(const AFormClass: TComponentClass; ATarget: TFMXObject);


      class property ActiveForm : TForm      read FActiveForm write FActiveForm;
      class property LayoutMain : TLayout    read FLayoutMain write FLayoutMain;
      class property MainMenu   : TMultiView read FMainMenu   write FMainMenu;
  end;

implementation

{ TLibrary }

class procedure TLibrary.OpenForm(const AFormClass: TComponentClass;
  ATarget: TFMXObject);

var
  LLayoutBase : TComponent;
  LBotaoMenu  : TComponent;
begin
  if ATarget = nil then
    ATarget := LayoutMain;

  if Assigned(FActiveForm) then
  begin
    if FActiveForm.ClassType = AFormClass then
    begin
      MainMenu.HideMaster;
      exit;
    end
    else
    begin
      ActiveForm.DisposeOf;
      ActiveForm := nil;
    end;
  end;

  Application.CreateForm(AFormClass, FActiveForm);

  LLayoutBase := ActiveForm.FindComponent('lytGeral');
  LBotaoMenu  := ActiveForm.FindComponent('speBtnMenu');

  if Assigned(LLayoutBase) then
  begin
    TLayout(ATarget).AddObject(TLayout(LLayoutBase));
    if Assigned(LBotaoMenu) then
      MainMenu.MasterButton := TSpeedButton(LBotaoMenu);
    MainMenu.HideMaster;
  end;
end;

end.

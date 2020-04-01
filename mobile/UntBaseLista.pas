unit UntBaseLista;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TFrmBaseLista = class(TForm)
    Label1: TLabel;
    ToolBar1: TToolBar;
    Rectangle1: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBaseLista: TFrmBaseLista;

implementation

uses
  UntDM;

{$R *.fmx}

end.

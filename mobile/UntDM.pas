unit UntDM;

interface

uses
  Data.DB,

  FMX.Objects,

  FireDAC.Comp.Client,
  FireDAC.FMXUI.Wait,
  FireDAC.Phys,
  FireDAC.Phys.Intf,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.Async,
  FireDAC.Stan.Def,
  FireDAC.Stan.Error,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Pool,
  FireDAC.UI.Intf,

  System.Classes,
  System.IOUtils,
  System.SysUtils;

type
  TDM = class(TDataModule)
    fdConn: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    procedure fdConnBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDM.fdConnBeforeConnect(Sender: TObject);
begin
  {$IFDEF MSWINDOWS}
    fdConn.Params.Values['Database'] :=
      'D:\2. Exemplos Públicos\Mobile 100 Gratuito\mobile\database\mobil100.db';
  {$ELSE}
    fdConn.Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'mobil100.db');
    fdConn.Params.Values['OpenMode'] := 'ReadWrite';
  {$ENDIF}
end;

end.

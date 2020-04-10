program Mobil100Gratis;

uses
  System.StartUpCopy,
  FMX.Forms,
  UntMain in 'UntMain.pas' {FrmMain},
  UntBaseLista in 'UntBaseLista.pas' {FrmBaseLista},
  UntDM in 'UntDM.pas' {DM: TDataModule},
  UntCadClientes in 'UntCadClientes.pas' {FrmCadClientes},
  Mobile100.Lib in 'utils\Mobile100.Lib.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.

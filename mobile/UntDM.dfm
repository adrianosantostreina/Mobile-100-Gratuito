object DM: TDM
  OldCreateOrder = False
  Height = 389
  Width = 554
  object fdConn: TFDConnection
    Params.Strings = (
      
        'Database=D:\2. Exemplos P'#250'blicos\Mobile 100 Gratuito\mobile\data' +
        'base\mobil100.db'
      'OpenMode=ReadWrite'
      'DriverID=SQLite')
    LoginPrompt = False
    BeforeConnect = fdConnBeforeConnect
    Left = 64
    Top = 40
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 416
    Top = 48
  end
end

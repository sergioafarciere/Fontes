object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 402
  Width = 685
  object sqlConexao: TSQLConnection
    ConnectionName = 'MSSQLConnection'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbxmss30.dll'
    LoginPrompt = False
    Params.Strings = (
      'SchemaOverride=sa.dbo'
      'DriverName=MSSQL'
      'HostName=DESKTOP-G957N5G\POSEIDON'
      'DataBase=ESCOLA'
      'User_Name=sa'
      'Password=1234'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=False'
      'Prepare SQL=False')
    VendorLib = 'oledb'
    Connected = True
    Left = 24
    Top = 16
  end
end

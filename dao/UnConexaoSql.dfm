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
    Left = 320
    Top = 8
  end
  object dstSelect: TSQLDataSet
    SchemaName = 'dbo'
    CommandText = 'select * from ESCOLA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ESCNOME'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 24
    Top = 80
    object dstSelectID: TIntegerField
      FieldName = 'ID'
    end
    object dstSelectESCNOME: TStringField
      FieldName = 'ESCNOME'
      Size = 30
    end
    object dstSelectESCTIP: TStringField
      FieldName = 'ESCTIP'
      Size = 8
    end
    object dstSelectESCCPFCNPJ: TStringField
      FieldName = 'ESCCPFCNPJ'
      Size = 14
    end
  end
  object dstInsert: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'INSERT INTO [dbo].[ESCOLA]'#13#10'           ([ID]'#13#10'           ,[ESCNO' +
      'ME]'#13#10'           ,[ESCTIP]'#13#10'           ,[ESCCPFCNPJ])'#13#10'     VALUE' +
      'S'#13#10'           (:ID ,:ESCNOME,:ESCTIP,:ESCCPFCNPJ)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCNOME'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCTIP'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCCPFCNPJ'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 120
    Top = 80
  end
  object dstUpdate: TSQLDataSet
    SchemaName = 'dbo'
    CommandText = 
      'UPDATE [dbo].[ESCOLA]'#13#10'   SET [ESCNOME] = :ESCNOME'#13#10' WHERE ID = ' +
      ':ID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ESCNOME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 200
    Top = 80
  end
  object dstDelete: TSQLDataSet
    SchemaName = 'dbo'
    CommandText = 'DELETE FROM [dbo].[ESCOLA] WHERE ID = :ID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 272
    Top = 80
  end
  object dspSelect: TDataSetProvider
    DataSet = dstSelect
    Left = 24
    Top = 152
  end
  object cdsSelect: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ESCNOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspSelect'
    Left = 24
    Top = 224
    object cdsSelectID: TIntegerField
      FieldName = 'ID'
    end
    object cdsSelectESCNOME: TStringField
      FieldName = 'ESCNOME'
      Size = 30
    end
    object cdsSelectESCTIP: TStringField
      FieldName = 'ESCTIP'
      Size = 8
    end
    object cdsSelectESCCPFCNPJ: TStringField
      FieldName = 'ESCCPFCNPJ'
      Size = 14
    end
  end
end

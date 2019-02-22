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
    object dstSelectESCCEP: TIntegerField
      FieldName = 'ESCCEP'
      Required = True
    end
    object dstSelectESCUF: TStringField
      FieldName = 'ESCUF'
      Required = True
      Size = 2
    end
    object dstSelectESCEND: TStringField
      FieldName = 'ESCEND'
      Required = True
      Size = 30
    end
    object dstSelectESCNUM: TStringField
      FieldName = 'ESCNUM'
      Required = True
      Size = 8
    end
    object dstSelectESCBAI: TStringField
      FieldName = 'ESCBAI'
      Required = True
    end
    object dstSelectESCCID: TStringField
      FieldName = 'ESCCID'
      Required = True
    end
    object dstSelectESCCOMP: TStringField
      FieldName = 'ESCCOMP'
      Size = 50
    end
    object dstSelectESCEMAIL: TStringField
      FieldName = 'ESCEMAIL'
      Size = 35
    end
    object dstSelectESCCONT: TStringField
      FieldName = 'ESCCONT'
    end
    object dstSelectESCTEL: TIntegerField
      FieldName = 'ESCTEL'
    end
    object dstSelectESCOBS: TStringField
      FieldName = 'ESCOBS'
      Size = 150
    end
  end
  object dstInsert: TSQLDataSet
    SchemaName = 'sa'
    CommandText = 
      'INSERT INTO [dbo].[ESCOLA]'#13#10'           ([ID]'#13#10'           ,[ESCNO' +
      'ME]'#13#10'           ,[ESCTIP]'#13#10'           ,[ESCCPFCNPJ]'#13#10'           ' +
      ',[ESCCEP]'#13#10'           ,[ESCUF]'#13#10'           ,[ESCEND]'#13#10'          ' +
      ' ,[ESCNUM]'#13#10'           ,[ESCBAI]'#13#10'           ,[ESCCID]'#13#10'        ' +
      '   ,[ESCCOMP]'#13#10'           ,[ESCEMAIL]'#13#10'           ,[ESCCONT]'#13#10'  ' +
      '         ,[ESCTEL]'#13#10'           ,[ESCOBS])'#13#10'     VALUES'#13#10'        ' +
      '   (:ID'#13#10'           ,:ESCNOME'#13#10'           ,:ESCTIP'#13#10'           ,' +
      ':ESCCPFCNPJ'#13#10'           ,:ESCCEP '#13#10'           ,:ESCUF'#13#10'         ' +
      '  ,:ESCEND'#13#10'           ,:ESCNUM'#13#10'           ,:ESCBAI'#13#10'          ' +
      ' ,:ESCCID'#13#10'           ,:ESCCOMP'#13#10'           ,:ESCEMAIL'#13#10'        ' +
      '   ,:ESCCONT'#13#10'           ,:ESCTEL'#13#10'           ,:ESCOBS)'
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
      end
      item
        DataType = ftUnknown
        Name = 'ESCCEP'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCUF'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCEND'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCNUM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCBAI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCCID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCCOMP'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCEMAIL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCCONT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCTEL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCOBS'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 112
    Top = 80
  end
  object dstUpdate: TSQLDataSet
    SchemaName = 'dbo'
    CommandText = 
      'UPDATE [dbo].[ESCOLA]'#13#10'   SET [ESCNOME] = :ESCNOME'#13#10'      ,[ESCT' +
      'IP] = :ESCTIP'#13#10'      ,[ESCCPFCNPJ] = :ESCCPFCNPJ'#13#10'      ,[ESCCEP' +
      '] = :ESCCEP'#13#10'      ,[ESCUF] = :ESCUF'#13#10'      ,[ESCEND] = :ESCEND'#13 +
      #10'      ,[ESCNUM] = :ESCNUM'#13#10'      ,[ESCBAI] = :ESCBAI'#13#10'      ,[E' +
      'SCCID] = :ESCCID'#13#10'      ,[ESCCOMP] = :ESCCOMP'#13#10'      ,[ESCEMAIL]' +
      ' = :ESCEMAIL'#13#10'      ,[ESCCONT] = :ESCCONT'#13#10'      ,[ESCTEL] = :ES' +
      'CTEL'#13#10'      ,[ESCOBS] = :ESCOBS'#13#10' WHERE ID = :ID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
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
      end
      item
        DataType = ftUnknown
        Name = 'ESCCEP'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCUF'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCEND'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCNUM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCBAI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCCID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCCOMP'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCEMAIL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCCONT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCTEL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ESCOBS'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
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
    object cdsSelectESCDATCAD: TSQLTimeStampField
      FieldName = 'ESCDATCAD'
    end
    object cdsSelectESCCEP: TIntegerField
      FieldName = 'ESCCEP'
      Required = True
    end
    object cdsSelectESCUF: TStringField
      FieldName = 'ESCUF'
      Required = True
      Size = 2
    end
    object cdsSelectESCEND: TStringField
      FieldName = 'ESCEND'
      Required = True
      Size = 30
    end
    object cdsSelectESCNUM: TStringField
      FieldName = 'ESCNUM'
      Required = True
      Size = 8
    end
    object cdsSelectESCBAI: TStringField
      FieldName = 'ESCBAI'
      Required = True
    end
    object cdsSelectESCCID: TStringField
      FieldName = 'ESCCID'
      Required = True
    end
    object cdsSelectESCCOMP: TStringField
      FieldName = 'ESCCOMP'
      Size = 50
    end
    object cdsSelectESCEMAIL: TStringField
      FieldName = 'ESCEMAIL'
      Size = 35
    end
    object cdsSelectESCCONT: TStringField
      FieldName = 'ESCCONT'
    end
    object cdsSelectESCTEL: TIntegerField
      FieldName = 'ESCTEL'
    end
    object cdsSelectESCOBS: TStringField
      FieldName = 'ESCOBS'
      Size = 150
    end
  end
end

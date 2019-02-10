unit UnConexaoSql;

interface

uses
  SysUtils, Classes, WideStrings, DB, SqlExpr;

type
  TdmConexao = class(TDataModule)
    sqlConexao: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

{$R *.dfm}

end.

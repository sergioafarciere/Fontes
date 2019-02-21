unit UnConexaoSql;

interface

uses

  SysUtils, FMTBcd, DB, SqlExpr, DBClient, Provider, Classes, UnModelEscola,
  WideStrings;

type
  TdmConexao = class(TDataModule)
    sqlConexao: TSQLConnection;
    dstSelect: TSQLDataSet;
    dstInsert: TSQLDataSet;
    dstUpdate: TSQLDataSet;
    dstDelete: TSQLDataSet;
    cdsSelect: TClientDataSet;
    cdsSelectID: TIntegerField;
    cdsSelectESCNOME: TStringField;
    cdsSelectESCTIP: TStringField;
    dstSelectID: TIntegerField;
    dstSelectESCNOME: TStringField;
    dstSelectESCTIP: TStringField;
    dspSelect: TDataSetProvider;
    dstSelectESCCPFCNPJ: TStringField;
    cdsSelectESCCPFCNPJ: TStringField;

  private
    { Private declarations }
  public
    function gerarId : Integer;
    function Inserir(oEscola : TEscola; out sErro: string): Boolean;
    function Alterar(oEscola : TEscola; out sErro: string): Boolean;
    function Excluir(iCodigo : Integer; out sErro: string): Boolean;
    procedure Pesquisar(sNome: string);
    procedure CarregarDados(oEscola :TEscola; iCodigo: Integer);
  end;
var
  dmConexao: TdmConexao;

implementation

{$R *.dfm}

{ TdmConexao }
{$REGION'METODO GERAR ID'}
function TdmConexao.gerarId: Integer;
var
 sqlsequencia : TSQLDataSet;
 dmConexao: TdmConexao;
begin
sqlsequencia := TSQLDataSet.Create(nil);
dmConexao := TdmConexao.Create(nil);
try
  sqlsequencia.SQLConnection := dmConexao.sqlConexao;
  sqlsequencia.CommandText := 'select coalesce(max(ID),0) + 1 as ID from ESCOLA';
  sqlsequencia.Open;
  Result := sqlsequencia.FieldByName('ID').AsInteger;
finally
FreeAndNil(sqlsequencia);
end;
end;
{$ENDREGION}

{$REGION'METODO INSERIR'}
function TdmConexao.Inserir(oEscola: TEscola; out sErro: string): Boolean;
begin
  dstInsert.ParamByName('ID').AsInteger := oEscola.ID;
  dstInsert.ParamByName('ESCNOME').AsString := oEscola.Nome;
  dstInsert.ParamByName('ESCTIP').AsString := oEscola.TPessoa;
  dstInsert.ParamByName('ESCCPFCNPJ').AsString := oEscola.CPF_CNPJ;
  try
    dstInsert.ExecSQL();
    Result := True;
  except on E: Exception do
    begin
    sErro := 'Ocorreu uma falha ao inserir' + sLineBreak + E.Message;
    Result := False;
    end;
 end;
end;


{$ENDREGION}

{$REGION'METODO ALTERAR'}
function TdmConexao.Alterar(oEscola: TEscola; out sErro: string): Boolean;
begin
  dstUpdate.ParamByName('ESCNOME').AsString := oEscola.Nome;
  dstUpdate.ParamByName('ID').AsInteger := oEscola.ID;
  try
    dstUpdate.ExecSQL();
    Result := True;
  except on E: Exception do
    begin
      sErro := 'Ocorreu um erro ao ser alterado' + sLineBreak + E.Message;
      Result := False;
    end;
  end;
end;
{$ENDREGION}

{$REGION'METODO EXCLUIR'}
function TdmConexao.Excluir(iCodigo: Integer; out sErro: string): Boolean;
begin
  dstDelete.ParamByName('ID').AsInteger := iCodigo;
  try
    dstDelete.ExecSQL();
    Result := True;
  except on E: Exception do
    begin
    sErro := 'Ocorreu uma falha ao excluir' + sLineBreak + E.Message;
    Result := False;
    end;
  end;
end;
{$ENDREGION}

{$REGION'METODO CARREGAR'}
procedure TdmConexao.CarregarDados(oEscola: TEscola; iCodigo: Integer);
var
  sqlEscola : TSQLDataSet;
begin
  sqlEscola := TSQLDataSet.Create(nil);
  try
    sqlEscola.SQLConnection := sqlConexao;
    sqlEscola.CommandText := 'select * from ESCOLA where (ID = ' + IntToStr(iCodigo) + ')' ;
    sqlEscola.Open;
    with oEscola do
    begin
      ID := sqlEscola.FieldByName('ID').AsInteger;
      Nome := sqlEscola.FieldByName('ESCNOME').AsString;
    end;
  finally
  FreeAndNil(sqlEscola);
  end;
end;

{$ENDREGION}

{$REGION'METODO PESQUISAR'}
procedure TdmConexao.Pesquisar(sNome: string);
begin
  if cdsSelect.Active then
    cdsSelect.Close;
    cdsSelect.Params.ParamByName('ESCNOME').AsString := '%' + sNome + '%';
    cdsSelect.Open;
    cdsSelect.First;
  end;
{$ENDREGION}

end.

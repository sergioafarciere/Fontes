unit UnControllerEscola;

interface

uses UnModelEscola, UnConexaoSql, SysUtils ;

type
  TEscolaController = class
     private
       { private declarations }
     public
       function Inserir(oEscola: TEscola; var sErro: string): Boolean;
       function Alterar(oEscola: TEscola; var sErro: string): Boolean;
       function Excluir(iCodigo: Integer; var sErro: string): Boolean;
       function RetornarId : Integer;
//       function ObterDataAtual : TDateTime;
       procedure Pesquisar(sNome: string);
       procedure CarregarEscola(oEscola : TEscola; iCodigo: Integer);
     end;

implementation

{ TEscolaController }
{$REGION'CONTROLLER ALTERAR'}
function TEscolaController.Alterar(oEscola: TEscola;var sErro: string): Boolean;
begin
  Result := dmConexao.Alterar(oEscola,sErro);
end;
{$ENDREGION}

{$REGION'CONTROLLER CARREGAR'}
procedure TEscolaController.CarregarEscola(oEscola: TEscola; iCodigo: Integer);
begin
  dmConexao.CarregarDados(oEscola,iCodigo);
end;

{$ENDREGION}

{$REGION'CONTROLLER EXCLUIR'}
function TEscolaController.Excluir(iCodigo: Integer; var sErro: string): Boolean;
begin
  Result := dmConexao.Excluir(iCodigo,sErro);
end;
{$ENDREGION}

{$REGION'CONTROLLER INSERIR'}
function TEscolaController.Inserir(oEscola: TEscola; var sErro: string): Boolean;
begin
  Result := dmConexao.Inserir(oEscola,sErro);
end;

{$ENDREGION}

{$REGION'CONTROLLER PESQUISAR'}
procedure TEscolaController.Pesquisar(sNome: string);
begin
  dmConexao.Pesquisar(sNome);
end;
{$ENDREGION}

{$REGION'CONTROLLER RETORNA ID'}
function TEscolaController.RetornarId: Integer;
begin
  Result := dmConexao.gerarId;
end;
{$ENDREGION}

//{$region'OBTER DATA ATUAL'}
//function TEscolaController.ObterDataAtual: TDateTime;
//begin
//   Result := dmConexao.ObterDataAtual;
//end;
//{$ENDREGION}

end.

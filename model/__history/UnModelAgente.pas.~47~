unit UnModelAgente;

interface

uses SysUtils;

type TAgente = class
  private
    FID: Integer;
    FNome: string;
    FTPessoa: string;
    FCPF_CNPJ: string;
    FCEP: Integer;
    FUF: string;
    FEndereco: string;
    FNumero: string;
    FEmail: string;
    FBairro: string;
    FComplemento: string;
    FContato: string;
    FCidade: string;
    FTelefone: Integer;
    FDataCadastro: TDateTime;
    FObservacao: string;
    procedure setNome(const Value: string);
    procedure SetTPessoa(const Value: string);
    procedure SetCPF_CNPJ(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetUF(const Value: string);
    procedure SetEndereco(const Value: string);
    procedure SetNumero(const Value: string);
    procedure SetBairro(const Value: string);
    procedure SetCidade(const Value: string);
    procedure SetComplemento(const Value: string);
    procedure SetContato(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetTelefone(const Value: Integer);
    procedure SetObservacao(const Value: string);
  public
    property ID : Integer read FID write FID;
    property Nome : string read FNome write setNome;
    property TPessoa : string read FTPessoa write SetTPessoa;
    property CPF_CNPJ : string read FCPF_CNPJ write SetCPF_CNPJ;
    property CEP : Integer read FCEP write SetCEP;
    property UF : string read FUF write SetUF;
    property Endereco : string read FEndereco write SetEndereco;
    property Numero : string read FNumero write SetNumero;
    property Bairro : string read FBairro write SetBairro;
    property Cidade : string read FCidade write SetCidade;
    property Complemento : string read FComplemento write SetComplemento;
    property Email : string read FEmail write SetEmail;
    property Contato : string read FContato write SetContato;
    property Telefone : Integer read FTelefone write SetTelefone;
    property Observacao : string read FObservacao write SetObservacao;
    property DataCadastro : TDateTime read FDataCadastro write FDataCadastro;
    function ObterDataCadastro : TDateTime;
end;

implementation

{ TAgente }

function TAgente.ObterDataCadastro: TDateTime;
begin
  Result := FDataCadastro;
end;

procedure TAgente.SetBairro(const Value: string);
begin
  FBairro := Value;
end;

procedure TAgente.SetCEP(const Value: Integer);
begin
  FCEP := Value;
end;

procedure TAgente.SetCidade(const Value: string);
begin
  FCidade := Value;
end;

procedure TAgente.SetComplemento(const Value: string);
begin
  FComplemento := Value;
end;

procedure TAgente.SetContato(const Value: string);
begin
  FContato := Value;
end;

procedure TAgente.SetCPF_CNPJ(const Value: string);
begin
  FCPF_CNPJ := Value;
end;

procedure TAgente.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TAgente.SetEndereco(const Value: string);
begin
  FEndereco := Value;
end;

procedure TAgente.setNome(const Value: string);
begin
//if Value = EmptyStr then
//  raise Exception.Create('Valor não pode ser vázio')
//else
  FNome := Value;
end;

procedure TAgente.SetNumero(const Value: string);
begin
  FNumero := Value;
end;

procedure TAgente.SetObservacao(const Value: string);
begin
  FObservacao := Value;
end;

procedure TAgente.SetTelefone(const Value: Integer);
begin
  FTelefone := Value;
end;

procedure TAgente.SetTPessoa(const Value: string);
begin
  FTPessoa := Value;
end;

procedure TAgente.SetUF(const Value: string);
begin
  FUF := Value;
end;

end.

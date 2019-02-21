unit UnModelAgente;

interface

uses SysUtils;

type TAgente = class
  private
    FID: Integer;
    FNome: string;
    FTPessoa: string;
    FCPF_CNPJ: string;
    procedure setNome(const Value: string);
    procedure SetTPessoa(const Value: string);
    procedure SetCPF_CNPJ(const Value: string);
  public
    property ID : Integer read FID write FID;
    property Nome : string read FNome write setNome;
    property TPessoa : string read FTPessoa write SetTPessoa;
    property CPF_CNPJ : string read FCPF_CNPJ write SetCPF_CNPJ;
end;

implementation

{ TAgente }

procedure TAgente.SetCPF_CNPJ(const Value: string);
begin
  FCPF_CNPJ := Value;
end;

procedure TAgente.setNome(const Value: string);
begin
//if Value = EmptyStr then
//  raise Exception.Create('Valor n�o pode ser v�zio')
//else
  FNome := Value;
end;

procedure TAgente.SetTPessoa(const Value: string);
begin
  FTPessoa := Value;
end;

end.

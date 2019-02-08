unit UnModelAgente;

interface

uses SysUtils;

type TAgente = class
  private
    FID: Integer;
    FNome: string;
    procedure setID(const Value: Integer);
    procedure setNome(const Value: string);
  public
    property ID : Integer read FID write setID;
    property Nome : string read FNome write setNome;
end;

implementation

{ TAgente }

procedure TAgente.setID(const Value: Integer);
begin
if Value = EmptyStr then
 raise Exception.Create('Valor não pode ser vázio')
else
 FID := Value;
end;

procedure TAgente.setNome(const Value: string);
begin
if Value = EmptyStr then
  raise Exception.Create('Valor não pode ser vázio')
else
  FNome := Value;
end;

end.

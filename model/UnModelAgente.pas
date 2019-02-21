unit UnModelAgente;

interface

uses SysUtils;

type TAgente = class
  private
    FID: Integer;
    FNome: string;
    procedure setNome(const Value: string);
  public
    function Excluir : Boolean; virtual;
    function Gravar : Boolean; virtual;
    property ID : Integer read FID write FID;
    property Nome : string read FNome write setNome;
end;

implementation

{ TAgente }

function TAgente.Excluir: Boolean;
begin
  Result := True;
end;

function TAgente.Gravar: Boolean;
begin
  Result := True;
end;

procedure TAgente.setNome(const Value: string);
begin
if Value = EmptyStr then
  raise Exception.Create('Valor n�o pode ser v�zio')
else
  FNome := Value;
end;

end.

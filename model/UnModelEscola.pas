unit UnModelEscola;

interface

uses UnModelAgente;

type
  TEscola = class(TAgente)
     private
       { private declarations }
     protected
       { protected declarations }
     public
      function Excluir :Boolean; override;
      function Gravar :Boolean; override;
     end;


implementation

{ TEscola }

function TEscola.Excluir: Boolean;
begin
  Result := True;
end;

function TEscola.Gravar: Boolean;
begin
  Result := True;
end;

end.

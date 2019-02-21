unit UnControllerAgente;

interface

type
  TAgenteController = class
     private
       { private declarations }
     public
     function Excluir : Boolean; virtual;
     function Gravar : Boolean; virtual;
     end;

implementation

{ TAgenteController }

function TAgenteController.Excluir: Boolean;
begin
  Result := True;
end;

function TAgenteController.Gravar: Boolean;
begin
  Result := True;
end;

end.

unit UnFrmPesqEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnFrmPesqPai, StdCtrls, Buttons, UnModelEscola, UnControllerEscola,
  Grids, DBGrids, FMTBcd, DB, SqlExpr;

type
  TfrmPesqEscola = class(TfrmPesqPai)
    procedure btnPesquisarClick(Sender: TObject);
  private
    procedure pesquisa;
  public
    { Public declarations }
  end;

var
  frmPesqEscola: TfrmPesqEscola;

implementation

{$R *.dfm}

{ TfrmPesqEscola }

procedure TfrmPesqEscola.btnPesquisarClick(Sender: TObject);
begin
  pesquisa;
end;

procedure TfrmPesqEscola.pesquisa;
var
  oEscola : TEscola;
  oEscolaController : TEscolaController;
begin
  oEscolaController := TEscolaController.Create;
  oEscola := TEscola.Create;
  try
    oEscola.Nome := edtPesquisar.Text;
//    oEscolaController.Pesquisar;
  finally
  FreeAndNil(oEscolaController);
  end;

end;

end.

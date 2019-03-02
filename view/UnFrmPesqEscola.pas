unit UnFrmPesqEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnFrmPesqPai, StdCtrls, Buttons, UnModelEscola, UnControllerEscola,
  Grids, DBGrids, FMTBcd, DB, SqlExpr, Mask, ExtCtrls, ComCtrls, UnConexaoSql;

type
  TfrmPesqEscola = class(TfrmPesqPai)
    procedure btnPesquisarClick(Sender: TObject);
  private
    procedure pesquisaCodigo;
    procedure pesquisaData;
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
inherited;
  case rdgFiltroPesquisa.ItemIndex of
  0 : pesquisaCodigo;
  1 : pesquisaData;
  end;
end;

procedure TfrmPesqEscola.pesquisaCodigo;
var
  oEscolaController : TEscolaController;
begin
  oEscolaController := TEscolaController.Create;
  try
    oEscolaController.PesquisarCodigo(StrToInt(edtCodigoInicial.Text),StrToInt(edtCodigoFinal.Text));
  finally
    FreeAndNil(oEscolaController);            
  end;
end;

procedure TfrmPesqEscola.pesquisaData;
var
  oEscolaController : TEscolaController;
begin
  oEscolaController := TEscolaController.Create;
  try
    oEscolaController.PesquisarData(DateTimeToStr(dtpDataInicial.Date),DateTimeToStr(dtpDataFinal.Date));
  finally
    FreeAndNil(oEscolaController);
  end;
end;

end.

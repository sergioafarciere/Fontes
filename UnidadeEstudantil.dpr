program UnidadeEstudantil;

uses
  Forms,
  UnFrmPrincipal in 'view\UnFrmPrincipal.pas' {frmPrincipal},
  UnModelAgente in 'model\UnModelAgente.pas',
  UnModelAluno in 'model\UnModelAluno.pas',
  UnModelEscola in 'model\UnModelEscola.pas',
  UnFrmPai in 'view\UnFrmPai.pas' {frmPai},
  UnConexaoSql in 'dao\UnConexaoSql.pas' {dmConexao: TDataModule},
  UnControllerAgente in 'controller\UnControllerAgente.pas',
  UnFrmCadAluno in 'view\UnFrmCadAluno.pas' {frmCadAluno},
  UnFrmCadEscola in 'view\UnFrmCadEscola.pas' {frmCadEscola},
  UnControllerEscola in 'controller\UnControllerEscola.pas',
  UnFrmPesqPai in 'view\UnFrmPesqPai.pas' {frmPesqPai},
  UnFrmPesqEscola in 'view\UnFrmPesqEscola.pas' {frmPesqEscola},
  UnFrmRelatorioEscola in 'view\UnFrmRelatorioEscola.pas' {frmRelEscola};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmRelEscola, frmRelEscola);
  Application.Run;
end.

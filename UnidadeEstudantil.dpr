program UnidadeEstudantil;

uses
  Forms,
  UnFrmPrincipal in 'view\UnFrmPrincipal.pas' {frmPrincipal},
  UnModelAgente in 'model\UnModelAgente.pas',
  UnModelAluno in 'model\UnModelAluno.pas',
  UnModelEscola in 'model\UnModelEscola.pas',
  UnFrmPai in 'view\UnFrmPai.pas' {frmPai},
  UnFrmCadAluno in 'view\UnFrmCadAluno.pas' {frmCadAluno},
  UnFrmCadEscola in 'view\UnFrmCadEscola.pas' {frmCadEscola};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmPai, frmPai);
  Application.CreateForm(TfrmCadAluno, frmCadAluno);
  Application.CreateForm(TfrmCadEscola, frmCadEscola);
  Application.Run;
end.

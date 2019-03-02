unit UnFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, UnFrmCadAluno, UnFrmCadEscola, UnModelAluno, UnModelEscola, UnConexaoSql, UnFrmPesqEscola;

type
  TfrmPrincipal = class(TForm)
    mMenuPrincipal: TMainMenu;
    tmCadPrincipal: TMenuItem;
    tmCadEscolaPrincipal: TMenuItem;
    tmCadAlunoPrincipal: TMenuItem;
    tmCadProfessorPrincipal: TMenuItem;
    tmCadDisciplicaPrincipal: TMenuItem;
    tmSairPrincipal: TMenuItem;
    Pesquisar1: TMenuItem;
    Escola1: TMenuItem;
    procedure tmCadEscolaPrincipalClick(Sender: TObject);
    procedure tmCadAlunoPrincipalClick(Sender: TObject);
    procedure tmSairPrincipalClick(Sender: TObject);
    procedure conexaoSQL(Sender: TObject);
    procedure Escola1Click(Sender: TObject);
    procedure Escola2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses UnFrmRelatorioEscola;


{$R *.dfm}

procedure TfrmPrincipal.conexaoSQL(Sender: TObject);
var
  sqlConexao : TdmConexao;
begin
sqlConexao := TdmConexao.Create(Self);
try
  sqlConexao.sqlConexao.Connected := True;
finally
FreeAndNil(sqlConexao);
end;

end;

procedure TfrmPrincipal.Escola1Click(Sender: TObject);
var
  frmPesqEscola : TfrmPesqEscola;
begin
try
  frmPesqEscola := TfrmPesqEscola.Create(nil);
  frmPesqEscola.ShowModal;
finally
FreeAndNil(frmPesqEscola);
end;
  
end;

procedure TfrmPrincipal.Escola2Click(Sender: TObject);
begin
  frmRelEscola := TfrmRelEscola.Create(nil);
  try
    frmRelEscola.rlrRelatorioDeEscolas.Preview;
  finally
    FreeAndNil(frmRelEscola);
  end;
end;



procedure TfrmPrincipal.tmCadAlunoPrincipalClick(Sender: TObject);
var
  frmCadAluno : TfrmCadAluno;
begin
try
  frmCadAluno := TfrmCadAluno.Create(nil);
  frmCadAluno.ShowModal;
finally
FreeAndNil(frmCadAluno);
end;

end;

procedure TfrmPrincipal.tmCadEscolaPrincipalClick(Sender: TObject);
var
  frmCadEscola : TfrmCadEscola;
begin
try
  frmCadEscola := TfrmCadEscola.Create(nil);
  frmCadEscola.ShowModal;
finally
FreeAndNil(frmCadEscola);
end;

end;

procedure TfrmPrincipal.tmSairPrincipalClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente sair?',mtConfirmation,[mbYes,mbNo],0) = IDYES then
  begin
    Close;
  end;
end;

end.

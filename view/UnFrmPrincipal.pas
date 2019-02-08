unit UnFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, UnFrmCadAluno, UnFrmCadEscola, UnModelAluno, UnModelEscola;

type
  TfrmPrincipal = class(TForm)
    mMenuPrincipal: TMainMenu;
    tmCadPrincipal: TMenuItem;
    tmCadEscolaPrincipal: TMenuItem;
    tmCadAlunoPrincipal: TMenuItem;
    tmCadProfessorPrincipal: TMenuItem;
    tmCadDisciplicaPrincipal: TMenuItem;
    tmSairPrincipal: TMenuItem;
    procedure tmCadEscolaPrincipalClick(Sender: TObject);
    procedure tmCadAlunoPrincipalClick(Sender: TObject);
    procedure tmSairPrincipalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation


{$R *.dfm}

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
  Close;
end;

end.

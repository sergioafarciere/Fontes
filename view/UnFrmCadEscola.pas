unit UnFrmCadEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnFrmPai, DB, ExtCtrls, StdCtrls, Buttons, UnModelEscola, UnConexaoSql, UnControllerEscola,
  Grids, DBGrids, FMTBcd, SqlExpr, Mask;

type
  TOperacao = (opIncluir, opAlterar, opNavegar, opExcluir, opGravar, opCancelar, opSair);
  TfrmCadEscola = class(TfrmPai)
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
  private
    FOperacao: TOperacao;
    procedure Novo;
    procedure Alterar;
    procedure Gravar;
    procedure CarregarEscola;
    procedure habilitarComandos(aOperacao : TOperacao);
    procedure Insert;
    procedure Update;
    procedure Delete;
  end;

var
  frmCadEscola: TfrmCadEscola;

implementation

{$R *.dfm}

{$region'CREATE_DESTROY'}
procedure TfrmCadEscola.FormCreate(Sender: TObject);
begin
  dmConexao := TdmConexao.Create(nil);
end;

procedure TfrmCadEscola.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dmConexao);
end;
procedure TfrmCadEscola.FormShow(Sender: TObject);
begin
  habilitarComandos(opNavegar);
end;

{$endregion}

{$region'CONTROLE DE TELA'}
procedure TfrmCadEscola.habilitarComandos;
begin
  case aOperacao of
  opAlterar, opIncluir:
  begin
    edtCodigo.Enabled := False;
    edtNome.Enabled := True;
    btnNovo.Enabled := False;;
    btnExcluir.Enabled := False;
    btnAlterar.Enabled := False;
    btnCancelar.Enabled := True;
    btnGravar.Enabled := True;
    btnSair.Enabled := False;
  end;
  opNavegar:
  begin
    edtCodigo.Enabled := True;
    edtNome.Enabled := False;
    btnNovo.Enabled := True;
    btnExcluir.Enabled := True;
    btnAlterar.Enabled := True;
    btnCancelar.Enabled := False;
    btnGravar.Enabled := False;
    btnSair.Enabled := True;
  end;
  end;
end;

procedure TfrmCadEscola.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (edtCodigo.Text <> EmptyStr)  then
  CarregarEscola;
end;

{$endregion}

{$region'OPERACOES'}

procedure TfrmCadEscola.btnAlterarClick(Sender: TObject);
begin
  Alterar;
  habilitarComandos(opAlterar);
end;

procedure TfrmCadEscola.btnCancelarClick(Sender: TObject);
begin
  habilitarComandos(opNavegar);
end;

procedure TfrmCadEscola.btnExcluirClick(Sender: TObject);
begin
  Delete;
  habilitarComandos(opExcluir);
end;

procedure TfrmCadEscola.btnGravarClick(Sender: TObject);
begin
  Gravar;
  habilitarComandos(opNavegar);
end;

procedure TfrmCadEscola.btnNovoClick(Sender: TObject);
begin
  Novo;
  habilitarComandos(opIncluir);
end;

procedure TfrmCadEscola.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadEscola.Novo;
var
  oEscolaController : TEscolaController;
begin
  oEscolaController := TEscolaController.Create;
  try
    FOperacao := opIncluir;
    edtCodigo.Text := IntToStr(oEscolaController.RetornarId);
  finally
  FreeAndNil(oEscolaController);
  end;
end;

procedure TfrmCadEscola.Alterar;
begin
  FOperacao := opAlterar;
end;

procedure TfrmCadEscola.Gravar;
begin
    case FOperacao of
      opIncluir: Insert;
      opAlterar: Update;
  end;
end;
{$endregion}

{$region'OBTER DADOS PARA METODOS CRUD'}
//CARREGAR DADOS
procedure TfrmCadEscola.CarregarEscola;
var
  oEscola : TEscola;
  oEscolaController : TEscolaController;
  iCodigo: Integer;
begin
  oEscola := TEscola.Create;
  oEscolaController := TEscolaController.Create;
  iCodigo := StrToInt(edtCodigo.Text);
  try
    oEscolaController.CarregarEscola(oEscola,iCodigo);
    edtCodigo.Text := IntToStr(oEscola.ID);
    edtNome.Text := oEscola.Nome;
    if StrToInt(edtCodigo.Text) = 0 then
      ShowMessage('Escola n�o encontrada!');
    limparCampos;
  finally
  FreeAndNil(oEscola);
  FreeAndNil(oEscolaController);
  end;
end;

//INSERIR NOVO CADASTRO
procedure TfrmCadEscola.Insert;
var
  oEscola : TEscola;
  oEscolaCotroller : TEscolaController;
  sErro: string;
begin
  oEscola := TEscola.Create;
  oEscolaCotroller := TEscolaController.Create;
  try
    oEscola.ID := StrToInt(edtCodigo.Text);
    oEscola.Nome := edtNome.Text;
    oEscola.TPessoa := cbxTipoPessoa.Text;
    oEscola.CPF_CNPJ := mskCPFCNPJ.Text;
    if not oEscolaCotroller.Inserir(oEscola,sErro) then
      raise Exception.Create(sErro)
    else
    ShowMessage('Escola cadastrada com sucesso!');
    limparCampos;
  finally
  FreeAndNil(oEscola);
  FreeAndNil(oEscolaCotroller);
  end;
end;


//ALTERAR UM CADASTRO
procedure TfrmCadEscola.Update;
var
  oEscola : TEscola;
  oEscolaController : TEscolaController;
  sErro: string;
begin
  oEscola := TEscola.Create;
  oEscolaController := TEscolaController.Create;
  try
    oEscola.ID := StrToInt(edtCodigo.Text);
    oEscola.Nome := edtNome.Text;
    if not oEscolaController.Alterar(oEscola,sErro) then
      raise Exception.Create(sErro)
    else
    ShowMessage('Escola alterada com sucesso!');
  finally
  FreeAndNil(oEscola);
  FreeAndNil(oEscolaController);
  end;
end;

//EXCLUIR ESCOLA
procedure TfrmCadEscola.Delete;
var
  oEscolaController : TEscolaController;
  sErro : string;
begin
  FOperacao := opExcluir;
  oEscolaController := TEscolaController.Create;
  try
    begin
      if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then
      begin
        if not oEscolaController.Excluir(StrToInt(edtCodigo.Text), sErro) then
        raise Exception.Create(sErro)
        else
        ShowMessage('Escola exclu�da com sucesso!');
        limparCampos;
     end;
    end
  finally
  FreeAndNil(oEscolaController);
  end;
end;


{$endregion}


end.

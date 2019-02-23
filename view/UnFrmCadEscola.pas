unit UnFrmCadEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnFrmPai, DB, ExtCtrls, StdCtrls, Buttons, UnModelEscola, UnConexaoSql, UnControllerEscola,
  Grids, DBGrids, FMTBcd, SqlExpr, Mask;

type
  TfrmCadEscola = class(TfrmPai)
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
  private
    procedure Novo;
    procedure Alterar;
    procedure Gravar;
    procedure CarregarEscola;
    procedure Insert;
    procedure Update;
    procedure Delete;
  end;
var
  frmCadEscola: TfrmCadEscola;

implementation

{$R *.dfm}
{$REGION'KEYPRESS'}
procedure TfrmCadEscola.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (edtCodigo.Text <> EmptyStr)  then
  CarregarEscola;
end;
{$ENDREGION}

{$region'OPERACOES'}

procedure TfrmCadEscola.btnAlterarClick(Sender: TObject);
begin
  Alterar;
  habilitarComandos(opAlterar);
end;

procedure TfrmCadEscola.btnCancelarClick(Sender: TObject);
begin
  habilitarComandos(opNavegar);
  limparCampos;
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
  oEscola : TEscola;
  oEscolaController : TEscolaController;
begin
  oEscola := TEscola.Create;
  oEscolaController := TEscolaController.Create;
  try
    FOperacao := opIncluir;
    edtCodigo.Text := IntToStr(oEscolaController.RetornarId);
//    mskDataCadastro.Text := FormatDateTime('DD/MM/YYYY', Now);
  finally
  FreeAndNil(oEscola);
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
    cbxTipoPessoa.Text := oEscola.TPessoa;
    mskCPFCNPJ.Text := oEscola.CPF_CNPJ;
    mskCEP.Text := IntToStr(oEscola.CEP);
    cbxUF.Text := oEscola.UF;
    edtEndereco.Text := oEscola.Endereco;
    edtNumero.Text := oEscola.Numero;
    edtBairro.Text := oEscola.Bairro;
    edtCidade.Text := oEscola.Cidade;
    edtComplemento.Text := oEscola.Complemento;
    edtEmail.Text := oEscola.Email;
    edtContato.Text := oEscola.Contato;
    mskTelefone.Text := IntToStr(oEscola.Telefone);
    mmoObservacoes.Text := oEscola.Observacao;
    if StrToInt(edtCodigo.Text) = 0 then
    begin
      ShowMessage('Escola não encontrada!');
      limparCampos;
    end;
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
    oEscola.CEP := StrToInt(mskCEP.Text);
    oEscola.UF := cbxUF.Text;
    oEscola.Endereco := edtEndereco.Text;
    oEscola.Numero := edtNumero.Text;
    oEscola.Bairro := edtBairro.Text;
    oEscola.Cidade := edtCidade.Text;
    oEscola.Complemento := edtComplemento.Text;
    oEscola.Email := edtEmail.Text;
    oEscola.Contato := edtContato.Text;
    oEscola.Telefone := StrToInt(mskTelefone.Text);
    oEscola.Observacao := mmoObservacoes.Text;
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
    oEscola.TPessoa := cbxTipoPessoa.Text;
    oEscola.CPF_CNPJ := mskCPFCNPJ.Text;
    oEscola.CEP := StrToInt(mskCEP.Text);
    oEscola.UF := cbxUF.Text;
    oEscola.Endereco := edtEndereco.Text;
    oEscola.Numero := edtNumero.Text;
    oEscola.Bairro := edtBairro.Text;
    oEscola.Cidade := edtCidade.Text;
    oEscola.Complemento := edtComplemento.Text;
    oEscola.Email := edtEmail.Text;
    oEscola.Contato := edtContato.Text;
    oEscola.Telefone := StrToInt(mskTelefone.Text);
    oEscola.Observacao := mmoObservacoes.Text;
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
  if (edtCodigo.Text = EmptyStr) or (StrToInt(edtCodigo.Text) = 0) then
     ShowMessage('Insira o código para efetuar a exclusão')
  else
    begin
      if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then
      begin
        if not oEscolaController.Excluir(StrToInt(edtCodigo.Text), sErro) then
        raise Exception.Create(sErro)
        else
        ShowMessage('Escola excluída com sucesso!');
        limparCampos;
     end;
    end
  finally
  FreeAndNil(oEscolaController);
  end;
end;

{$endregion}


end.

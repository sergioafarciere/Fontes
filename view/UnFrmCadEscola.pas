unit UnFrmCadEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnFrmPai, DB, ExtCtrls, StdCtrls, Buttons, UnModelEscola, UnConexaoSql, UnControllerEscola,
  Grids, DBGrids, FMTBcd, SqlExpr, Mask;

type
  TfrmCadEscola = class(TfrmPai)
    Label1: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure ConsultandoEscola(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
  private
    procedure Novo;
    procedure Alterar;
    procedure Gravar;
//    procedure CarregarEscola;
    procedure Insert;
    procedure Update;
    procedure Delete;
  public
    procedure CarregarEscola;
  end;
var
  frmCadEscola: TfrmCadEscola;

implementation

{$R *.dfm}
{$REGION'CONTROLE DE TELA'}
procedure TfrmCadEscola.ConsultandoEscola(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (edtCodigo.Text = EmptyStr) then
    begin
    Key := #0;
    ShowMessage('Insira um c�digo.');
  end;
  if (Key = #13) and (edtCodigo.Text <> EmptyStr)  then
  begin
    CarregarEscola;
    edtCodigo.SetFocus;
  end;
end;




{$ENDREGION}


{$region'OPERACOES'}

procedure TfrmCadEscola.btnAlterarClick(Sender: TObject);
begin
  if edtCodigo.Text = EmptyStr then
  begin
    MessageDlg('Insira o c�digo para efetuar a altera��o',mtInformation,[mbOK],0);
    habilitarComandos(opNavegar);
  end
  else
  begin
    Alterar;
    habilitarComandos(opAlterar);
  end;
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

procedure TfrmCadEscola.Novo;
var
  oEscola : TEscola;
  oEscolaController : TEscolaController;
begin
  oEscola := TEscola.Create;
  oEscolaController := TEscolaController.Create;
  try
    FOperacao := opIncluir;
    limparCampos;
    edtCodigo.Text := IntToStr(oEscolaController.RetornarId);
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
    mskTelefone.Text := oEscola.Telefone;
    mmoObservacoes.Text := oEscola.Observacao;
    if StrToInt(edtCodigo.Text) = 0 then
    begin
      MessageDlg('Escola n�o encontrada!',mtInformation,[mbOK],0);
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
    oEscola.Telefone := mskTelefone.Text;
    oEscola.Observacao := UpperCase(mmoObservacoes.Text);
    if not oEscolaCotroller.Inserir(oEscola,sErro) then
      raise Exception.Create(sErro)
    else
    MessageDlg('Escola cadastrada com sucesso!',mtInformation,[mbOK],0);
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
    oEscola.Telefone := mskTelefone.Text;
    oEscola.Observacao := UpperCase(mmoObservacoes.Text);
    if not oEscolaController.Alterar(oEscola,sErro) then
      raise Exception.Create(sErro)
    else
    MessageDlg('Escola alterada com sucesso!',mtInformation,[mbOK],0);
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
     ShowMessage('Insira o c�digo para efetuar a exclus�o')
  else
    begin
      if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then
      begin
        if not oEscolaController.Excluir(StrToInt(edtCodigo.Text), sErro) then
        raise Exception.Create(sErro)
        else
        MessageDlg('Escola exclu�da com sucesso!',mtInformation,[mbOK],0);
        limparCampos;
     end;
    end
  finally
  FreeAndNil(oEscolaController);
  end;
end;

{$endregion}


end.

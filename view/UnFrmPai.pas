unit UnFrmPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, UnModelAgente, UnConexaoSql, DB, UnModelEscola,
  Mask;

type
  TfrmPai = class(TForm)
    pnlTopPai: TPanel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    pnlBottonPai: TPanel;
    tmnPai: TTimer;
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    lblNome: TLabel;
    edtNome: TEdit;
    btnSair: TBitBtn;
    btnGravar: TBitBtn;
    lblTipoPessoa: TLabel;
    cbxTipoPessoa: TComboBox;
    lblCPFCNPJ: TLabel;
    mskCPFCNPJ: TMaskEdit;
    mskDataCadastro: TMaskEdit;
    lblCep: TLabel;
    mskCEP: TMaskEdit;
    lblUF: TLabel;
    cbxUF: TComboBox;
    lblEndereco: TLabel;
    edtEndereco: TEdit;
    lblNumero: TLabel;
    edtNumero: TEdit;
    lblBairro: TLabel;
    edtBairro: TEdit;
    lblCidade: TLabel;
    lblComplemento: TLabel;
    lblEmail: TLabel;
    edtCidade: TEdit;
    edtComplemento: TEdit;
    edtEmail: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtContato: TEdit;
    edtTelefone: TEdit;
    Label3: TLabel;
    mmoObservacoes: TMemo;
    procedure mascaraCPFCNPJ(Sender: TObject);
    procedure NavegarEnter(Sender: TObject; var Key: Char);
    procedure limparCampos;
  public

  end;

var
  frmPai: TfrmPai;

implementation

{$R *.dfm}


{ TfrmPai }

procedure TfrmPai.NavegarEnter(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmPai.limparCampos;
var
  loop: Integer;
begin
  for loop := 0 to ComponentCount - 1 do
  begin
    if Components[loop] is (TCustomEdit) then
      TEdit(Components[loop] as TCustomEdit).Clear;
    if Components[loop] is (TComboBox) then
    begin
      (Components[loop] as TComboBox).ItemIndex := -1;
      (Components[loop] as TComboBox).Text := EmptyStr;
    end;
    if Components[loop] is (TCheckBox) then
      (Components[loop] as TCheckBox).Checked := False;
  end;
end;


procedure TfrmPai.mascaraCPFCNPJ(Sender: TObject);
begin
    if cbxTipoPessoa.ItemIndex = 0 then
    begin
      lblCPFCNPJ.Caption := 'CPF';
      mskCPFCNPJ.EditMask := '999.999.999-99;0;_';
      mskCPFCNPJ.Width := 85;
    end;
    if cbxTipoPessoa.ItemIndex = 1 then
    begin
      lblCPFCNPJ.Caption := 'CNPJ';
      mskCPFCNPJ.EditMask := '99.999.999/9999-99;0;_';
      mskCPFCNPJ.Width := 108
    end;
  end;
end.

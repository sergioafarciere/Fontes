unit UnFrmPesqPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, unConexaoSql, Grids, DBGrids, FMTBcd, DB, SqlExpr,
  ExtCtrls, Mask, UnFrmPai, ComCtrls;

type
//  TOperacao = (opPesquisar, opImprimir, opCancelar);
  TfrmPesqPai = class(TForm)
    DBGrid1: TDBGrid;
    pnlPesquisaTop: TPanel;
    pnlPesquisaBottom: TPanel;
    rdgFiltroPesquisa: TRadioGroup;
    btnPesquisar: TBitBtn;
    edtCodigoInicial: TEdit;
    lblEntrePesquisaCodigo: TLabel;
    edtCodigoFinal: TEdit;
    dstPesquisa: TDataSource;
    btnImprimir: TBitBtn;
    btnSair: TBitBtn;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ValidarFiltro(Sender: TObject);
    procedure NavegarEnter(Sender: TObject; var Key: Char);
    procedure Sair;
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SomenteNumeros(Sender: TObject; var Key: Char);
  public
//    FOperacao: TOperacao;
//    procedure habilitarComandos(aOperacao : TOperacao);
  end;

var
  frmPesqPai: TfrmPesqPai;

implementation

uses UnFrmRelatorioEscola;

{$R *.dfm}
{$region'COMANDO DE BOT�ES'}
procedure TfrmPesqPai.btnSairClick(Sender: TObject);
begin
  Sair;
end;

procedure TfrmPesqPai.btnImprimirClick(Sender: TObject);
begin
  frmRelEscola := TfrmRelEscola.Create(nil);
  try
    frmRelEscola.rlrRelatorioDeEscolas.Preview;
  finally
    FreeAndNil(frmRelEscola);
  end;
end;


{$ENDREGION}

{$REGION'CONTROLE DE TELA'}
procedure TfrmPesqPai.FormCreate(Sender: TObject);
begin
  dmConexao := TdmConexao.Create(nil);
end;

procedure TfrmPesqPai.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dmConexao);
end;

procedure TfrmPesqPai.FormShow(Sender: TObject);
begin
  rdgFiltroPesquisa.ItemIndex := 0;
end;

{$ENDREGION}

{$REGION'FUN��ES'}
procedure TfrmPesqPai.NavegarEnter(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TfrmPesqPai.SomenteNumeros(Sender: TObject; var Key: Char);
begin
  if (key in ['0'..'9','8']) and (Key = #13) then
  begin
    Perform(WM_NEXTDLGCTL,0,0);
  end;
   MessageDlg('Somente N�meros',mtInformation,[mbOK],0);
   Perform(WM_NEXTDLGCTL,1,0);
end;

procedure TfrmPesqPai.Sair;
begin
  if MessageDlg('Deseja realmente sair ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    Close;
  end
  else
  Abort;
end;

procedure TfrmPesqPai.ValidarFiltro(Sender: TObject);
begin
  case rdgFiltroPesquisa.ItemIndex of
    0 :
  begin
    edtCodigoInicial.Visible := True;
    lblEntrePesquisaCodigo.Visible := True;
    lblEntrePesquisaCodigo.Left := 277;
    edtCodigoFinal.Visible := True;
    dtpDataInicial.Visible := False;
    dtpDataFinal.Visible := False;
    btnPesquisar.Left := 378;
  end;
    1:
  begin
    edtCodigoInicial.Visible := False;
    edtCodigoFinal.Visible := False;
    dtpDataInicial.Visible := True;
    dtpDataFinal.Visible := True;
    dtpDataInicial.Left := 206;
    dtpDataInicial.Top := 85;
    lblEntrePesquisaCodigo.Left := 308;
    dtpDataFinal.Left := 340;
    dtpDataFinal.Top := 85 ;
    btnPesquisar.Left := 440;
  end;
  end;
end;

{$ENDREGION}
end.

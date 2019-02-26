unit UnFrmPesqPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, unConexaoSql, Grids, DBGrids, FMTBcd, DB, SqlExpr,
  ExtCtrls, Mask, UnFrmPai, ComCtrls;

type
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
    btnCancelar: TBitBtn;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure ValidarFiltro(Sender: TObject);
    procedure NavegarEnter(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmPesqPai: TfrmPesqPai;

implementation

{$R *.dfm}

procedure TfrmPesqPai.btnSairClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente sair ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    Close;
  end
  else
  Abort;
end;

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

procedure TfrmPesqPai.NavegarEnter(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(WM_NEXTDLGCTL,0,0);
  end;
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
end.

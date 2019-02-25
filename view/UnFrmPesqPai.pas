unit UnFrmPesqPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, unConexaoSql, Grids, DBGrids, FMTBcd, DB, SqlExpr,
  ExtCtrls, Mask, UnFrmPai;

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
    mskDataIncial: TMaskEdit;
    dstPesquisa: TDataSource;
    btnImprimir: TBitBtn;
    btnSair: TBitBtn;
    btnCancelar: TBitBtn;
    mskDataFinal: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure ValidarFiltro(Sender: TObject);
    procedure NavegarEnter(Sender: TObject; var Key: Char);
  public
    { Public declarations }
  end;

var
  frmPesqPai: TfrmPesqPai;

implementation

{$R *.dfm}

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
    edtCodigoFinal.Visible := True;
    mskDataIncial.Visible := False;
    mskDataFinal.Visible := False;
    btnPesquisar.Left := 378;
  end;
    1:
  begin
    edtCodigoInicial.Visible := False;
    edtCodigoFinal.Visible := False;
    mskDataIncial.Visible := True;
    mskDataFinal.Visible := True;
    mskDataIncial.Left := 206;
    mskDataIncial.Top := 85;
    mskDataFinal.Left := 306;
    mskDataFinal.Top := 85 ;
    btnPesquisar.Left := 370;
  end;
  end;
end;
end.

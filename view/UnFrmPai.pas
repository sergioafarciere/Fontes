unit UnFrmPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, UnModelAgente, UnConexaoSql, DB, UnModelEscola;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPai: TfrmPai;

implementation

{$R *.dfm}


end.

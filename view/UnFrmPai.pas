unit UnFrmPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TfrmPai = class(TForm)
    pnlTopPai: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    pnlBottonPai: TPanel;
    tmnPai: TTimer;
    lblCodigoPai: TLabel;
    edtCodigoPai: TEdit;
    Label1: TLabel;
    edtNomePai: TEdit;
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

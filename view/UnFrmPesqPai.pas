unit UnFrmPesqPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, unConexaoSql, Grids, DBGrids, FMTBcd, DB, SqlExpr;

type
  TfrmPesqPai = class(TForm)
    edtPesquisar: TEdit;
    lblPesquisar: TLabel;
    btnPesquisar: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqPai: TfrmPesqPai;

implementation

{$R *.dfm}

end.

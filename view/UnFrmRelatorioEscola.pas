unit UnFrmRelatorioEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, unFrmPesqEscola, UnConexaoSql, FMTBcd, SqlExpr;

type
  TfrmRelEscola = class(TForm)
    rlrRelatorioDeEscolas: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel12: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel13: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel14: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLBand5: TRLBand;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLBand6: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel38: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEscola: TfrmRelEscola;

implementation



{$R *.dfm}

end.

unit UnFrmRelatorioEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, unFrmPesqEscola, UnConexaoSql;

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
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
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

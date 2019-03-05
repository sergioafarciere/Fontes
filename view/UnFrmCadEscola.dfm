inherited frmCadEscola: TfrmCadEscola
  Caption = 'Cadastro de Escola'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopPai: TPanel
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    object Label1: TLabel [0]
      Left = 226
      Top = 18
      Width = 142
      Height = 21
      Caption = 'Cadastro de Escola'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    inherited btnNovo: TBitBtn
      OnClick = btnNovoClick
    end
    inherited btnAlterar: TBitBtn
      OnClick = btnAlterarClick
    end
    inherited btnExcluir: TBitBtn
      OnClick = btnExcluirClick
    end
    inherited btnCancelar: TBitBtn
      OnClick = btnCancelarClick
    end
    inherited btnGravar: TBitBtn
      OnClick = btnGravarClick
    end
  end
  inherited edtCodigo: TEdit
    Left = 27
    OnKeyPress = ConsultandoEscola
    ExplicitLeft = 27
  end
  inherited mskCPFCNPJ: TMaskEdit
    Top = 85
    ExplicitTop = 85
  end
  inherited edtEmail: TEdit
    CharCase = ecNormal
  end
end

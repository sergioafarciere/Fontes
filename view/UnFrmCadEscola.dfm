inherited frmCadEscola: TfrmCadEscola
  Caption = 'Cadastro de Escola'
  ExplicitWidth = 746
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopPai: TPanel
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
    inherited btnSair: TBitBtn
      OnClick = btnSairClick
    end
    inherited btnGravar: TBitBtn
      OnClick = btnGravarClick
    end
  end
  inherited edtCodigo: TEdit
    Tag = 0
    Left = 27
    OnKeyPress = ConsultandoEscola
    ExplicitLeft = 27
  end
  inherited edtEmail: TEdit
    CharCase = ecNormal
  end
end

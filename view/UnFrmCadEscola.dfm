inherited frmCadEscola: TfrmCadEscola
  Caption = 'Cadastro de Escola'
  OnCreate = FormCreate
  OnShow = FormShow
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
    Left = 27
    OnKeyPress = edtCodigoKeyPress
    ExplicitLeft = 27
  end
end

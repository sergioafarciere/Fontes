inherited frmCadEscola: TfrmCadEscola
  Caption = 'frmCadEscola'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
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
    OnKeyPress = edtCodigoKeyPress
  end
  object DBGrid1: TDBGrid [6]
    Left = 24
    Top = 168
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = dmConexao.cdsSelect
    Left = 416
    Top = 88
  end
end

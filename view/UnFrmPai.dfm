object frmPai: TfrmPai
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Formulario Pai'
  ClientHeight = 461
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = NavegarEnter
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigo: TLabel
    Left = 24
    Top = 72
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lblNome: TLabel
    Left = 189
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lblTipoPessoa: TLabel
    Left = 93
    Top = 72
    Width = 61
    Height = 13
    Caption = 'Tipo Pessoa:'
  end
  object lblCPFCNPJ: TLabel
    Left = 532
    Top = 72
    Width = 52
    Height = 13
    Caption = 'CPF/CNPJ:'
  end
  object pnlTopPai: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 57
    Align = alTop
    TabOrder = 4
    object btnNovo: TBitBtn
      Left = 399
      Top = 7
      Width = 57
      Height = 41
      Caption = '&NOVO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btnAlterar: TBitBtn
      Left = 455
      Top = 7
      Width = 57
      Height = 41
      Caption = '&ALTERAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnExcluir: TBitBtn
      Left = 567
      Top = 7
      Width = 57
      Height = 41
      Caption = '&EXCLUIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object btnCancelar: TBitBtn
      Left = 623
      Top = 7
      Width = 57
      Height = 41
      Caption = '&CANCELAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object btnSair: TBitBtn
      Left = 679
      Top = 7
      Width = 57
      Height = 41
      Caption = '&SAIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object btnGravar: TBitBtn
      Left = 511
      Top = 7
      Width = 57
      Height = 41
      Caption = '&GRAVAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnlBottonPai: TPanel
    Left = 0
    Top = 442
    Width = 740
    Height = 19
    Align = alBottom
    TabOrder = 5
  end
  object edtCodigo: TEdit
    Left = 24
    Top = 85
    Width = 65
    Height = 21
    MaxLength = 6
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 189
    Top = 85
    Width = 340
    Height = 21
    TabOrder = 2
  end
  object cbxTipoPessoa: TComboBox
    Left = 93
    Top = 85
    Width = 92
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    OnChange = mascaraCPFCNPJ
    Items.Strings = (
      'F'#205'SICA'
      'JURIDICA')
  end
  object mskCPFCNPJ: TMaskEdit
    Left = 532
    Top = 85
    Width = 101
    Height = 21
    EditMask = '999.999.999-99;0;_'
    MaxLength = 14
    TabOrder = 3
  end
  object tmnPai: TTimer
    Top = 424
  end
end

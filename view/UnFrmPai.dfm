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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = NavegarEnter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigo: TLabel
    Left = 30
    Top = 72
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lblNome: TLabel
    Left = 193
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lblTipoPessoa: TLabel
    Left = 98
    Top = 72
    Width = 61
    Height = 13
    Caption = 'Tipo Pessoa:'
  end
  object lblCPFCNPJ: TLabel
    Left = 589
    Top = 72
    Width = 52
    Height = 13
    Caption = 'CPF/CNPJ:'
  end
  object lblCep: TLabel
    Left = 30
    Top = 117
    Width = 23
    Height = 13
    Caption = 'CEP:'
  end
  object lblUF: TLabel
    Left = 92
    Top = 117
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object lblEndereco: TLabel
    Left = 139
    Top = 117
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object lblNumero: TLabel
    Left = 510
    Top = 117
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
  end
  object lblBairro: TLabel
    Left = 586
    Top = 117
    Width = 32
    Height = 13
    Caption = 'Bairro:'
  end
  object lblCidade: TLabel
    Left = 30
    Top = 165
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object lblComplemento: TLabel
    Left = 139
    Top = 165
    Width = 69
    Height = 13
    Caption = 'Complemento:'
  end
  object lblEmail: TLabel
    Left = 497
    Top = 165
    Width = 32
    Height = 13
    Caption = 'E-mail:'
  end
  object lblContato: TLabel
    Left = 30
    Top = 212
    Width = 43
    Height = 13
    Caption = 'Contato:'
  end
  object lblTelefone: TLabel
    Left = 154
    Top = 212
    Width = 46
    Height = 13
    Caption = 'Telefone:'
  end
  object lblObservacao: TLabel
    Left = 30
    Top = 264
    Width = 67
    Height = 13
    Caption = 'Observa'#231#245'es:'
  end
  object pnlTopPai: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 57
    Align = alTop
    TabOrder = 15
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
    TabOrder = 16
  end
  object edtCodigo: TEdit
    Tag = 1
    Left = 30
    Top = 86
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 6
    TabOrder = 0
  end
  object edtNome: TEdit
    Tag = 1
    Left = 193
    Top = 86
    Width = 393
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object cbxTipoPessoa: TComboBox
    Tag = 1
    Left = 98
    Top = 86
    Width = 92
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 1
    OnChange = mascaraCPFCNPJ
    Items.Strings = (
      'F'#205'SICA'
      'JURIDICA')
  end
  object mskCPFCNPJ: TMaskEdit
    Tag = 1
    Left = 589
    Top = 86
    Width = 101
    Height = 21
    CharCase = ecUpperCase
    EditMask = '999.999.999-99;0;_'
    MaxLength = 14
    TabOrder = 3
  end
  object mskCEP: TMaskEdit
    Tag = 1
    Left = 30
    Top = 131
    Width = 59
    Height = 21
    CharCase = ecUpperCase
    EditMask = '99999-999;0;_'
    MaxLength = 9
    TabOrder = 4
  end
  object cbxUF: TComboBox
    Tag = 1
    Left = 92
    Top = 131
    Width = 44
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'AC'
      'AL'
      'AM'
      'AP'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MG'
      'MS'
      'MT'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'RJ'
      'RN'
      'RO'
      'RR'
      'RS'
      'SC'
      'SE'
      'SP'
      'TO')
  end
  object edtEndereco: TEdit
    Tag = 1
    Left = 139
    Top = 131
    Width = 368
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
  end
  object edtNumero: TEdit
    Tag = 1
    Left = 510
    Top = 131
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
  end
  object edtBairro: TEdit
    Tag = 1
    Left = 586
    Top = 131
    Width = 104
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
  end
  object edtCidade: TEdit
    Tag = 1
    Left = 30
    Top = 180
    Width = 106
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
  end
  object edtComplemento: TEdit
    Left = 139
    Top = 180
    Width = 355
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 10
  end
  object edtEmail: TEdit
    Left = 497
    Top = 180
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 11
  end
  object edtContato: TEdit
    Left = 30
    Top = 227
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 12
  end
  object mmoObservacoes: TMemo
    Left = 30
    Top = 283
    Width = 660
    Height = 89
    TabOrder = 14
  end
  object mskTelefone: TMaskEdit
    Left = 154
    Top = 227
    Width = 87
    Height = 21
    CharCase = ecUpperCase
    EditMask = '!\(99\)00000-0000;0;_'
    MaxLength = 14
    TabOrder = 13
  end
end

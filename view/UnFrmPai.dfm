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
  OldCreateOrder = False
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
    Left = 95
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object pnlTopPai: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 57
    Align = alTop
    TabOrder = 0
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
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
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
      TabOrder = 5
    end
  end
  object pnlBottonPai: TPanel
    Left = 0
    Top = 442
    Width = 740
    Height = 19
    Align = alBottom
    TabOrder = 1
  end
  object edtCodigo: TEdit
    Left = 24
    Top = 85
    Width = 65
    Height = 21
    TabOrder = 2
  end
  object edtNome: TEdit
    Left = 95
    Top = 85
    Width = 266
    Height = 21
    TabOrder = 3
  end
  object tmnPai: TTimer
    Top = 424
  end
end

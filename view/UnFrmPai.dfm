object frmPai: TfrmPai
  Left = 0
  Top = 0
  Caption = 'Formulario Pai'
  ClientHeight = 451
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigoPai: TLabel
    Left = 24
    Top = 72
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label1: TLabel
    Left = 96
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object pnlTopPai: TPanel
    Left = 0
    Top = 0
    Width = 730
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 679
    object btnIncluir: TBitBtn
      Left = 501
      Top = 7
      Width = 57
      Height = 41
      Caption = 'btnIncluir'
      TabOrder = 0
    end
    object btnAlterar: TBitBtn
      Left = 557
      Top = 7
      Width = 57
      Height = 41
      Caption = 'btnAlterar'
      TabOrder = 1
    end
    object btnExcluir: TBitBtn
      Left = 613
      Top = 7
      Width = 57
      Height = 41
      Caption = 'btnExcluir'
      TabOrder = 2
    end
    object btnCancelar: TBitBtn
      Left = 669
      Top = 7
      Width = 57
      Height = 41
      Caption = 'btnCancel'
      TabOrder = 3
    end
  end
  object pnlBottonPai: TPanel
    Left = 0
    Top = 432
    Width = 730
    Height = 19
    Align = alBottom
    TabOrder = 1
  end
  object edtCodigoPai: TEdit
    Left = 24
    Top = 85
    Width = 65
    Height = 21
    TabOrder = 2
  end
  object edtNomePai: TEdit
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

object frmPesqPai: TfrmPesqPai
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FormularioPesquisaPai'
  ClientHeight = 508
  ClientWidth = 778
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
  object lblEntrePesquisaCodigo: TLabel
    Left = 277
    Top = 89
    Width = 26
    Height = 13
    Caption = 'Entre'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 112
    Width = 729
    Height = 329
    DataSource = dstPesquisa
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnlPesquisaTop: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 33
    Align = alTop
    TabOrder = 9
  end
  object pnlPesquisaBottom: TPanel
    Left = 0
    Top = 482
    Width = 778
    Height = 26
    Align = alBottom
    TabOrder = 10
  end
  object rdgFiltroPesquisa: TRadioGroup
    Left = 24
    Top = 55
    Width = 177
    Height = 51
    Caption = 'Filtros de Pesquisa'
    Items.Strings = (
      'C'#243'digo'
      'Data')
    TabOrder = 0
    OnClick = ValidarFiltro
  end
  object btnPesquisar: TBitBtn
    Left = 378
    Top = 83
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 5
    Glyph.Data = {
      52020000424D5202000000000000520100002800000010000000100000000100
      08000000000000010000340B0000340B00004700000047000000405058009860
      580031486000EAAB6A00A17373008F7B7300B67B7300A1847300AB847300F4AB
      7300AB7B7B00B67B7B00C07B7B00B6847B00C0987B00F4C07B00B68F8400C08F
      8400CA8F8400B6988400C0988400CA988400F4C08400F4CA840031608F00C098
      8F00CAA18F00D4AB8F00F4CA8F00D4AB9800D4B69800E0B69800FFD49800FFE0
      9800C0A1A100F4D4A100F4E0A100FFE0A100FFEAA100CAABAB00D4CAAB00E0D4
      AB00FFE0AB005084B600EAD4B600FFEAB600FFF4B600F4E0C000FFF4C000F4EA
      CA00F4F4CA00FFF4CA00FFFFCA00116AD400F4F4D400FFFFD4000B6AE0000B73
      E000FFFFE0000B73EA001173EA00A1CAEA00F4F4EA00FFF4EA00FFFFEA00FFFF
      F400FF00FF0031A1FF0038A1FF0038ABFF00FFFFFF0042020A42424242424242
      4242424242422B39180B42424242424242424242424243443C180B4242424242
      42424242424242444438180B424242424242424242424242444339180A424242
      424242424242424242444335004201101A114242424242424242453D05072F34
      3434291942424242424242221A2D34343437403E0442424242424206231C3034
      37404146284242424242421B210F30373A414140310D42424242421F20032434
      373A3A37321342424242421D25030F2D37373737311042424242420D2D2D1C16
      2430333429424242424242421E463F0F0316252E08424242424242424227312D
      21252314424242424242424242420E141B1B42424242}
  end
  object edtCodigoInicial: TEdit
    Left = 206
    Top = 85
    Width = 66
    Height = 21
    TabOrder = 1
  end
  object edtCodigoFinal: TEdit
    Left = 306
    Top = 85
    Width = 72
    Height = 21
    TabOrder = 2
  end
  object btnImprimir: TBitBtn
    Left = 678
    Top = 83
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 6
    OnClick = btnImprimirClick
    Glyph.Data = {
      2A020000424D2A020000000000002A0100002800000010000000100000000100
      08000000000000010000210B0000210B00003D0000003D0000000B0B0B00110B
      11000B1111001C1C1C00232323002A2A2A003838380048484800505050005858
      58006A6A6A00737373007B7373007B7B7B00847B7B00F4987B0084848400C084
      8400F4988400FF988400FFA1840084848F008F8F8F00988F8F00B68F8F008F98
      8F00FFAB8F008FCA8F0098989800A1989800FFB69800A1A1A100FFB6A100ABAB
      AB00B6ABAB00ABB6AB00E0B6AB00EAC0AB00FFC0AB00ABABB600B6B6B600C0B6
      B600E0C0B600C0C0C000CAC0C000D4CAC000FFD4C000CACACA00FFE0CA00CAD4
      D400D4D4D400EAE0D400E0E0E000EAE0E000FFE0E000EAEAEA00F4EAEA00F4EA
      F400F4F4F400FF00FF00FFFFFF003B3B3B3B3B3B103B3B3B0A0A0B3B3B3B3B3B
      3B3B10102C0D04060E282F0A3B3B3B3B10103A3C2F1005010103070A0B3B0C10
      373C3528100B0D0A07040201093B10343421161D22160D0C0D0E0B080A3B0D1C
      161C282F373732281C100C0D0B3B0C1C282B28322B19212B2F2F281F0D3B3B10
      2B2B32281F1B231817161F22163B3B3B10211C1C343837332F2B1F0D3B3B3B3B
      3B102F2B10212F2F2F281C3B3B3B3B3B3B3B362E24242A2D2B0D3B3B3B3B3B3B
      3B3B112E261E1A133B3B3B3B3B3B3B3B3B3B112E261E1A0F3B3B3B3B3B3B3B3B
      3B3B112E261E1A123B3B3B3B3B3B3B3B3B11302E261E1A123B3B3B3B3B3B3B3B
      3B1111111112123B3B3B3B3B3B3B}
  end
  object btnSair: TBitBtn
    Left = 678
    Top = 447
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 7
    OnClick = btnSairClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666B96666BB
      6868693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      9A66669A6666C66A6BD06A6BD26869C368696933349A66669A66669A66669A66
      669A66669A6666FF00FFFF00FFFF00FF9A6666DE7374D77071D56F70D56D6EC7
      6A6D693334FEA2A3FCAFB0FABCBDF9C5C6F9C5C69A6666FF00FFFF00FFFF00FF
      9A6666E07778DB7576DA7475DA7273CC6E7169333439C56525CF6329CC6319CB
      5BF9C5C69A6666FF00FFFF00FFFF00FF9A6666E57D7EE07A7BDF797ADF7778D0
      727569333442C46830CD6733CB6724CB60F9C5C69A6666FF00FFFF00FFFF00FF
      9A6666EA8283E57F80E37D7EE68081D374766933343DC26429CB632FCA6420CA
      5EF9C5C69A6666FF00FFFF00FFFF00FF9A6666F08788E98182EC9697FBDDDED8
      888A693334B8E1AC6BDC895DD58046D473F9C5C69A6666FF00FFFF00FFFF00FF
      9A6666F58C8DEE8687F0999AFDDCDDDA888A693334FFF5D8FFFFE0FFFFDEECFD
      D4F9C5C69A6666FF00FFFF00FFFF00FF9A6666FA9192F48E8FF28B8CF48C8DDC
      7F80693334FDF3D4FFFFDFFFFFDDFFFFE0F9C5C69A6666FF00FFFF00FFFF00FF
      9A6666FE9798F99394F89293F99092E08585693334FDF3D4FFFFDFFFFFDDFFFF
      DFF9C5C69A6666FF00FFFF00FFFF00FF9A6666FF9B9CFD9798FC9697FE9798E3
      8889693334FDF3D4FFFFDFFFFFDDFFFFDFF9C5C69A6666FF00FFFF00FFFF00FF
      9A6666FF9FA0FF9A9BFF999AFF9A9BE78C8D693334FDF3D4FFFFDFFFFFDDFFFF
      DFF9C5C69A6666FF00FFFF00FFFF00FF9A66669A6666E98E8FFE999AFF9D9EEB
      8F90693334FBF0D2FDFCDCFDFCDAFDFCDCF9C5C69A6666FF00FFFF00FFFF00FF
      FF00FFFF00FF9A6666B07172D78687DA88886933349A66669A66669A66669A66
      669A66669A6666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A
      6666693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object dtpDataInicial: TDateTimePicker
    Left = 207
    Top = 31
    Width = 97
    Height = 21
    Date = 43522.000000000000000000
    Time = 43522.000000000000000000
    TabOrder = 3
  end
  object dtpDataFinal: TDateTimePicker
    Left = 310
    Top = 31
    Width = 97
    Height = 21
    Date = 43522.999988425920000000
    Time = 43522.999988425920000000
    TabOrder = 4
  end
  object dstPesquisa: TDataSource
    AutoEdit = False
    DataSet = dmConexao.cdsSelect
    Left = 576
    Top = 72
  end
end

object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 565
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 73
    Width = 80
    Height = 13
    Caption = 'Arquivo do SPED'
  end
  object Memo1: TMemo
    Left = 8
    Top = 92
    Width = 619
    Height = 434
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 532
    Width = 619
    Height = 25
    Caption = 'GERAR SPED'
    TabOrder = 1
    OnClick = Button1Click
  end
  object btnBlocoK: TButton
    Left = 8
    Top = 8
    Width = 185
    Height = 25
    Caption = 'BLOCK K'
    TabOrder = 2
    OnClick = btnBlocoKClick
  end
  object btnBlocoJ: TButton
    Left = 227
    Top = 8
    Width = 185
    Height = 25
    Caption = 'BLOCO J'
    TabOrder = 3
    OnClick = btnBlocoJClick
  end
  object btnLimpar: TButton
    Left = 442
    Top = 8
    Width = 185
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = btnLimparClick
  end
end

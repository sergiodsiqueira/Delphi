object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Retorno NFe'
  ClientHeight = 497
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 37
    Width = 43
    Height = 13
    Caption = 'Retorno:'
  end
  object Memo1: TMemo
    Left = 24
    Top = 56
    Width = 321
    Height = 305
    TabOrder = 0
  end
  object btnProcessar: TButton
    Left = 24
    Top = 367
    Width = 321
    Height = 25
    Caption = 'Processar Dados'
    TabOrder = 1
    OnClick = btnProcessarClick
  end
  object btnFechar: TButton
    Left = 24
    Top = 463
    Width = 321
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = btnFecharClick
  end
  object OpenDialog1: TOpenDialog
    Left = 288
    Top = 72
  end
end

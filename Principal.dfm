object fPrincipal: TfPrincipal
  Left = 233
  Top = 134
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerador de SQL'
  ClientHeight = 322
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbColunas: TLabel
    Left = 8
    Top = 3
    Width = 42
    Height = 13
    Caption = 'Colunas:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbTabelas: TLabel
    Left = 256
    Top = 4
    Width = 41
    Height = 13
    Caption = 'Tabelas:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbCondicoes: TLabel
    Left = 497
    Top = 3
    Width = 53
    Height = 13
    Caption = 'Condi'#231#245'es:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbSQL: TLabel
    Left = 8
    Top = 171
    Width = 23
    Height = 13
    Caption = 'SQL:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object meColunas: TMemo
    Left = 8
    Top = 19
    Width = 215
    Height = 89
    Lines.Strings = (
      'Codigo'
      'Nomes')
    TabOrder = 0
  end
  object meTabelas: TMemo
    Left = 256
    Top = 19
    Width = 215
    Height = 89
    Lines.Strings = (
      'Funcionarios')
    TabOrder = 1
  end
  object meCondicoes: TMemo
    Left = 495
    Top = 19
    Width = 215
    Height = 89
    Lines.Strings = (
      'Cidade = '#39'Maring'#225#39
      'Salario > 1000')
    TabOrder = 2
  end
  object btGerarSQL: TButton
    Left = 328
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 3
    OnClick = btGerarSQLClick
  end
  object meSQL: TMemo
    Left = 8
    Top = 187
    Width = 702
    Height = 126
    Lines.Strings = (
      '')
    TabOrder = 4
  end
end

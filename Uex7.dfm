object Form1: TForm1
  Left = 330
  Top = 95
  Width = 807
  Height = 567
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
  object inputPnl: TGroupBox
    Left = 0
    Top = 0
    Width = 791
    Height = 185
    Align = alTop
    Caption = 'Input text'
    TabOrder = 0
    object btnPanel: TPanel
      Left = 623
      Top = 15
      Width = 166
      Height = 168
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object checkBtn: TButton
        Left = 40
        Top = 0
        Width = 100
        Height = 25
        Caption = 'Sort'
        TabOrder = 0
        OnClick = MainBtnClick
      end
      object clearBtn: TButton
        Left = 40
        Top = 40
        Width = 100
        Height = 25
        Caption = 'Clear'
        TabOrder = 1
        OnClick = clearBtnClick
      end
    end
    object memoPnl: TPanel
      Left = 2
      Top = 15
      Width = 621
      Height = 168
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object inputMemo: TMemo
        Left = 0
        Top = 0
        Width = 621
        Height = 168
        Align = alClient
        TabOrder = 0
        OnKeyPress = edtInputKeyPress
      end
    end
  end
  object resulPnl: TGroupBox
    Left = 0
    Top = 185
    Width = 791
    Height = 344
    Align = alClient
    Caption = 'Result'
    TabOrder = 1
    object resultMemo: TMemo
      Left = 2
      Top = 15
      Width = 787
      Height = 327
      Align = alClient
      TabOrder = 0
    end
  end
end

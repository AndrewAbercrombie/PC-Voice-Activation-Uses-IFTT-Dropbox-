object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Add'
  ClientHeight = 216
  ClientWidth = 203
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object sEdit1: TsEdit
    Left = 8
    Top = 8
    Width = 185
    Height = 21
    TabOrder = 0
    TextHint = 'Trigger'
  end
  object sEdit2: TsEdit
    Left = 8
    Top = 35
    Width = 185
    Height = 21
    TabOrder = 1
    TextHint = 'Path/URL'
  end
  object sRadioGroup1: TsRadioGroup
    Left = 8
    Top = 72
    Width = 185
    Height = 105
    Caption = 'Options'
    TabOrder = 2
  end
  object sRadioButton1: TsRadioButton
    Left = 24
    Top = 104
    Width = 41
    Height = 15
    Caption = 'File'
    Checked = True
    TabOrder = 3
    TabStop = True
  end
  object sRadioButton2: TsRadioButton
    Left = 24
    Top = 136
    Width = 44
    Height = 15
    Caption = 'URL'
    TabOrder = 4
  end
  object sButton1: TsButton
    Left = 8
    Top = 183
    Width = 185
    Height = 25
    Caption = 'Add'
    TabOrder = 5
    OnClick = sButton1Click
  end
end

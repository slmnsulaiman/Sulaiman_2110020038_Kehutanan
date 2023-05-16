object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'Form10'
  ClientHeight = 445
  ClientWidth = 718
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 152
    Top = 72
    Width = 49
    Height = 13
    Caption = 'NO PASAL'
  end
  object Label2: TLabel
    Left = 152
    Top = 99
    Width = 63
    Height = 13
    Caption = 'NAMA PASAL'
  end
  object Label3: TLabel
    Left = 152
    Top = 131
    Width = 66
    Height = 13
    Caption = 'KETERANGAN'
  end
  object Label4: TLabel
    Left = 152
    Top = 405
    Width = 64
    Height = 13
    Caption = 'FILTER DATA'
  end
  object DBGrid1: TDBGrid
    Left = 184
    Top = 256
    Width = 320
    Height = 120
    DataSource = DataModule1.DsPasal
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 440
    Top = 177
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 1
  end
  object Button2: TButton
    Left = 544
    Top = 177
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 2
  end
  object Button3: TButton
    Left = 635
    Top = 177
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
  end
  object Button4: TButton
    Left = 440
    Top = 208
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 544
    Top = 208
    Width = 75
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 248
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 248
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 248
    Top = 123
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 264
    Top = 402
    Width = 337
    Height = 21
    TabOrder = 9
    Text = 'Edit4'
  end
end

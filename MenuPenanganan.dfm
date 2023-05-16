object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'Form12'
  ClientHeight = 471
  ClientWidth = 690
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
    Left = 96
    Top = 53
    Width = 86
    Height = 13
    Caption = 'NO PENANGANAN'
  end
  object Label2: TLabel
    Left = 96
    Top = 77
    Width = 65
    Height = 13
    Caption = 'NO LAPORAN'
  end
  object Label3: TLabel
    Left = 96
    Top = 101
    Width = 66
    Height = 13
    Caption = 'KETERANGAN'
  end
  object Label4: TLabel
    Left = 96
    Top = 132
    Width = 30
    Height = 13
    Caption = 'NO SK'
  end
  object Label5: TLabel
    Left = 96
    Top = 165
    Width = 52
    Height = 13
    Caption = ' NO PASAL'
  end
  object Label6: TLabel
    Left = 96
    Top = 184
    Width = 65
    Height = 13
    Caption = 'NO SPRINDIK'
  end
  object Label7: TLabel
    Left = 96
    Top = 203
    Width = 47
    Height = 13
    Caption = 'PROGRES'
  end
  object Label8: TLabel
    Left = 96
    Top = 408
    Width = 64
    Height = 13
    Caption = 'FILTER DATA'
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 264
    Width = 577
    Height = 120
    DataSource = DataModule1.DsPenanganan
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 392
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 1
  end
  object Button2: TButton
    Left = 496
    Top = 184
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 2
  end
  object Button3: TButton
    Left = 591
    Top = 184
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 208
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 208
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit2'
  end
  object CLEAR: TButton
    Left = 392
    Top = 215
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 6
  end
  object CLOSE: TButton
    Left = 496
    Top = 215
    Width = 75
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 208
    Top = 94
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 208
    Top = 121
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 208
    Top = 148
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'Edit5'
  end
  object Edit6: TEdit
    Left = 208
    Top = 175
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'Edit6'
  end
  object Edit7: TEdit
    Left = 208
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 12
    Text = 'Edit7'
  end
  object Edit8: TEdit
    Left = 216
    Top = 416
    Width = 433
    Height = 21
    TabOrder = 13
    Text = 'Edit8'
  end
end

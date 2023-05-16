object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 448
  ClientWidth = 720
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 48
    Width = 87
    Height = 13
    Caption = 'ID BARANG BUKTI'
  end
  object Label2: TLabel
    Left = 88
    Top = 80
    Width = 105
    Height = 13
    Caption = 'NAMA BARANG BUKTI'
  end
  object Label3: TLabel
    Left = 88
    Top = 102
    Width = 39
    Height = 13
    Caption = 'JUMLAH'
  end
  object Label4: TLabel
    Left = 88
    Top = 129
    Width = 25
    Height = 13
    Caption = 'ALAT'
  end
  object Label5: TLabel
    Left = 82
    Top = 395
    Width = 64
    Height = 13
    Caption = 'FILTER DATA'
  end
  object DBGrid1: TDBGrid
    Left = 112
    Top = 240
    Width = 449
    Height = 120
    DataSource = DataModule1.DSBarangBukti
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 224
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 224
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 224
    Top = 99
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 224
    Top = 126
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit4'
  end
  object Button1: TButton
    Left = 448
    Top = 152
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 5
  end
  object Button2: TButton
    Left = 544
    Top = 152
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
  end
  object Button3: TButton
    Left = 633
    Top = 152
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 7
  end
  object Button4: TButton
    Left = 448
    Top = 192
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 8
  end
  object Button5: TButton
    Left = 544
    Top = 192
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 9
  end
  object Edit5: TEdit
    Left = 216
    Top = 392
    Width = 403
    Height = 21
    TabOrder = 10
    Text = 'Edit5'
  end
end

object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 452
  ClientWidth = 724
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
    Left = 40
    Top = 24
    Width = 87
    Height = 13
    Caption = 'ID BARANG BUKTI'
  end
  object Label2: TLabel
    Left = 40
    Top = 51
    Width = 46
    Height = 13
    Caption = 'TANGGAL'
  end
  object Label3: TLabel
    Left = 40
    Top = 78
    Width = 73
    Height = 13
    Caption = 'ID TERSANGKA'
  end
  object Label4: TLabel
    Left = 42
    Top = 105
    Width = 74
    Height = 13
    Caption = 'URAIAN KASUS'
  end
  object Label5: TLabel
    Left = 42
    Top = 132
    Width = 65
    Height = 13
    Caption = 'NO LAPORAN'
  end
  object Label6: TLabel
    Left = 40
    Top = 160
    Width = 94
    Height = 13
    Caption = 'KET BARANG BUKTI'
  end
  object Label7: TLabel
    Left = 42
    Top = 189
    Width = 60
    Height = 13
    Caption = 'ID WILAYAH'
  end
  object Label8: TLabel
    Left = 42
    Top = 216
    Width = 51
    Height = 13
    Caption = 'KATEGORI'
  end
  object Label9: TLabel
    Left = 42
    Top = 403
    Width = 64
    Height = 13
    Caption = 'FILTER DATA'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 251
    Width = 708
    Height = 120
    DataSource = DataModule1.DsPelanggaran
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 168
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 168
    Top = 70
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 168
    Top = 97
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 168
    Top = 124
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 168
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit5'
  end
  object Edit6: TEdit
    Left = 168
    Top = 181
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit6'
  end
  object Edit7: TEdit
    Left = 168
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Edit7'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 168
    Top = 43
    Width = 186
    Height = 21
    Date = 45058.000000000000000000
    Time = 0.352118854163563800
    TabOrder = 8
  end
  object Button1: TButton
    Left = 408
    Top = 136
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 9
  end
  object Button2: TButton
    Left = 512
    Top = 136
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 10
  end
  object Button3: TButton
    Left = 624
    Top = 136
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 11
  end
  object Button4: TButton
    Left = 408
    Top = 179
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 12
  end
  object Button5: TButton
    Left = 512
    Top = 179
    Width = 75
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 13
  end
  object Edit8: TEdit
    Left = 168
    Top = 400
    Width = 497
    Height = 21
    TabOrder = 14
    Text = 'Edit8'
  end
end

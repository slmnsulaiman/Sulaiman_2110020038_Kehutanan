object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 458
  ClientWidth = 717
  Color = clGradientActiveCaption
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
    Left = 104
    Top = 48
    Width = 82
    Height = 13
    Caption = 'ID PENAMBAHAN'
  end
  object Label2: TLabel
    Left = 104
    Top = 72
    Width = 60
    Height = 13
    Caption = 'ID WILAYAH'
  end
  object Label3: TLabel
    Left = 104
    Top = 104
    Width = 51
    Height = 13
    Caption = 'ID HEWAN'
  end
  object Label4: TLabel
    Left = 104
    Top = 131
    Width = 66
    Height = 13
    Caption = 'KETERANGAN'
  end
  object Label5: TLabel
    Left = 105
    Top = 158
    Width = 40
    Height = 13
    Caption = 'SATUAN'
  end
  object Label6: TLabel
    Left = 105
    Top = 184
    Width = 39
    Height = 13
    Caption = 'JUMLAH'
  end
  object Label7: TLabel
    Left = 81
    Top = 424
    Width = 64
    Height = 13
    Caption = 'FILTER DATA'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 264
    Width = 614
    Height = 120
    DataSource = DataModule1.DSPenambahanHewan
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object EIdpenambahan: TEdit
    Left = 232
    Top = 42
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EKet: TEdit
    Left = 232
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object ESatuan: TEdit
    Left = 232
    Top = 155
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EJumlah: TEdit
    Left = 232
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 463
    Top = 185
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 544
    Top = 185
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 544
    Top = 216
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 463
    Top = 216
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 8
    OnClick = Button4Click
  end
  object EFilterData: TEdit
    Left = 232
    Top = 421
    Width = 406
    Height = 21
    TabOrder = 9
    OnChange = EFilterDataChange
  end
  object EIdwilayah: TComboBox
    Left = 232
    Top = 72
    Width = 145
    Height = 21
    TabOrder = 10
  end
  object EId_hewan: TComboBox
    Left = 232
    Top = 96
    Width = 145
    Height = 21
    TabOrder = 11
  end
end

object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 454
  ClientWidth = 727
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
    Left = 112
    Top = 43
    Width = 65
    Height = 13
    Caption = 'ID KEMATIAN'
  end
  object Label2: TLabel
    Left = 112
    Top = 70
    Width = 51
    Height = 13
    Caption = 'ID HEWAN'
  end
  object Label3: TLabel
    Left = 112
    Top = 97
    Width = 60
    Height = 13
    Caption = 'ID WILAYAH'
  end
  object Label4: TLabel
    Left = 112
    Top = 124
    Width = 66
    Height = 13
    Caption = 'KETERANGAN'
  end
  object Label5: TLabel
    Left = 112
    Top = 156
    Width = 39
    Height = 13
    Caption = 'JUMLAH'
  end
  object Label6: TLabel
    Left = 108
    Top = 387
    Width = 64
    Height = 13
    Caption = 'FILTER DATA'
  end
  object DBGrid1: TDBGrid
    Left = 80
    Top = 232
    Width = 505
    Height = 120
    DataSource = DataModule1.DasKematianHewan
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object EIdkematian: TEdit
    Left = 216
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = EIdkematianKeyPress
  end
  object EKet: TEdit
    Left = 216
    Top = 121
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = EKetKeyPress
  end
  object EJumlah: TEdit
    Left = 216
    Top = 148
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 432
    Top = 144
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 432
    Top = 175
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 528
    Top = 144
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 528
    Top = 179
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 7
    OnClick = Button4Click
  end
  object EFilterData: TEdit
    Left = 216
    Top = 384
    Width = 425
    Height = 21
    TabOrder = 8
    OnChange = EFilterDataChange
  end
  object EId_hewan: TComboBox
    Left = 216
    Top = 69
    Width = 145
    Height = 21
    TabOrder = 9
  end
  object EIdwilayah: TComboBox
    Left = 216
    Top = 94
    Width = 145
    Height = 21
    TabOrder = 10
  end
end

object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 462
  ClientWidth = 718
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
    Left = 144
    Top = 83
    Width = 60
    Height = 13
    Caption = 'ID WILAYAH'
  end
  object Label2: TLabel
    Left = 144
    Top = 110
    Width = 80
    Height = 13
    Caption = 'WILAYAH KERJA'
  end
  object Label3: TLabel
    Left = 144
    Top = 137
    Width = 112
    Height = 13
    Caption = 'KONSERVASI WILAYAH'
  end
  object Label4: TLabel
    Left = 144
    Top = 403
    Width = 64
    Height = 13
    Caption = 'FILTER DATA'
  end
  object DBGrid1: TDBGrid
    Left = 120
    Top = 232
    Width = 433
    Height = 120
    DataSource = DataModule1.DSWilayah
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 408
    Top = 160
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 505
    Top = 159
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 505
    Top = 190
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 408
    Top = 191
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 4
    OnClick = Button4Click
  end
  object EIdwilayah: TEdit
    Left = 262
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EWilayahkerja: TEdit
    Left = 262
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object EKonservasiwilayah: TEdit
    Left = 262
    Top = 134
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object EFilterData: TEdit
    Left = 262
    Top = 400
    Width = 361
    Height = 21
    TabOrder = 8
    OnChange = EFilterDataChange
  end
end

object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 450
  ClientWidth = 722
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
    Left = 112
    Top = 72
    Width = 51
    Height = 13
    Caption = 'ID HEWAN'
  end
  object Label2: TLabel
    Left = 112
    Top = 104
    Width = 67
    Height = 13
    Caption = 'NAMA ILMIAH'
  end
  object Label3: TLabel
    Left = 112
    Top = 131
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label4: TLabel
    Left = 72
    Top = 168
    Width = 3
    Height = 13
  end
  object JUMLAH: TLabel
    Left = 112
    Top = 153
    Width = 39
    Height = 13
    Caption = 'JUMLAH'
  end
  object JENIS: TLabel
    Left = 112
    Top = 185
    Width = 28
    Height = 13
    Caption = 'JENIS'
  end
  object Label5: TLabel
    Left = 56
    Top = 416
    Width = 64
    Height = 13
    Caption = 'FILTER DATA'
  end
  object EId_hewan: TEdit
    Left = 208
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = EId_hewanKeyPress
  end
  object ENamaIlmiah: TEdit
    Left = 208
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = ENamaIlmiahKeyPress
  end
  object ENama: TEdit
    Left = 208
    Top = 123
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = ENamaKeyPress
  end
  object EJumlah: TEdit
    Left = 208
    Top = 150
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = EJumlahKeyPress
  end
  object EJenis: TEdit
    Left = 208
    Top = 177
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 282
    Width = 577
    Height = 120
    DataSource = DataModule1.DSHewan
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object EFilterData: TEdit
    Left = 200
    Top = 408
    Width = 417
    Height = 21
    TabOrder = 6
    OnChange = EFilterDataChange
  end
  object Button1: TButton
    Left = 472
    Top = 208
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 560
    Top = 208
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 472
    Top = 239
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 560
    Top = 239
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 10
    OnClick = Button4Click
  end
end

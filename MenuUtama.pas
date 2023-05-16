unit MenuUtama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Umodule, MenuHewan, MenuKematianHewan, MenuPenambahanHewan, MenuWilayah,
  MenuTersangka, MenuBarangBukti, MenuPelanggaran, MenuPasal, MenuPenanganan,
  MenuPolhut;

procedure TForm2.Button10Click(Sender: TObject);
begin
Form11.show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
 Form3.show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form4.show;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
 Form5.show;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
 Form6.show;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
 Form9.show;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
 Form7.show;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
 Form8.show;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
 Form10.show;
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
Form12.show;
end;

end.

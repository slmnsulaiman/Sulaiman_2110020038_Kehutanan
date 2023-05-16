unit MenuTersangka;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TForm9 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EIdTersangka: TEdit;
    ENamaTersangka: TEdit;
    ENoKtp: TEdit;
    EUmur: TEdit;
    EAlamat: TEdit;
    Label6: TLabel;
    EFilterData: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure EFilterDataChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Umodule;

procedure TForm9.Button1Click(Sender: TObject);
begin
  try
           with DataModule1 do
           begin
           ZTersangka.Append;
           ZTersangkaid_tersangka.AsString:=EIdTersangka.Text;
           ZTersangkano_ktp.AsString:=ENoKtp.Text;
           ZTersangkanm_tersangka.AsString:=ENamaTersangka.Text;
           ZTersangkaumur.AsString:=EUmur.Text;
           ZTersangkaalamat.AsString:=EAlamat.Text;
           ZTersangka.Post;

           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);

      end;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
  try
           with DataModule1 do
           begin
           ZTersangka.Edit;
           ZTersangkaid_tersangka.AsString:=EIdTersangka.Text;
           ZTersangkano_ktp.AsString:=ENoKtp.Text;
           ZTersangkanm_tersangka.AsString:=ENamaTersangka.Text;
           ZTersangkaumur.AsString:=EUmur.Text;
           ZTersangkaalamat.AsString:=EAlamat.Text;
           ZTersangka.Post;

           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);

      end;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
  if(
    (Trim(EIdTersangka.Text)='')and
   (Trim(ENamaTersangka.Text)='')and
   (Trim(ENoKtp.Text)='')and
   (Trim(EUmur.Text)='')and
   (Trim(EAlamat.Text)='')


) then
begin
   beep;
   ShowMessage('Silahkan pilih data terlebi dahulu');
   DBGrid1.SetFocus;
   Exit;
end else;
  DataModule1.ZTersangka.Delete
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
  EIdTersangka.Clear;
  ENoKtp.Clear;
  ENamaTersangka.Clear;
  EUmur.Clear;
  EAlamat.Clear;
end;

procedure TForm9.EFilterDataChange(Sender: TObject);
var cari : String;
begin
  try
    cari :=QuotedStr('%'+EFilterData.Text+'%');
    with DataModule1 do
    begin
      ZTersangka.SQL.Clear;
      ZTersangka.SQL.Text:='SELECT * FROM tersangka WHERE id_tersangka LIKE ' + cari + 'or no_ktp LIKE' + cari + 'or nm_tersangka LIKE'+ cari + 'or umur LIKE'+ cari + 'or alamat LIKE' + cari;
      ZTersangka.Open;
    end;

  except
    on salah:Exception do
    ShowMessage(salah.Message);

  end;
end;

end.

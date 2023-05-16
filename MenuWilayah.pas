unit MenuWilayah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    EIdwilayah: TEdit;
    EWilayahkerja: TEdit;
    EKonservasiwilayah: TEdit;
    EFilterData: TEdit;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EFilterDataChange(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Umodule;

procedure TForm6.Button1Click(Sender: TObject);
begin
  try
           with DataModule1 do
           begin
           ZWilayah.Append;
           ZWilayahid_wilayah.AsString:=EIdwilayah.Text;
           ZWilayahwilayah_kerja.AsString:=EWilayahkerja.Text;
           ZWilayahkonservasi_wilayah.AsString:=EKonservasiwilayah.Text;


           ZWilayah.Post;

           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);

      end;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  try
           with DataModule1 do
           begin
           ZWilayah.Edit;
           ZWilayahid_wilayah.AsString:=EIdwilayah.Text;
           ZWilayahwilayah_kerja.AsString:=EWilayahkerja.Text;
           ZWilayahkonservasi_wilayah.AsString:=EKonservasiwilayah.Text;


           ZWilayah.Post;

           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);

      end;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  EIdwilayah.Clear;
  EWilayahkerja.Clear;
  EKonservasiwilayah.Clear;
  EIdwilayah.SetFocus;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
  if(
   (Trim(EIdwilayah.Text)='')and
   (Trim(EWilayahkerja.Text)='')and
   (Trim(EKonservasiwilayah.Text)='')


) then
begin
   beep;
   ShowMessage('Silahkan pilih data terlebi dahulu');
   DBGrid1.SetFocus;
   Exit;
end else;
  DataModule1.ZWilayah.Delete
end;

procedure TForm6.EFilterDataChange(Sender: TObject);
var cari : String;
begin
  try
      cari :=QuotedStr('%'+EFilterData.Text+'%');
      with DataModule1 do
      begin
        ZWilayah.SQL.Clear;
        ZWilayah.SQL.Text:='SELECT * FROM wilayah WHERE id_wilayah LIKE ' + cari + 'or wilayah_kerja LIKE' + cari + 'or konservasi_wilayah LIKE'+ cari ;
        ZWilayah.Open;
      end;

    except
      on salah:Exception do
      ShowMessage(salah.Message);

    end;
end;

end.

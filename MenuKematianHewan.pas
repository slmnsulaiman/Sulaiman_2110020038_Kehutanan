unit MenuKematianHewan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EIdkematian: TEdit;
    EKet: TEdit;
    EJumlah: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label6: TLabel;
    EFilterData: TEdit;
    EId_hewan: TComboBox;
    EIdwilayah: TComboBox;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EFilterDataChange(Sender: TObject);
    procedure EIdkematianKeyPress(Sender: TObject; var Key: Char);
    procedure EId_hewanKeyPress(Sender: TObject; var Key: Char);
    procedure EIdwilayahKeyPress(Sender: TObject; var Key: Char);
    procedure EKetKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Umodule, MenuUtama;

procedure TForm4.Button1Click(Sender: TObject);
begin
  try
           with DataModule1 do
           begin
           ZKematianHewan.Append;
           ZKematianHewanid_kematian.AsString:=EIdkematian.Text;
           ZKematianHewanid_hewan.AsString:=EId_hewan.Text;
           ZKematianHewanid_wilayah.AsString:=EIdwilayah.Text;
           ZKematianHewanket.AsString:=EKet.Text;
           ZKematianHewanjumlah.AsString:=EJumlah.Text;
           ZKematianHewan.Post;

           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);

      end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  if(
    (Trim(EIdkematian.Text)='')and
   (Trim(EId_hewan.Text)='')and
   (Trim(EIdwilayah.Text)='')and
   (Trim(EKet.Text)='')and
   (Trim(EJumlah.Text)='')


) then
begin
   beep;
   ShowMessage('Silahkan pilih data terlebi dahulu');
   DBGrid1.SetFocus;
   Exit;
end else;
  DataModule1.ZHewan.Delete
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
try
           with DataModule1 do
           begin
           ZKematianHewan.Edit;
           ZKematianHewanid_kematian.AsString:=EIdkematian.Text;
           ZKematianHewanid_hewan.AsString:=EId_hewan.Text;
           ZKematianHewanid_wilayah.AsString:=EIdwilayah.Text;
           ZKematianHewanket.AsString:=EKet.Text;
           ZHewanjumlah.AsString:=EJumlah.Text;
           ZKematianHewan.Post;

           end;
      except
        on salah:Exception do
        ShowMessage(salah.Message);

      end;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
 EIdkematian.Clear;
 EId_hewan.Clear;
 EIdwilayah.Clear;
 EKet.Clear;
 EJumlah.Clear;
 EIdkematian.SetFocus;
end;

procedure TForm4.EFilterDataChange(Sender: TObject);
var cari : String;
begin
try
    cari :=QuotedStr('%'+EFilterData.Text+'%');
    with DataModule1 do
    begin
      ZKematianHewan.SQL.Clear;
      ZKematianHewan.SQL.Text:='SELECT * FROM kematian_hewan WHERE id_kematian LIKE ' + cari + 'or id_hewan LIKE' + cari + 'or id_wilayah LIKE'+ cari + 'or jumlah LIKE'+ cari + 'or ket LIKE' + cari;
      ZKematianHewan.Open;
    end;

  except
    on salah:Exception do
    ShowMessage(salah.Message);

  end;
end;

procedure TForm4.EIdkematianKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then EId_hewan.SetFocus;

end;

procedure TForm4.EIdwilayahKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then EKet.SetFocus;
end;

procedure TForm4.EId_hewanKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then EIdwilayah.SetFocus;
end;

procedure TForm4.EKetKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then EJumlah.SetFocus;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  with DataModule1 do
  begin
    EId_hewan.Items.Clear;
    ZHewan.Close;
    ZHewan.Open;
    while not ZHewan.Eof do
  begin
    EId_hewan.Items.Add(ZHewan.FieldByName('id_hewan').AsString);
    ZHewan.Next;
  end
  end;
with DataModule1 do
  begin
    EIdwilayah.Items.Clear;
    ZWilayah.Close;
    ZWilayah.Open;
    while not ZWilayah.Eof do
  begin
    EIdwilayah.Items.Add(ZWilayah.FieldByName('id_wilayah').AsString);
    ZWilayah.Next;
  end
  end;
end;

end.

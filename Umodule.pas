unit Umodule;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDataModule1 = class(TDataModule)
    ZConnection1: TZConnection;
    ZHewan: TZQuery;
    DSHewan: TDataSource;
    ZHewanid_hewan: TIntegerField;
    ZHewannm_ilmiah: TWideStringField;
    ZHewannama: TWideStringField;
    ZHewanjumlah: TWideStringField;
    ZHewanjenis: TWideStringField;
    ZKematianHewan: TZQuery;
    DasKematianHewan: TDataSource;
    ZKematianHewanid_kematian: TIntegerField;
    ZKematianHewanid_hewan: TIntegerField;
    ZKematianHewanid_wilayah: TIntegerField;
    ZKematianHewanket: TWideStringField;
    ZKematianHewanjumlah: TWideStringField;
    ZPenambahanHewan: TZQuery;
    DSPenambahanHewan: TDataSource;
    ZPenambahanHewanid_penambahan: TIntegerField;
    ZPenambahanHewanid_wilayah: TIntegerField;
    ZPenambahanHewanid_hewan: TIntegerField;
    ZPenambahanHewanket: TWideStringField;
    ZPenambahanHewansatuan: TWideStringField;
    ZPenambahanHewanjumlah: TWideStringField;
    ZWilayah: TZQuery;
    DSWilayah: TDataSource;
    ZWilayahid_wilayah: TIntegerField;
    ZWilayahwilayah_kerja: TWideStringField;
    ZWilayahkonservasi_wilayah: TWideStringField;
    ZPelanggaran: TZQuery;
    DsPelanggaran: TDataSource;
    ZPelanggaranid_bb: TIntegerField;
    ZPelanggarantanggal: TDateField;
    ZPelanggaranid_tersangka: TIntegerField;
    ZPelanggaranuraian_kasus: TWideStringField;
    ZPelanggaranno_laporan: TIntegerField;
    ZPelanggaranket_bb: TWideStringField;
    ZPelanggaranid_wilayah: TIntegerField;
    ZPelanggarankategori: TWideStringField;
    ZBarangBukti: TZQuery;
    DSBarangBukti: TDataSource;
    ZBarangBuktiid_bb: TIntegerField;
    ZBarangBuktinm_bb: TWideStringField;
    ZBarangBuktijumlah: TWideStringField;
    ZBarangBuktialat: TWideStringField;
    ZTersangka: TZQuery;
    DSTersangka: TDataSource;
    ZTersangkaid_tersangka: TIntegerField;
    ZTersangkano_ktp: TWideStringField;
    ZTersangkanm_tersangka: TWideStringField;
    ZTersangkaumur: TWideStringField;
    ZTersangkaalamat: TWideStringField;
    ZPasal: TZQuery;
    DsPasal: TDataSource;
    ZPasalno_pasal: TIntegerField;
    ZPasalnm_pasal: TWideStringField;
    ZPasalket: TWideStringField;
    Zpolhot: TZQuery;
    DsPolhut: TDataSource;
    Zpolhotno_sk: TWideStringField;
    Zpolhotnm_polhot: TWideStringField;
    Zpolhotjk: TWideStringField;
    Zpolhotumur: TWideStringField;
    ZPenanganan: TZQuery;
    DsPenanganan: TDataSource;
    ZPenangananno_penanganan: TIntegerField;
    ZPenangananno_laporan: TIntegerField;
    ZPenangananket: TWideStringField;
    ZPenangananno_sk: TWideStringField;
    ZPenangananno_pasal: TIntegerField;
    ZPenangananno_sprindik: TWideStringField;
    ZPenangananprogres: TWideStringField;
    Zlogin: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

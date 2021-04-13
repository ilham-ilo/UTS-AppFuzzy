unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Math;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    edt_suhuudara0: TEdit;
    edt_kelembabantanah0: TEdit;
    btn_proses: TButton;
    edt_panas: TEdit;
    edt_dingin: TEdit;
    edt_kering: TEdit;
    edt_basah: TEdit;
    edt_sebentar: TEdit;
    edt_lama: TEdit;
    lbl6: TLabel;
    pnl2: TPanel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl24: TLabel;
    edt_r1nm: TEdit;
    edt_r2nm: TEdit;
    edt_r3nm: TEdit;
    edt_r4nm: TEdit;
    mmo1: TMemo;
    pnl3: TPanel;
    lbl34: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edt_sebentar_ran1: TEdit;
    edt_lama_ran1: TEdit;
    edt_sebentar_ran2: TEdit;
    edt_lama_ran2: TEdit;
    edt_sebentar_ran3: TEdit;
    edt_lama_ran3: TEdit;
    edt_sebentar_ran4: TEdit;
    edt_lama_ran4: TEdit;
    edt_sebentar_ran5: TEdit;
    edt_lama_ran5: TEdit;
    edt_sebentar_ran6: TEdit;
    edt_lama_ran6: TEdit;
    btn_generate: TButton;
    pnl4: TPanel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    cht_suhu: TChart;
    lnsrsSeries1: TLineSeries;
    lnsrsSeries3: TLineSeries;
    cht_lembab: TChart;
    lnsrsSeries2: TLineSeries;
    lnsrsSeries4: TLineSeries;
    edt_upanas: TEdit;
    edt_udingin: TEdit;
    edt_ukering: TEdit;
    edt_ubasah: TEdit;
    pnl5: TPanel;
    lbl23: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    lbl37: TLabel;
    lbl38: TLabel;
    lbl39: TLabel;
    lbl40: TLabel;
    edt_r1ni: TEdit;
    edt_r2ni: TEdit;
    edt_r3ni: TEdit;
    edt_r4ni: TEdit;
    pnl6: TPanel;
    lbl31: TLabel;
    lbl32: TLabel;
    lbl33: TLabel;
    edt_KA_sebentar: TEdit;
    edt_KA_lama: TEdit;
    pnl7: TPanel;
    lbl35: TLabel;
    lbl36: TLabel;
    edt_centroid: TEdit;
    btn_forecast: TButton;
    procedure btn_prosesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_generateClick(Sender: TObject);
    procedure btn_forecastClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
suhu, lembab, panas, dingin, kering, basah, sebentar, lama: Real;
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_prosesClick(Sender: TObject);
var
  upanas, udingin, ukering, ubasah,
  op_r1nm, op_r2nm, op_r3nm, op_r4nm,
  op_lama, op_sebentar: Single;
begin
//code variabel untuk input nilai inisialisasi
suhu := strtofloat(edt_suhuudara0.Text);
lembab := strtofloat(edt_kelembabantanah0.Text);
panas := strtofloat(edt_panas.Text);
dingin := strtofloat(edt_dingin.Text);
kering := strtofloat(edt_kering.Text);
basah := strtofloat(edt_basah.Text);
sebentar := strtofloat(edt_sebentar.Text);
lama := strtofloat(edt_lama.Text);

//code perhitungan fuzifikasi untuk mencari u
edt_upanas.Text := floattostr((-(suhu-panas))/(panas-dingin));
edt_udingin.Text := floattostr(((suhu-dingin))/(panas-dingin));
edt_ukering.Text := floattostr((-(lembab-basah))/(basah-kering));
edt_ubasah.Text := floattostr(((lembab-kering))/(basah-kering));

//code memasukan data u ke grafik
cht_suhu.Series[0].Clear;
cht_suhu.Series[0].AddXY(StrToFloat(edt_dingin.Text), 1);
cht_suhu.Series[0].AddXY(StrToFloat(edt_panas.Text), 0);
cht_suhu.Series[1].Clear;
cht_suhu.Series[1].AddXY(StrToFloat(edt_dingin.Text), 0);
cht_suhu.Series[1].AddXY(StrToFloat(edt_panas.Text), 1);

cht_lembab.Series[0].Clear;
cht_lembab.Series[0].AddXY(StrToFloat(edt_kering.Text), 1);
cht_lembab.Series[0].AddXY(StrToFloat(edt_basah.Text), 0);
cht_lembab.Series[1].Clear;
cht_lembab.Series[1].AddXY(StrToFloat(edt_kering.Text), 0);
cht_lembab.Series[1].AddXY(StrToFloat(edt_basah.Text), 1);

//variabel untuk perhitungan mencari nilai minimum pada operasi fuzzy
upanas := StrToFloat(edt_upanas.Text);
udingin := StrToFloat(edt_udingin.Text);
ukering := StrToFloat(edt_ukering.Text);
ubasah := StrToFloat(edt_ubasah.Text);

//code untuk perhitungan mencari nilai minimum pada operasi fuzzy
//untuk rule yang sudah disediakan
op_r1nm := Min(upanas,ukering);
op_r2nm := Min(upanas,ubasah);
op_r3nm := Min(udingin,ukering);
op_r4nm := Min(udingin,ubasah);

edt_r1nm.Text := FloatToStr(op_r1nm);
edt_r1nm.Text := FormatFloat('0.##',op_r1nm);
edt_r2nm.Text := FloatToStr(op_r2nm);
edt_r2nm.Text := FormatFloat('0.##',op_r2nm);
edt_r3nm.Text := FloatToStr(op_r3nm);
edt_r3nm.Text := FormatFloat('0.##',op_r3nm);
edt_r4nm.Text := FloatToStr(op_r4nm);
edt_r4nm.Text := FormatFloat('0.##',op_r4nm);

//code untuk menginputkan nilai implikasi
edt_r1ni.Text := FloatToStr(op_r1nm);
edt_r1ni.Text := FormatFloat('0.##',op_r1nm);
edt_r2ni.Text := FloatToStr(op_r2nm);
edt_r2ni.Text := FormatFloat('0.##',op_r2nm);
edt_r3ni.Text := FloatToStr(op_r3nm);
edt_r3ni.Text := FormatFloat('0.##',op_r3nm);
edt_r4ni.Text := FloatToStr(op_r4nm);
edt_r4ni.Text := FormatFloat('0.##',op_r4nm);

//code untuk mencari nilai pada tahapan komposisi aturan
op_lama := Max(op_r1nm, op_r3nm);
op_sebentar := Max(op_r2nm, op_r4nm);
edt_KA_sebentar.Text := FloatToStr(op_sebentar);
edt_KA_sebentar.Text := FormatFloat('0.##',op_sebentar);
edt_KA_lama.Text := FloatToStr(op_lama);
edt_KA_lama.Text := FormatFloat('0.##',op_lama);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
edt_upanas.Enabled := False;
edt_udingin.Enabled := False;
edt_ukering.Enabled := False;
edt_ubasah.Enabled := False;

//code mengisi keterngan rule pada memo
mmo1.Clear;
mmo1.Lines.Add('KETERANGAN RULE:');
mmo1.Lines.Add('R1: IF Suhu PANAS AND Kelembaban KERING THEN Durasi LAMA');
mmo1.Lines.Add('R2: IF Suhu PANAS AND Kelembaban BASAH THEN Durasi SEBENTAR');
mmo1.Lines.Add('R3: IF Suhu DINGIN AND Kelembaban KERING THEN Durasi LAMA');
mmo1.Lines.Add('R4: IF Suhu DINGIN AND Kelembaban BASAH THEN Durasi SEBENTAR');
end;

procedure TForm1.btn_generateClick(Sender: TObject);
var
  ran1_sebentar, ran2_sebentar, ran3_sebentar,
  ran4_sebentar, ran5_sebentar, ran6_sebentar,
  ran1_lama, ran2_lama, ran3_lama,
  ran4_lama, ran5_lama, ran6_lama : Integer;

begin
//code untuk mengenerate nilai random dengan range nilai 2 hingga 60
//pada tahap deffuzifikasi diskrit
Randomize;
ran1_sebentar := RandomRange(2, 61);
ran2_sebentar := RandomRange(2, 61);
ran3_sebentar := RandomRange(2, 61);
ran4_sebentar := RandomRange(2, 61);
ran5_sebentar := RandomRange(2, 61);
ran6_sebentar := RandomRange(2, 61);
ran1_lama := RandomRange(2, 61);
ran2_lama := RandomRange(2, 61);
ran3_lama := RandomRange(2, 61);
ran4_lama := RandomRange(2, 61);
ran5_lama := RandomRange(2, 61);
ran6_lama := RandomRange(2, 61);

edt_sebentar_ran1.Text := IntToStr(ran1_sebentar);
edt_sebentar_ran2.Text := IntToStr(ran2_sebentar);
edt_sebentar_ran3.Text := IntToStr(ran3_sebentar);
edt_sebentar_ran4.Text := IntToStr(ran4_sebentar);
edt_sebentar_ran5.Text := IntToStr(ran5_sebentar);
edt_sebentar_ran6.Text := IntToStr(ran6_sebentar);

edt_lama_ran1.Text := IntToStr(ran1_lama);
edt_lama_ran2.Text := IntToStr(ran2_lama);
edt_lama_ran3.Text := IntToStr(ran3_lama);
edt_lama_ran4.Text := IntToStr(ran4_lama);
edt_lama_ran5.Text := IntToStr(ran5_lama);
edt_lama_ran6.Text := IntToStr(ran6_lama);
end;

procedure TForm1.btn_forecastClick(Sender: TObject);
var
  rs1, rs2, rs3, rs4, rs5, rs6,
  rl1, rl2, rl3, rl4, rl5, rl6: Integer;
  centroid, kas, kal: Single;
begin
//variabel untuk perhitungan centroid dari nilai random
//pada tahap defuzifikasi diskrit
rs1 := StrToInt(edt_sebentar_ran1.Text);
rs2 := StrToInt(edt_sebentar_ran2.Text);
rs3 := StrToInt(edt_sebentar_ran3.Text);
rs4 := StrToInt(edt_sebentar_ran4.Text);
rs5 := StrToInt(edt_sebentar_ran5.Text);
rs6 := StrToInt(edt_sebentar_ran6.Text);

rl1 := StrToInt(edt_lama_ran1.Text);
rl2 := StrToInt(edt_lama_ran2.Text);
rl3 := StrToInt(edt_lama_ran3.Text);
rl4 := StrToInt(edt_lama_ran4.Text);
rl5 := StrToInt(edt_lama_ran5.Text);
rl6 := StrToInt(edt_lama_ran6.Text);

//code variabel untuk mengambil nilai komposisi aturan
kas := StrToFloat(edt_KA_sebentar.Text);
kal := StrToFloat(edt_KA_lama.Text);

//code perhitungan untuk tahap mencari centroid
centroid := Round((((rs1 + rs2 + rs3 + rs4 + rs5 + rs6) * kas) +
            ((rl1 + rl2 + rl3 + rl4 + rl5 + rl6) * kal)) /
            ((kas*6)+(kal*6)));
edt_centroid.Text := FloatToStr(centroid);
end;

end.

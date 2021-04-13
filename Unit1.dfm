object Form1: TForm1
  Left = 68
  Top = 137
  Width = 995
  Height = 697
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 497
    Height = 257
    Color = clFuchsia
    TabOrder = 0
    object lbl1: TLabel
      Left = 24
      Top = 16
      Width = 78
      Height = 13
      Caption = '[0] Inisialisasi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 24
      Top = 56
      Width = 57
      Height = 13
      Caption = 'Suhu Udara'
    end
    object lbl3: TLabel
      Left = 24
      Top = 96
      Width = 93
      Height = 13
      Caption = 'Kelembaban Tanah'
    end
    object lbl4: TLabel
      Left = 24
      Top = 176
      Width = 30
      Height = 13
      Caption = 'Panas'
    end
    object lbl5: TLabel
      Left = 24
      Top = 216
      Width = 30
      Height = 13
      Caption = 'Dingin'
    end
    object lbl7: TLabel
      Left = 176
      Top = 176
      Width = 30
      Height = 13
      Caption = 'Kering'
    end
    object lbl8: TLabel
      Left = 176
      Top = 216
      Width = 30
      Height = 13
      Caption = 'Basah'
    end
    object lbl9: TLabel
      Left = 176
      Top = 144
      Width = 96
      Height = 13
      Caption = 'Kelembaban Tanah:'
    end
    object lbl10: TLabel
      Left = 328
      Top = 176
      Width = 43
      Height = 13
      Caption = 'Sebentar'
    end
    object lbl11: TLabel
      Left = 328
      Top = 216
      Width = 26
      Height = 13
      Caption = 'Lama'
    end
    object lbl12: TLabel
      Left = 328
      Top = 144
      Width = 33
      Height = 13
      Caption = 'Durasi:'
    end
    object lbl6: TLabel
      Left = 24
      Top = 148
      Width = 60
      Height = 13
      Caption = 'Suhu Udara:'
    end
    object edt_suhuudara0: TEdit
      Left = 152
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt_kelembabantanah0: TEdit
      Left = 152
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btn_proses: TButton
      Left = 296
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 2
      OnClick = btn_prosesClick
    end
    object edt_panas: TEdit
      Left = 80
      Top = 176
      Width = 81
      Height = 21
      TabOrder = 3
    end
    object edt_dingin: TEdit
      Left = 80
      Top = 216
      Width = 81
      Height = 21
      TabOrder = 4
    end
    object edt_kering: TEdit
      Left = 232
      Top = 176
      Width = 81
      Height = 21
      TabOrder = 5
    end
    object edt_basah: TEdit
      Left = 232
      Top = 216
      Width = 81
      Height = 21
      TabOrder = 6
    end
    object edt_sebentar: TEdit
      Left = 392
      Top = 176
      Width = 73
      Height = 21
      TabOrder = 7
    end
    object edt_lama: TEdit
      Left = 392
      Top = 216
      Width = 73
      Height = 21
      TabOrder = 8
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 264
    Width = 497
    Height = 177
    Color = clLime
    TabOrder = 1
    object lbl18: TLabel
      Left = 16
      Top = 12
      Width = 99
      Height = 13
      Caption = '[2] Operasi Fuzzy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl19: TLabel
      Left = 16
      Top = 68
      Width = 20
      Height = 13
      Caption = 'R[1]'
    end
    object lbl20: TLabel
      Left = 16
      Top = 92
      Width = 20
      Height = 13
      Caption = 'R[2]'
    end
    object lbl21: TLabel
      Left = 16
      Top = 116
      Width = 20
      Height = 13
      Caption = 'R[3]'
    end
    object lbl22: TLabel
      Left = 16
      Top = 140
      Width = 20
      Height = 13
      Caption = 'R[4]'
    end
    object lbl24: TLabel
      Left = 48
      Top = 44
      Width = 64
      Height = 13
      Caption = 'Nilai Minimum'
    end
    object edt_r1nm: TEdit
      Left = 48
      Top = 68
      Width = 81
      Height = 21
      TabOrder = 0
    end
    object edt_r2nm: TEdit
      Left = 48
      Top = 92
      Width = 81
      Height = 21
      TabOrder = 1
    end
    object edt_r3nm: TEdit
      Left = 48
      Top = 116
      Width = 81
      Height = 21
      TabOrder = 2
    end
    object edt_r4nm: TEdit
      Left = 48
      Top = 140
      Width = 81
      Height = 21
      TabOrder = 3
    end
    object mmo1: TMemo
      Left = 144
      Top = 27
      Width = 345
      Height = 142
      Lines.Strings = (
        'mmo1')
      TabOrder = 4
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 448
    Width = 497
    Height = 209
    Color = clYellow
    TabOrder = 2
    object lbl34: TLabel
      Left = 16
      Top = 12
      Width = 132
      Height = 13
      Caption = '[5] Defuzzifikasi Diskrit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 112
      Top = 36
      Width = 43
      Height = 13
      Caption = 'Sebentar'
    end
    object Label2: TLabel
      Left = 216
      Top = 36
      Width = 26
      Height = 13
      Caption = 'Lama'
    end
    object edt_sebentar_ran1: TEdit
      Left = 96
      Top = 52
      Width = 73
      Height = 21
      TabOrder = 0
    end
    object edt_lama_ran1: TEdit
      Left = 192
      Top = 52
      Width = 73
      Height = 21
      TabOrder = 1
    end
    object edt_sebentar_ran2: TEdit
      Left = 96
      Top = 76
      Width = 73
      Height = 21
      TabOrder = 2
    end
    object edt_lama_ran2: TEdit
      Left = 192
      Top = 76
      Width = 73
      Height = 21
      TabOrder = 3
    end
    object edt_sebentar_ran3: TEdit
      Left = 96
      Top = 100
      Width = 73
      Height = 21
      TabOrder = 4
    end
    object edt_lama_ran3: TEdit
      Left = 192
      Top = 100
      Width = 73
      Height = 21
      TabOrder = 5
    end
    object edt_sebentar_ran4: TEdit
      Left = 96
      Top = 124
      Width = 73
      Height = 21
      TabOrder = 6
    end
    object edt_lama_ran4: TEdit
      Left = 192
      Top = 124
      Width = 73
      Height = 21
      TabOrder = 7
    end
    object edt_sebentar_ran5: TEdit
      Left = 96
      Top = 148
      Width = 73
      Height = 21
      TabOrder = 8
    end
    object edt_lama_ran5: TEdit
      Left = 192
      Top = 148
      Width = 73
      Height = 21
      TabOrder = 9
    end
    object edt_sebentar_ran6: TEdit
      Left = 96
      Top = 172
      Width = 73
      Height = 21
      TabOrder = 10
    end
    object edt_lama_ran6: TEdit
      Left = 192
      Top = 172
      Width = 73
      Height = 21
      TabOrder = 11
    end
    object btn_generate: TButton
      Left = 288
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Generate'
      TabOrder = 12
      OnClick = btn_generateClick
    end
  end
  object pnl4: TPanel
    Left = 496
    Top = 0
    Width = 481
    Height = 257
    Color = clAqua
    TabOrder = 3
    object lbl13: TLabel
      Left = 37
      Top = 184
      Width = 36
      Height = 13
      Caption = 'uPanas'
    end
    object lbl14: TLabel
      Left = 37
      Top = 208
      Width = 36
      Height = 13
      Caption = 'uDingin'
    end
    object lbl15: TLabel
      Left = 253
      Top = 184
      Width = 36
      Height = 13
      Caption = 'uKering'
    end
    object lbl16: TLabel
      Left = 253
      Top = 208
      Width = 36
      Height = 13
      Caption = 'uBasah'
    end
    object lbl17: TLabel
      Left = 31
      Top = 16
      Width = 73
      Height = 13
      Caption = '[1] Fuzifikasi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cht_suhu: TChart
      Left = 32
      Top = 40
      Width = 209
      Height = 129
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      LeftWall.Color = clWhite
      Title.Text.Strings = (
        'Suhu Udara')
      View3D = False
      TabOrder = 0
      object lnsrsSeries1: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = 'Panas'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object lnsrsSeries3: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clGreen
        Title = 'Dingin'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object cht_lembab: TChart
      Left = 248
      Top = 40
      Width = 201
      Height = 129
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'Kelembaban Tanah')
      View3D = False
      TabOrder = 1
      object lnsrsSeries2: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = 'Kering'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object lnsrsSeries4: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clGreen
        Title = 'Basah'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object edt_upanas: TEdit
      Left = 80
      Top = 184
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edt_udingin: TEdit
      Left = 80
      Top = 208
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edt_ukering: TEdit
      Left = 296
      Top = 184
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edt_ubasah: TEdit
      Left = 296
      Top = 208
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object pnl5: TPanel
    Left = 496
    Top = 264
    Width = 225
    Height = 177
    Color = clSilver
    TabOrder = 4
    object lbl23: TLabel
      Left = 34
      Top = 12
      Width = 69
      Height = 13
      Caption = '[3] Implikasi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl25: TLabel
      Left = 29
      Top = 60
      Width = 20
      Height = 13
      Caption = 'R[1]'
    end
    object lbl26: TLabel
      Left = 29
      Top = 84
      Width = 20
      Height = 13
      Caption = 'R[2]'
    end
    object lbl27: TLabel
      Left = 29
      Top = 116
      Width = 20
      Height = 13
      Caption = 'R[3]'
    end
    object lbl28: TLabel
      Left = 29
      Top = 148
      Width = 20
      Height = 13
      Caption = 'R[4]'
    end
    object lbl29: TLabel
      Left = 58
      Top = 36
      Width = 63
      Height = 13
      Caption = 'Nilai Implikasi'
    end
    object lbl30: TLabel
      Left = 152
      Top = 36
      Width = 41
      Height = 13
      Caption = 'Decision'
    end
    object lbl37: TLabel
      Left = 151
      Top = 52
      Width = 26
      Height = 13
      Caption = 'Lama'
    end
    object lbl38: TLabel
      Left = 150
      Top = 84
      Width = 43
      Height = 13
      Caption = 'Sebentar'
    end
    object lbl39: TLabel
      Left = 151
      Top = 116
      Width = 26
      Height = 13
      Caption = 'Lama'
    end
    object lbl40: TLabel
      Left = 150
      Top = 148
      Width = 43
      Height = 13
      Caption = 'Sebentar'
    end
    object edt_r1ni: TEdit
      Left = 56
      Top = 52
      Width = 73
      Height = 21
      TabOrder = 0
    end
    object edt_r2ni: TEdit
      Left = 56
      Top = 84
      Width = 73
      Height = 21
      TabOrder = 1
    end
    object edt_r3ni: TEdit
      Left = 56
      Top = 116
      Width = 73
      Height = 21
      TabOrder = 2
    end
    object edt_r4ni: TEdit
      Left = 56
      Top = 148
      Width = 73
      Height = 21
      TabOrder = 3
    end
  end
  object pnl6: TPanel
    Left = 720
    Top = 264
    Width = 257
    Height = 177
    Color = clMoneyGreen
    TabOrder = 5
    object lbl31: TLabel
      Left = 20
      Top = 12
      Width = 117
      Height = 13
      Caption = '[4] Komposisi Aturan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl32: TLabel
      Left = 54
      Top = 44
      Width = 43
      Height = 13
      Caption = 'Sebentar'
    end
    object lbl33: TLabel
      Left = 175
      Top = 44
      Width = 26
      Height = 13
      Caption = 'Lama'
    end
    object edt_KA_sebentar: TEdit
      Left = 40
      Top = 60
      Width = 73
      Height = 21
      TabOrder = 0
    end
    object edt_KA_lama: TEdit
      Left = 152
      Top = 60
      Width = 73
      Height = 21
      TabOrder = 1
    end
  end
  object pnl7: TPanel
    Left = 496
    Top = 448
    Width = 481
    Height = 209
    Color = clSkyBlue
    TabOrder = 6
    object lbl35: TLabel
      Left = 22
      Top = 20
      Width = 67
      Height = 13
      Caption = '[6] Centroid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl36: TLabel
      Left = 21
      Top = 44
      Width = 188
      Height = 13
      Caption = 'Hasil Taksiran Durasi Yang Dikeluarkan'
    end
    object edt_centroid: TEdit
      Left = 24
      Top = 68
      Width = 193
      Height = 21
      TabOrder = 0
    end
    object btn_forecast: TButton
      Left = 238
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Forecast'
      TabOrder = 1
      OnClick = btn_forecastClick
    end
  end
end

object Form1: TForm1
  Left = 350
  Top = 232
  Width = 687
  Height = 220
  VertScrollBar.Color = clDefault
  VertScrollBar.ParentColor = False
  Caption = 'CRAZY LABEL - ant0nchikov.pro'
  Color = clBackground
  DefaultMonitor = dmPrimary
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 104
    Width = 95
    Height = 24
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CrazyLabel1: TCrazyLabel
    Left = 24
    Top = 40
    Width = 303
    Height = 45
    Caption = '!!  Crazy LABEL!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -40
    Font.Name = 'Arial'
    Font.Style = []
    Speed = 45
    FontColor = clBlack
    OnFontChange = CrazyLabel1FontChange
  end
  object Label2: TLabel
    Left = 416
    Top = 96
    Width = 171
    Height = 16
    Caption = #1062#1074#1077#1090' '#1090#1077#1082#1089#1090#1072' '#1080#1079#1084#1077#1085#1077#1085'!!!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object CrazyLabel2: TCrazyLabel
    Left = 352
    Top = 40
    Width = 303
    Height = 45
    Caption = 'ABEL!!!  Crazy L'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -40
    Font.Name = 'Arial'
    Font.Style = []
    Speed = 45
    FontColor = clBlack
    OnFontChange = CrazyLabel2FontChange
  end
  object CG1: TColorGrid
    Left = -96
    Top = 40
    Width = 96
    Height = 100
    TabOrder = 0
  end
  object Button1: TButton
    Left = 216
    Top = 104
    Width = 113
    Height = 17
    Caption = #1057#1058#1040#1056#1058' CRAZY'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 128
    Width = 113
    Height = 17
    Caption = #1057#1058#1054#1055' CRAZY'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button5: TButton
    Left = 216
    Top = 152
    Width = 113
    Height = 17
    Caption = #1047#1040#1050#1056#1067#1058#1068
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button5Click
  end
  object TrackBar1: TTrackBar
    Left = 40
    Top = 136
    Width = 153
    Height = 17
    Max = 5
    TabOrder = 4
    OnChange = TrackBar1Change
  end
  object Button6: TButton
    Left = 400
    Top = 128
    Width = 225
    Height = 33
    Caption = #1057#1086#1073#1099#1090#1080#1077' CRAZY LABEL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button6Click
  end
  object Time: TTimer
    Enabled = False
    Interval = 30
    OnTimer = TimeTimer
  end
end

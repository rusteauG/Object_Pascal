object frmForm1: TfrmForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 361
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClick = FormClick
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblStatus: TLabel
    Left = 8
    Top = 64
    Width = 200
    Height = 13
    BiDiMode = bdRightToLeft
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Show Form2'
    TabOrder = 0
    OnClick = Button1Click
  end
  object btnOpenSecondForm: TButton
    Left = 104
    Top = 8
    Width = 75
    Height = 25
    Caption = 'btnOpenSecondForm'
    TabOrder = 1
    OnClick = btnOpenSecondFormClick
  end
end

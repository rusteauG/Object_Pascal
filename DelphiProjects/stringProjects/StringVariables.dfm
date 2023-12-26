object frmStringVariables: TfrmStringVariables
  Left = 0
  Top = 0
  Caption = 'An English pangram....'
  ClientHeight = 184
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 13
  object edtPhrase: TEdit
    Left = 8
    Top = 72
    Width = 666
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object btnDisplayPangram: TButton
    Left = 8
    Top = 24
    Width = 90
    Height = 25
    Caption = 'Display Pangram'
    TabOrder = 1
    OnClick = btnDisplayPangramClick
  end
  object btnUpperCase: TButton
    Left = 104
    Top = 24
    Width = 90
    Height = 25
    Caption = 'UpperCase'
    TabOrder = 2
    OnClick = btnUpperCaseClick
  end
  object btnLowerCase: TButton
    Left = 200
    Top = 24
    Width = 90
    Height = 25
    Caption = 'LowerCase'
    TabOrder = 3
    OnClick = btnLowerCaseClick
  end
  object btnInsert: TButton
    Left = 488
    Top = 8
    Width = 90
    Height = 25
    Caption = 'Insert'
    TabOrder = 4
    OnClick = btnInsertClick
  end
  object btnTrim: TButton
    Left = 296
    Top = 24
    Width = 90
    Height = 25
    Caption = 'Trim'
    TabOrder = 5
  end
  object pnlLength: TPanel
    Left = 96
    Top = 104
    Width = 578
    Height = 26
    Alignment = taLeftJustify
    BevelKind = bkFlat
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object btnStringReplace: TButton
    Left = 584
    Top = 24
    Width = 90
    Height = 25
    Caption = 'StringReplace'
    TabOrder = 7
    OnClick = btnStringReplaceClick
  end
  object btnCopy: TButton
    Left = 392
    Top = 24
    Width = 90
    Height = 25
    Caption = 'Copy'
    TabOrder = 8
    OnClick = btnCopyClick
  end
  object pnlMessage: TPanel
    Left = 96
    Top = 129
    Width = 578
    Height = 26
    Alignment = taLeftJustify
    BevelKind = bkFlat
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object pnlLengthHeader: TPanel
    Left = 8
    Top = 104
    Width = 90
    Height = 26
    Alignment = taLeftJustify
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = 'Length:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object pnlMessageHeader: TPanel
    Left = 8
    Top = 129
    Width = 90
    Height = 26
    Alignment = taLeftJustify
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = 'Message:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object Button1: TButton
    Left = 488
    Top = 41
    Width = 90
    Height = 25
    Caption = 'Insertv2'
    TabOrder = 12
    OnClick = Button1Click
  end
  object btnDelete: TButton
    Left = 685
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 13
    OnClick = btnDeleteClick
  end
  object MainMenu1: TMainMenu
    Left = 720
    Top = 136
    object mnuFile: TMenuItem
      Caption = 'File'
      object mnuDisplayPangram: TMenuItem
        Caption = 'Display Pangram'
        OnClick = btnDisplayPangramClick
      end
    end
    object mnuEdit: TMenuItem
      Caption = 'Edit'
      object mnuCopy: TMenuItem
        Caption = 'Copy'
        OnClick = btnCopyClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuInsert: TMenuItem
        Caption = 'Insert'
        OnClick = btnInsertClick
      end
      object mnuReplace: TMenuItem
        Caption = 'Replace'
        OnClick = btnStringReplaceClick
      end
      object mnuDelete: TMenuItem
        Caption = 'Delete'
        OnClick = btnDeleteClick
      end
      object mnuInsertv2: TMenuItem
        Caption = 'Insertv2'
        OnClick = Button1Click
      end
    end
    object mnuFormat: TMenuItem
      Caption = 'Format'
      object mnuUpperCase: TMenuItem
        Caption = 'UpperCase'
        OnClick = btnUpperCaseClick
      end
      object mnuLowercase: TMenuItem
        Caption = 'Lowercase'
        OnClick = btnLowerCaseClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mnurim: TMenuItem
        Caption = 'Trim'
      end
    end
  end
end

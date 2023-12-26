object frmPangramList: TfrmPangramList
  Left = 0
  Top = 0
  Caption = 'Pangram List'
  ClientHeight = 144
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnSelect: TButton
    Left = 472
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Select'
    TabOrder = 0
    OnClick = btnSelectClick
  end
  object cboSelect: TComboBox
    Left = 8
    Top = 40
    Width = 539
    Height = 23
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = '[Select a pangram from the list...]'
    OnChange = cboSelectChange
    Items.Strings = (
      '[Select a pangram from the list...]'
      'The quick brown fox jumps over the lazy dog'
      'Have a pick: twenty-six letters '#8212' no forcing a jumbled quiz!'
      'Bright vixens jump; dozy fowl quack.'
      'Both fickle dwarves jinx my pig quiz.'
      'Big dwarves heckle my top quiz of jinx. '
      'The five boxing wizards jump quickly.'
      'Waxy and quivering, jocks fumble the pizza.'
      'When zombies arrive, quickly fax judge Pat'
      'Watch '#8220'Jeopardy!'#8221', Alex Trebek'#8217's fun TV quiz game.'
      'Who packed five dozen old quart jugs in my box?')
  end
end

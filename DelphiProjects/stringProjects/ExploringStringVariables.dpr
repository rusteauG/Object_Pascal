program ExploringStringVariables;

uses
  Vcl.Forms,
  StringVariables in 'StringVariables.pas' {frmStringVariables},
  PangramList_u in 'PangramList_u.pas' {frmPangramList};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmStringVariables, frmStringVariables);
  Application.CreateForm(TfrmPangramList, frmPangramList);
  Application.Run;
end.

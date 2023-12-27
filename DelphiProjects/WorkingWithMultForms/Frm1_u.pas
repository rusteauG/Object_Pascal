unit Frm1_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Frm2_u,Form3_u;

type
  TfrmForm1 = class(TForm)
    Button1: TButton;
    btnOpenSecondForm: TButton;
    lblStatus: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOpenSecondFormClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
        procedure UpdateStatusLabel;

  public
    { Public declarations }
  end;

var
  frmForm1: TfrmForm1;

implementation

{$R *.dfm}
procedure TfrmForm1.UpdateStatusLabel;
begin
  self.lblStatus.Caption :='Status: Form1 is active.';
end;

procedure TfrmForm1.btnOpenSecondFormClick(Sender: TObject);
var
  secondForm:TForm3;

begin
  //Create an instance of the second Form
  secondForm := TForm3.Create(Self);
  try
   //Showthe second form modally
   case secondForm.ShowModal of
    mrOk:
      begin
   // If the second form returns OK, update the status label in Form1
      UpdateStatusLabel;
    end;
    mrCancel:
      begin
      // Handle the Cancel action if the user clicked the Cancel button
          ShowMessage('Cancelled!');
      end;
   end;
  finally
    //free the second Form after use
    secondForm.Free;
  end;
end;

procedure TfrmForm1.Button1Click(Sender: TObject);
begin
  frmForm2.Show;
end;

procedure TfrmForm1.FormActivate(Sender: TObject);
begin
  self.Caption :='Main Form Activated!';
end;

procedure TfrmForm1.FormClick(Sender: TObject);
begin
  self.Caption :='Main Form Clikced!';
end;

procedure TfrmForm1.FormCreate(Sender: TObject);
begin
  frmForm1.Caption := 'Form1 Created';
end;

procedure TfrmForm1.FormDeactivate(Sender: TObject);
begin
self.Caption :='Main Form Deactivated!!';
end;

end.

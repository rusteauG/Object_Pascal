unit PangramList_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPangramList = class(TForm)
    btnSelect: TButton;
    cboSelect: TComboBox;
    procedure btnSelectClick(Sender: TObject);
    procedure cboSelectChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strSelectPangram:String;
  end;

var
  frmPangramList: TfrmPangramList;

implementation

{$R *.dfm}

procedure TfrmPangramList.btnSelectClick(Sender: TObject);
begin
self.Close;

end;

procedure TfrmPangramList.cboSelectChange(Sender: TObject);
begin
  strSelectPangram := cboSelect.Text;

end;

end.

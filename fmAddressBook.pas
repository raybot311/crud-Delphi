unit fmAddressBook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, dbisamtb, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    btnAdd: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses dmAddressBook, fmAddressEdit;

{$R *.dfm}

procedure TForm1.btnAddClick(Sender: TObject);
begin
  frmAddressEdit := TfrmAddressEdit.create(self, fmAdd);
  frmAddressEdit.Free;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Dm.qAddressBook.open;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  frmAddressEdit := TfrmAddressEdit.Create(self,fmEdit);
  frmAddressEdit.Free;
end;

end.

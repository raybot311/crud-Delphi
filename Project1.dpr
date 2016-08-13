program Project1;

uses
  Vcl.Forms,
  fmAddressBook in 'fmAddressBook.pas' {Form1},
  fmAddressEdit in 'fmAddressEdit.pas' {frmAddressEdit},
  dmAddressBook in 'dmAddressBook.pas' {Dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDm, Dm);
  Application.Run;
end.

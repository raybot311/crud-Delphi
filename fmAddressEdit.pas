unit fmAddressEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFormMode = (fmAdd, fmEdit);

  TfrmAddressEdit = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edFirstname: TEdit;
    edLastname: TEdit;
    edAddress: TEdit;
    edState: TEdit;
    edZip: TEdit;
    Label6: TLabel;
    edCity: TEdit;
    procedure edZipKeyPress(Sender: TObject; var Key: Char);
    procedure edStateKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    fFormMode: TFormMode;
    procedure Validate;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; AFormMode: TFormMode);
    procedure Add;
    procedure Edit;
  end;

var
  frmAddressEdit: TfrmAddressEdit;

implementation

uses dmAddressBook;

{$R *.dfm}

procedure TfrmAddressEdit.Add;
begin
  if Showmodal = mrOK then
  begin
    // post new record
    dm.AddRecord(edFirstname.Text,
                 edLastname.Text,
                 edAddress.Text,
                 edCity.Text,
                 edState.Text,
                 edZip.Text);
  end;
end;

procedure TfrmAddressEdit.Edit;
begin
    //dm.qAddressBookAddressID.Value;
    edFirstname.Text := dm.qAddressBookFirstname.AsString;
    edLastname.Text := dm.qAddressBookLastname.AsString;
    edAddress.Text := dm.qAddressBookAddress.AsString;
    edState.Text := dm.qAddressBookState.AsString;
    edCity.Text := dm.qAddressBookCity.AsString;
    edZip.Text := dm.qAddressBookZip.AsString;
  if Showmodal <> mrOk then
    exit;


end;

constructor TfrmAddressEdit.Create(AOwner: TComponent; AFormMode: TFormMode);
begin
  inherited create(AOwner);
  fFormMode := AFormMode;
  if AOwner is TForm then
  begin
    top := TForm(AOwner).Top + 20;
    left := TForm(AOwner).Left + 20;
  end;
  if fFormMode = fmAdd then
    add
  else if fFormMode = fmEdit then
    edit;

end;


procedure TfrmAddressEdit.edStateKeyPress(Sender: TObject; var Key: Char);
begin
  key := UpCase(key);
end;

procedure TfrmAddressEdit.edZipKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['0'..'9', #8] then
    key := key
  else
    key := #00;
end;

procedure TfrmAddressEdit.Validate;
begin
  if edFirstname.Text = '' then
    raise exception.Create('First name is blank!');

  if edLastname.text = '' then
    raise exception.Create('Last name is blank!');

  if edAddress.Text = '' then
    raise exception.Create('Address is blank!');
end;



procedure TfrmAddressEdit.SpeedButton1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmAddressEdit.SpeedButton2Click(Sender: TObject);
begin
  Validate;
  ModalResult := mrOK;
end;



end.

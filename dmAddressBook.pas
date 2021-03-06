unit dmAddressBook;

interface

uses
  System.SysUtils, System.Classes, Data.DB, dbisamtb;

type
  TDm = class(TDataModule)
    qAddressBook: TDBISAMQuery;
    dsAddressBook: TDataSource;
    qAddressBookAddressID: TAutoIncField;
    qAddressBookFirstname: TStringField;
    qAddressBookLastname: TStringField;
    qAddressBookAddress: TStringField;
    qAddressBookCity: TStringField;
    qAddressBookState: TStringField;
    qAddressBookZip: TIntegerField;
    tAddressBook: TDBISAMTable;
    dstAddressBook: TDataSource;
    tAddressBookAddressID: TAutoIncField;
    tAddressBookFirstname: TStringField;
    tAddressBookLastname: TStringField;
    tAddressBookAddress: TStringField;
    tAddressBookCity: TStringField;
    tAddressBookState: TStringField;
    tAddressBookZip: TIntegerField;
    DBISAMQuery1: TDBISAMQuery;
    DBISAMTable1: TDBISAMTable;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AddRecord(Fname, Lname, Address, City, fState, Zip: string);
    procedure UpdateRecord(Fname, Lname, Address, City, fState, Zip: string);
    procedure OpenTable;
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDm }

procedure TDm.AddRecord(Fname, Lname, Address, City, fState, Zip: string);
begin
  with qAddressBook do
  begin
    SQL.Clear;
    SQL.Add('INSERT INTO AddressBook(Firstname,Lastname,Address,City,State,Zip)');
    SQL.Add('VALUES(:Fname,:Lname,:Address,:City,:State,:Zip)');
    Prepare;
    ParamByName('Fname').AsString := Fname;
    ParamByName('Lname').AsString := Lname;
    ParamByName('Address').AsString := Address;
    ParamByName('City').AsString := City;
    ParamByName('State').AsString := fState;
    ParamByName('Zip').AsInteger := StrToInt(Zip);
    ExecSQL;
  end;

  OpenTable;

   {
  tAddressBook.Append;
  tAddressBookFirstname.AsString := FName;
  tAddressBookLastname.AsString := LName;
  tAddressBookAddress.AsString := Address;
  tAddressBookCity.AsString := City;
  tAddressBookState.AsString := fState;
  tAddressBookZip.AsString := Zip;
  tAddressBook.Post;
   }
end;

procedure TDm.OpenTable;
begin
  with qAddressBook do
  begin
    SQL.Clear;
    SQL.Add('Select *');
    SQL.Add('FROM AddressBook');
    SQL.Add('Order By LastName,FirstName');
    ExecSQL;
  end;
end;

end.

# crud-Delphi

procedure TDm.UpdateRecord(Fname, Lname, Address, City, fState, Zip: string; id: integer);
begin
    with qAddressBook do
  begin
    SQL.Clear;
    SQL.Add('UPDATE AddressBook SET Firstname = :Fname,Lastname = :Lname,Address = :Address,City = :City,State = :State,Zip = :Zip');
    SQL.Add('WHERE ADDRESSID = :ID');
    Prepare;
    ParamByName('Fname').AsString := Fname;
    ParamByName('Lname').AsString := Lname;
    ParamByName('Address').AsString := Address;
    ParamByName('City').AsString := City;
    ParamByName('State').AsString := fState;
    ParamByName('Zip').AsInteger := StrToInt(Zip);
    ParamByName('ID').AsInteger := id;
    ExecSQL;
  end;

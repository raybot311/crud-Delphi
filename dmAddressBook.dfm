object Dm: TDm
  OldCreateOrder = False
  Height = 402
  Width = 497
  object qAddressBook: TDBISAMQuery
    Active = True
    DatabaseName = 'Z:\dbisamdata'
    EngineVersion = '4.43 Build 1'
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  AddressBook'
      'ORDER BY'
      '  LastName, Firstname')
    Params = <>
    Left = 48
    Top = 40
    object qAddressBookAddressID: TAutoIncField
      FieldName = 'AddressID'
      Origin = 'AddressBook.AddressID'
    end
    object qAddressBookFirstname: TStringField
      FieldName = 'Firstname'
      Origin = 'AddressBook.Firstname'
      Size = 25
    end
    object qAddressBookLastname: TStringField
      FieldName = 'Lastname'
      Origin = 'AddressBook.Lastname'
      Size = 25
    end
    object qAddressBookAddress: TStringField
      FieldName = 'Address'
      Origin = 'AddressBook.Address'
      Size = 40
    end
    object qAddressBookCity: TStringField
      FieldName = 'City'
      Origin = 'AddressBook.City'
      Size = 25
    end
    object qAddressBookState: TStringField
      FieldName = 'State'
      Origin = 'AddressBook.State'
      Size = 2
    end
    object qAddressBookZip: TIntegerField
      FieldName = 'Zip'
      Origin = 'AddressBook.Zip'
    end
  end
  object dsAddressBook: TDataSource
    DataSet = qAddressBook
    Left = 152
    Top = 40
  end
  object tAddressBook: TDBISAMTable
    Active = True
    DatabaseName = 'Z:\dbisamdata'
    EngineVersion = '4.43 Build 1'
    TableName = 'AddressBook'
    Left = 48
    Top = 112
    object tAddressBookAddressID: TAutoIncField
      FieldName = 'AddressID'
      Origin = 'AddressBook.AddressID'
    end
    object tAddressBookFirstname: TStringField
      FieldName = 'Firstname'
      Origin = 'AddressBook.Firstname'
      Size = 25
    end
    object tAddressBookLastname: TStringField
      FieldName = 'Lastname'
      Origin = 'AddressBook.Lastname'
      Size = 25
    end
    object tAddressBookAddress: TStringField
      FieldName = 'Address'
      Origin = 'AddressBook.Address'
      Size = 40
    end
    object tAddressBookCity: TStringField
      FieldName = 'City'
      Origin = 'AddressBook.City'
      Size = 25
    end
    object tAddressBookState: TStringField
      FieldName = 'State'
      Origin = 'AddressBook.State'
      Size = 2
    end
    object tAddressBookZip: TIntegerField
      FieldName = 'Zip'
      Origin = 'AddressBook.Zip'
    end
  end
  object dstAddressBook: TDataSource
    DataSet = DBISAMTable1
    Left = 152
    Top = 112
  end
  object DBISAMQuery1: TDBISAMQuery
    EngineVersion = '4.43 Build 1'
    Params = <>
    Left = 64
    Top = 216
  end
  object DBISAMTable1: TDBISAMTable
    DatabaseName = 'Z:\dbisamdata'
    EngineVersion = '4.43 Build 1'
    TableName = 'AddressBook'
    Left = 192
    Top = 224
  end
end

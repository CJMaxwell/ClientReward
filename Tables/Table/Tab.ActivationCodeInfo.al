table 50003 "Activation Code Information"
{
  Caption = 'Activation Code Information';
  TableType = Normal;
  DataClassification = SystemMetadata;
  
  fields
  {
    field(1;"Activation Code"; code[50])
    {
      Caption = 'Activation Code';
      DataClassification = SystemMetadata;
      Description = 'Activation code used to activate Customer Rewards';
      
    }
    field(2; "Date Activated"; Date)
    {
      Caption = 'Date Activated';
      DataClassification = SystemMetadata;
      Description = 'Date Customer Rewards was activated';
    }
    field(3; "Expiration Date"; Date)
    {
      Caption = 'Expiration Date';
      DataClassification = CustomerContent;
      Description = 'Date Customer Rewards activation expires';
    }
  }
  
  keys
  {
    key(PK; "Activation Code")
    {
      Clustered = true;
    }
    key("Date Activated"; "Date Activated")
    {
      
    }
    key("Expiration Date"; "Expiration Date")
    {
      
    }
  }
  
  var
    myInt: Integer;
  
  trigger OnInsert()
  begin
    
  end;
  
  trigger OnModify()
  begin
    
  end;
  
  trigger OnDelete()
  begin
    
  end;
  
  trigger OnRename()
  begin
    
  end;
  
}
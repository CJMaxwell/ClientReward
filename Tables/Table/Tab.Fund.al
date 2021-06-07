table 50000 Fund
{
  DataClassification =CustomerContent;
  Caption = 'Fund';
  
  fields
  {
    field(1;"Fund code"; code[30])
    {
      Caption = 'Fund Code';
      DataClassification = CustomerContent;
      
    }
    field(2; "Fund Name"; Text[50])
    {
      Caption = 'Fund Name';
      DataClassification = CustomerContent;

      trigger OnValidate()
      begin

      end;

      trigger OnLookup()
      begin
        
      end;
    }
    field(3; "Asset Type"; Text[50])
    {
      Caption = 'Asset Type';
      DataClassification = CustomerContent;
    }
    field(4; IsVerified; Boolean)
    {
      Caption = 'Is Verified';
      DataClassification = CustomerContent;
    }
  }
  
  keys
  {
    key("Fund code"; "Fund Code")
    {
      Clustered = true;
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
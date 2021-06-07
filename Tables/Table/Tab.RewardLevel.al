table 50001 "Reward Level"
{
  Caption = 'Reward Level';
  TableType = Normal;
  DataClassification = CustomerContent;
  
  fields
  {
    field(1;Level; Text[50])
    {
      Caption = 'Level';
      DataClassification = CustomerContent;
    }
    field(2; "Minimum Reward Points"; Integer)
    {
      Caption = 'Minimum Reward Points';
      DataClassification = CustomerContent;
      MinValue = 0;
      NotBlank = true;
      
      trigger OnValidate()
      var
        tempPoints: Integer;
        RewardLevel: Record "Reward Level";
      begin
        tempPoints := "Minimum Reward Points";
        RewardLevel.SetRange("Minimum Reward Points",tempPoints);
        if RewardLevel.FindFirst() then
          Error('Minimum reward level must be unique.');
      end;
    }
  }
  
  keys
  {
    key(PK; Level)
    {
      Clustered = true;
    }
    key("Minimum Reward Points"; "Minimum Reward Points")
    {
      
    }
  }
  
  var
    myInt: Integer;
  
  trigger OnInsert()
  begin
    Validate("Minimum Reward Points");
  end;
  
  trigger OnModify()
  begin
    Validate("Minimum Reward Points");
  end;
  
  trigger OnDelete()
  begin
    
  end;
  
  trigger OnRename()
  begin
    
  end;
  
}
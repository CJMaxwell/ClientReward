page 50102 "Reward Level List"
{
  PageType = List;
  ApplicationArea = All;
  UsageCategory = Lists;
  ContextSensitiveHelpPage = 'Sales-reward';
  SourceTable = "Reward Level";
  SourceTableView = sorting("Minimum Reward Points") order(ascending);
  
  layout
  {
    area(Content)
    {
      repeater(Group)
      {
        field(Level; Rec.Level)
        {
          ApplicationArea = All;
          Tooltip = 'Specifies the level of reward that the customer has at this point.';
          
        }
        field("Minimum Reward Points"; Rec."Minimum Reward Points")
        {
          ApplicationArea = All;
          Tooltip = 'Specifies the number of points that customers must have to reach this level.';
          
        }
      }
    }
    area(Factboxes)
    {
      
    }
  }
  
  actions
  {
    area(Processing)
    {
      action(ActionName)
      {
        ApplicationArea = All;
        
        trigger OnAction();
        begin
          
        end;
      }
    }
  }

  trigger OnOpenPage()
  var
    CustomerRewardsExtMgt: Codeunit "Customer Rewards Ext. Mgt."; 
    NotActivatedTxt: Label 'Customer Rewards is not activated'; 
  begin
    if not CustomerRewardsExtMgt.IsCustomerRewardsActivated then 
      Error(NotActivatedTxt);
  end;
}
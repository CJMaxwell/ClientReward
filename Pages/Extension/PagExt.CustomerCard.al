pageextension 50105 "Customer Card Ext." extends "Customer Card"
{
  layout
  {
    addafter(Name)
    {
      field(RewardLevel; RewardLevel) 
        { 
          ApplicationArea = All; 
          Caption = 'Reward Level'; 
          Description = 'Reward level of the customer.'; 
          ToolTip = 'Specifies the level of reward that the customer has at this point.';
          Editable = false; 
        } 

        field(RewardPoints; RewardPoints) 
        { 
          ApplicationArea = All; 
          Caption = 'Reward Points'; 
          Description = 'Reward points accrued by customer'; 
          ToolTip = 'Specifies the total number of points that the customer has at this point.';
          Editable = false;
        }
    }
    // Add changes to page layout here
  }
  
  actions
  {
    // Add changes to page actions here
  }
  
  var
    myInt: Integer;

  trigger OnAfterGetRecord(); 
    var 
      CustomerRewardsMgtExt: Codeunit "Customer Rewards Ext. Mgt."; 
    begin 
      // Get the reward level associated with reward points 
      RewardLevel := CustomerRewardsMgtExt.GetRewardLevel(RewardPoints); 
    end; 

    var 
      RewardLevel: Text; 
}
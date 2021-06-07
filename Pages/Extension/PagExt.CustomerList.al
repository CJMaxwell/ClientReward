pageextension 50106 "Customer List Ext." extends "Customer List"
{
  layout
  {
    // Add changes to page layout here
  }
  
  actions
  {
    // Add changes to page actions here
    addfirst("&Customer")
    {
      action("Reward Levels")
      {
        ApplicationArea = All;
        Image = CustomerRating;
        Promoted = true;
        PromotedCategory = Process;
        PromotedIsBig = true;
        ToolTip = 'Open the list of reward levels.';

        trigger OnAction();
        var
          CustomerRewardsExtMgt: Codeunit "Customer Rewards Ext. Mgt.";
        begin
          if CustomerRewardsExtMgt.IsCustomerRewardsActivated then
            CustomerRewardsExtMgt.OpenRewardsLevelPage
          else
            CustomerRewardsExtMgt.OpenCustomerRewardsWizard;
        end;
      }
    }
  }
  
}
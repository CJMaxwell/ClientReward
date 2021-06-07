tableextension 50004 "CustomerTable Ext." extends Customer
{
  fields
  {
    // Add changes to table fields here
    field(10001; RewardPoints; Integer)
    {
      Caption = 'Reward Points';
      DataClassification = CustomerContent;
      MinValue = 0;
    }
    field(10002; RewardLevel; Code[20])
    {
      Caption = 'Reward Level';
      DataClassification = CustomerContent;
    }
  }
  
 
}
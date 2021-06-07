codeunit 50100 "Fund Administration"
{
  Access = Public;
  Subtype = Normal;
  Description = 'Fund Administration';

  trigger OnRun()
  begin
    
  end;
  
  var
    myInt: Integer;

  procedure FundPrice(FundCode: code[30]): Text[200]
  var
    Customer: Record Customer;
  begin
    Customer.Reset();
    Customer.SetRange("No.", FundCode);
    if Customer.FindFirst() then
      exit(Customer.Name);

  end;
}
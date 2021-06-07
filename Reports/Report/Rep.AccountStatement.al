report 50100 "Account Statement"
{
  Caption = 'Account Statement';
  UsageCategory = ReportsAndAnalysis;
  ApplicationArea = All;
  RDLCLayout = './Reports/AccountStatement.rdl';
  DefaultLayout = RDLC;
  PreviewMode = Normal;
  
  dataset
  {
    dataitem(Customer; Customer)
    {
      // PrintOnlyIfDetail = true;
      // DataItemTableView = where(Blocked=filter(false));
      DataItemTableView = SORTING(Name);
      column(No; "No.")
      {
        IncludeCaption = true;
      }
      column(Name; Name)
      {
        IncludeCaption = true;
      }
      column(City; City)
      {
        IncludeCaption = true;
      }
      column(BalanceLCY; "Balance (LCY)")
      {
        IncludeCaption = true;
      }

      // dataitem(CustomerLedgers; "Cust. Ledger Entry")
      // {
      //   DataItemLinkReference = Customer;
      //   DataItemLink = "Customer No." = field("No.");
      //   column(CustomerLedgersCustomerNo; "Customer No.")
      //   {
      //   }
      //   column(CustomerLedgersAmountLCY; "Amount (LCY)")
      //   {
      //   }
      // }
      // dataitem(SalesLine; "Sales Line")
      // {
      //   DataItemLinkReference = Customer;
      //   DataItemLink = "Bill-to Customer No." = field("No.");
      //   column(Document_Type; "Document Type")
      //   {
          
      //   }
      // }
    }
  }
  
  // requestpage
  // {
  //   layout
  //   {
  //     area(Content)
  //     {
  //       group(GroupName)
  //       {
  //         field(Name; SourceExpression)
  //         {
  //           ApplicationArea = All;
            
  //         }
  //       }
  //     }
  //   }
  
  //   actions
  //   {
  //     area(processing)
  //     {
  //       action(ActionName)
  //       {
  //         ApplicationArea = All;
          
  //       }
  //     }
  //   }
  // }
  
  // var
  //   myInt: Integer;
}
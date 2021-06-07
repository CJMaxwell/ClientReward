page 50101 "Armstrong Card"
{
  PageType = Card;
  ApplicationArea = All;
  UsageCategory = Documents;
  // SourceTable = TableName;
  Caption = 'Armstrong Card';
  
  layout
  {
    area(Content)
    {
      group(GroupName)
      {
        // field(Name; NameSource)
        // {
        //   ApplicationArea = All;
          
        // }
      }
    }
  }
  
  actions
  {
    area(Processing)
    {
      action(ActionName)
      {
        ApplicationArea = All;
        
        trigger OnAction()
        begin
          
        end;
      }
    }
  }
  
  var
    myInt: Integer;

  trigger OnOpenpage()
  var
    Counter1: Integer;
    counterText: Text[5];
    counter2: Integer;
    PowerNumber: Integer;
    Number: Integer;
    Result: Integer;
    ResultList: List of [Integer];
    ArmstrongNumbers: Text[100];
  begin
    for Counter1 := 1 to 10000 do begin
        CounterText := Format(Counter1);
        Evaluate(PowerNumber, CopyStr(CounterText, StrLen(CounterText), 1));
        for Counter2 := 1 to StrLen(CounterText) do begin
          Evaluate(Number, CopyStr(CounterText, Counter2, 1));
          Result += Power(Number, PowerNumber);
        end;

      if Result = Counter1 then
        ResultList.Add(Result);
      Clear(Result);
    end;

    foreach Counter1 in ResultList do
      ArmstrongNumbers += Format(Counter1) + '\';

    Message(ArmstrongNumbers);
  end;

  procedure MyProcedure(): Text[100]
  var
    myInt: Integer;
  begin
    
  end;
}
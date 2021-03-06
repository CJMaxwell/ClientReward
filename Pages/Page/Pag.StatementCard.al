page 50100 "Statement Card"
{
  PageType = Card;
  ApplicationArea = All;
  UsageCategory = Documents;
  // SourceTable = TableName;
  Caption = 'Statement Card';
  
  layout
  {
    area(Content)
    {
      group(Input)
      {
        Caption = 'Input';
        field(Difficulty;Difficulty)
        {
          ApplicationArea = All;
          Caption = 'Difficulty';
          trigger onValidate()
          begin
            GetSuggestion();
          end;
        }
      }
      group(Output) {
        Caption = 'Output';
        field(Suggestion;Suggestion)
        {
          ApplicationArea = All;
          Caption = 'Suggestion';
          Editable = false;
        }
        field(Level;Level)
        {
          ApplicationArea = All;
          Caption = 'Level';
          Editable = false;
        }
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
    Level: Text[30];
    Suggestion:Text[80];
    Difficulty: Integer;

    procedure GetSuggestion()
    begin
      Level := '';
      Suggestion := '';

      case Difficulty of
        1..5:
          begin
            Level := 'Beginner';
            Suggestion := 'Take e-Learning or remote training';
          end;
        6..8:
          begin
            Level := 'Intermediate';
            Suggestion := 'Attend instructor-Led';
          end;
        9..10:
          begin
            Level := 'Advanced';
            Suggestion := 'Attend instructor-Led and self study';
          end;
      end;
    end;
}
codeunit 50001 Validations
{
  trigger OnRun()
  begin
    
  end;
  
  local procedure CheckForPlusSign(TextToVerify: Text[50])
  var
    pos: Integer;
  begin
    pos := StrPos(TextToVerify, '+');
    if pos > 0 then
      Message('+ signs are not allowed in Addresses.');
  end;

  [EventSubscriber(ObjectType::Page, Page::"Customer Card", 'OnBeforeValidateEvent', 'Address', true, true)]
  local procedure OnBeforeValidateAddress(var Rec: Record Customer; var xRec: Record Customer)
  begin
    CheckForPlusSign(Rec.Address);
  end;

  var
    myInt: Integer;
}
```ada
function Check_Range(Value : Integer) return Boolean is
begin
   if Value < 10 or Value > 20 then
      return False;
   else
      return True;
   end if;
exception
   when others =>
      Put_Line("Error: Input value caused an exception.");
      return False; -- Or raise an appropriate exception
end Check_Range;

procedure Example is
   Result : Boolean;
begin
   Result := Check_Range(25); 
   if Result = True then
      Put_Line("Value is within range");
   else
      Put_Line("Value is out of range");
   end if;
   Result := Check_Range(15); -- Correct Value
   if Result = True then
      Put_Line("Value is within range");
   else
      Put_Line("Value is out of range");
   end if;
exception
    when others =>
      Put_Line("Unhandled Exception in Example");
end Example;
```
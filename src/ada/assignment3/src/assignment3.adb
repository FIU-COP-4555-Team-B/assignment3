with Ada.Text_IO; use Ada.Text_IO;

--  Task declaration syntax was gotten from:
--  https://stackoverflow.com/questions/4413485/wait-for-tasks-in-ada

procedure Assignment3 is
  X : Integer := 1;
  Y : Integer := 4;

  procedure AddOneMult2_ValueResult
   (ToAdd : in out Integer; ToMult : in out Integer) is
  begin
    ToAdd := ToAdd + 1;
    ToMult := ToMult * 2;
    delay 1.0;
  end AddOneMult2_ValueResult;
begin
  Put_Line ("Before - X: " & Integer'Image (X) & " Y: " & Integer'Image (Y));

  declare
    task ValueResult;
    task body ValueResult is
    begin
      AddOneMult2_ValueResult (X, Y);
    end ValueResult;
  begin
    Put_Line ("During - X: " & Integer'Image (X) & " Y: " & Integer'Image (Y));
  end;

  Put_Line ("After - X: " & Integer'Image (X) & " Y: " & Integer'Image (Y));
end Assignment3;

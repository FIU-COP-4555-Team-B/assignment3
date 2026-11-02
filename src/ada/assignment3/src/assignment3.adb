with Ada.Text_IO; use Ada.Text_IO;

--  Here I declare X and Y, and have a function which adds 1 to X and
--  multiplies Y by 2. The function waits 1 second after doing so, so that we
--  can print the values _while_ the function is running, showcasing the fact
--  that the value has not been copied out yet.
--
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

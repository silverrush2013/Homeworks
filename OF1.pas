program OF1;
var
  f1,f2:text;
  
function Incl(f1,f2:text): boolean;
var
  s1,s2:char;
  check: boolean;
  
begin
  check := false;
  read(f1,s1);
  read(f2,s2);
  while (not eof(f1))and (not eof(f2)) do
  begin
    if s1 = s2 then 
    begin
       read(f1,s1);
        read(f2,s2);
      if (eof(f2)) then
      begin
        check := true;
      end;
    end
    else
    begin
      read(f1,s1)
    end;
  end;
  Incl := check;
end;

begin
 assign(f1, 'C:\Users\Admin\Desktop\numbs1.txt');
  reset(f1);
   assign(f2, 'C:\Users\Admin\Desktop\numbs2.txt');
  reset(f2);
  writeln('Does a1 contain a2?', ' ', incl(f1, f2));
  close(f1);
  close(f2);
end.
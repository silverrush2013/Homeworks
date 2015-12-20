program OF4;

var
  f1, f2: text;

procedure Inter(f1, f2: text);
var
  s1, s2: integer;
begin
  read(f1, s1);
  read(f2, s2);
  while (not eof(f1)) and (not eof(f2)) do
  begin
    if s1 = s2 then
    begin
      write(s1,' ');
      read(f1, s1);
      read(f2, s2);
    end;
    if (s1 < s2) then  read(f1, s1);
    if (s1 > s2) then  read(f2, s2);
    if (eof(f1)) and (not Eof(f2)) then begin
      if (s1 = s2) then write(s1,' ')
      else read(f2, s2);
    end;
    if (eof(f2)) then begin
      if (s1 = s2) then write(s2,' ')
      else read(f1, s1);
    end;
  end;
  
end;


begin
  assign(f1, 'C:\Users\Admin\Desktop\1int.txt');
  reset(f1);
  assign(f2, 'C:\Users\Admin\Desktop\2int.txt');
  reset(f2);
  Inter(f1, f2); 
  close(f1);
  close(f2);  
end.
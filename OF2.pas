program OF2;

var
  f1, f2, f3: text;

procedure Union(f1, f2, f3: text);
var
  s1, s2: integer;
begin
  read(f1, s1);
  read(f2, s2);
  while (not eof(f1)) and (not eof(f2)) do
  begin
    if s1 = s2 then 
    begin
      write(f3, s1, ' ', s1, ' ');
      read(f1, s1);
      read(f2, s2);
    end;
    if (s1 < s2) then  
    begin
      write(f3, s1, ' ');
      read(f1, s1);
    end;
    if (s1 > s2) then 
    begin
      write(f3, s2, ' ');
      read(f2, s2);
    end;
    if (eof(f1))  then 
    begin
    if (Eof(f1)) and (Eof(f2)) and (s1>=s2) then write(f3,s2,' ',s1);
    if (Eof(f1)) and (Eof(f2)) and (s1<s2) then write(f3,s1,' ',s2);
      if (s2 >= s1) and (not Eof(f2)) then 
      begin
        write(f3, s1, ' ', s2, ' ');
        repeat
          read(f2, s2);
          write(f3, s2, ' ');
        until Eof(f2);
      end;
      if (s1 > s2) and (not Eof(f2)) then
      begin
        write(f3, s2);
        repeat
          read(f2, s2);
          write(f3, s2, ' ');
        until (s2 >= s1) or (Eof(f2));
        if (not eof(f2)) then 
        begin
          write(f3, s1, ' ', s2, ' ');
          repeat
            read(f2, s2);
            write(f3, s2, ' ');
          until Eof(f2);
        end;
      end;
    end;
    if (eof(f2)) and (not Eof(f1)) then begin
      if s1 >= s2 then 
      begin
        write(f3, s2, ' ', s1, ' ');
        repeat
          read(f1, s1);
          write(f3, s1, ' ');
        until Eof(f1);
      end;
      if s1 < s2 then
      begin
        writeln(f3, s1);
        repeat
          read(f1, s1);
          write(f3, s1, ' ');
        until (s1 >= s2) or (eof(f1));
        if (not eof(f1)) then 
        begin
          write(f3, s2, ' ', s1, ' ');
          repeat
            read(f1, s1);
            write(f3, s1, ' ');
          until Eof(f1);
        end;
      end;
    end;
   end;
end;

begin
  assign(f1, 'C:\Users\Admin\Desktop\1.txt');
  reset(f1);
  assign(f2, 'C:\Users\Admin\Desktop\2.txt');
  reset(f2);
  assign(f3, 'C:\Users\Admin\Desktop\3.txt');
  rewrite(f3);
  Union(f1, f2, f3);
  close(f1);
  close(f2);
  close(f3);
end.
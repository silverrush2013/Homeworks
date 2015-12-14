program OA2;

const
  n = 7; 
  h = 3;

type
  mas1 = array[1..n] of real;
  mas2 = array[1..h] of real;

var
  i: integer; 
  a1: mas1; 
  a2: mas2;

function Incl(a1: mas1; a2: mas2): boolean;
var
  i, j: integer;
  check: boolean;
begin
  i := 1;
  check := false;
  j := 1;
  while (i < n) do
  begin
    if a1[i] = a2[j] then 
    begin
      inc(j);
      inc(i);
      if (j = h) then
      begin
        check := true;
        i := n;
      end;
    end
    else
    begin
      i := i - j + 2;
      j := 1;
    end;
  end;
  Incl := check;
end;

begin
  writeln('Enter elements of array 1');
  for i := 1 to n do 
  begin
    read(a1[i]); 
  end;
  writeln('Enter elements of array 2');
  for i := 1 to h do 
  begin
    read(a2[i]); 
  end;
  writeln('Does a1 contain a2?', ' ', incl(a1, a2));
end.
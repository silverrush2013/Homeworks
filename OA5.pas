program OA5;

const
  n = 4;
  h = 3;

type
  mas1 = array[1..n] of real;
  mas2 = array[1..h] of real;

var
  i, j: integer;
  a1: mas1;
  a2: mas2;

procedure Inter(a1: mas1; a2: mas2);
var
  i, j: integer;
begin
  i := 1;
  j := 1;
  while (i < n) and (j < h) do
  begin
    if a1[i] = a2[j] then
    begin
      write(a1[i]);
      inc(i);
      inc(j);
    end;
    if (a1[i] < a2[j]) then inc(i);
    if (a1[i] > a2[j]) then inc(j);
    if (i = n) then begin
      if (a1[n] = a2[j]) then write(a1[n],' ')
      else inc(j);
    end;
    if (j = h) then begin
      if (a2[h] = a1[i]) and (i <> n) then write(a2[h],' ')
      else inc(i);
    end;
  end;
end;


begin
  writeln('Enter elements of array 1');
  for i := 1 to N do
    read(a1[i]);
  writeln('Enter elements of array 2');
  for i := 1 to H do
    read(a2[i]);
  Inter(a1, a2);  
end.
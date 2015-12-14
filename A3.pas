program A3;

type
  posled = array of integer;

procedure Stupenka(a: posled; n: integer);
var
  i, k, max: integer;
begin
  i := 2;
  k := 1;
  max := 1;
  a[n - 1] := 0;
  for i := 1 to n - 2 do
  begin
    if a[i - 1] < a[i] then k := k + 1; 
    if (a[i - 1] < a[i]) and (a[i] > a[i + 1]) then 
    begin
      if k > max then 
      begin
        max := k;
        k := 0;
      end;
    end;
  end;
  writeln(max);
end;

var
  i, n: integer;
  a: posled;

begin
  writeln('Enter the size');
  readln(n);
  setlength(a, n);
  writeln('Enter sequense');
  for i := 0 to n - 1 do
    read(a[i]);
  stupenka(a, n);
end.
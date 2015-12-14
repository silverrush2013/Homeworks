program resheto;

const
  n = 67;

procedure simplenumbers;
var
  i, k, j: integer;
  a: array[1..n] of boolean;
begin
  a[1] := false;
  for i := 2 to n do 
  begin
    a[i] := true; 
  end;
  for i := 2 to n div 2 do
  begin
    for j := 2 to n div i do 
      a[i * j] := false;
  end;
  for i := 1 to n do
    if a[i] then write(i, ' ');
end;

begin
  simplenumbers;
end.
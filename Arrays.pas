program OA2;

const
  n = 7; 
  h = 3;

var
  i, k, g, itog: integer; 
  a: array[1..n] of real; 
  b: array[1..h] of real;

begin
  for i := 1 to n do 
  begin
    read(a[i]); 
  end; 
  for i := 1 to h do 
  begin
    read(b[i]); 
  end; 
  for i := 1 to n - h + 1 do 
  begin
    for k := 0 to h - 1 do 
    begin
      if (a[i + k] = b[1 + k]) then 
        itog := itog + 1 
      else break; 
      if itog = h then g := i; 
    end; 
  end; 
  if itog >= h then writeln('индекс элемента,после которого массив b совпадает с массивом a', ' ', g )
end.
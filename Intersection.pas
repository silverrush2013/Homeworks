program odinchisla;

const
  n = 4;
  H = 6;

var
  i, j: integer;
  A: array[1..n] of integer;
  B: array[1..h]of integer;

begin
  for i := 1 to n do
    read(a[i]);
  for i := 1 to h do
    read(b[i]);
  i := 1;
  j := 1;
  while (i < n) and (j < h) do
  begin
    if a[i] = b[j] then
    begin
      write(a[i]);
      inc(i);
      inc(j);
    end;
    if (a[i] < b[j])  then inc(i);
    if (a[i] > b[j])  then inc(j);
    if (i = n) then begin
      if (a[n] = b[j]) and (j <> h) then write(a[n])
      else inc(j);
    end;
    if (j = h) then begin
      if (b[h] = a[i]) and (i <> n) then write(b[h])
      else inc(i);
    end;
  end;
end.
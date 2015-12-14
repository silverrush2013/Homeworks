program sort;

const
  n = 5;

type
  mas = array[1..N] of integer;

var
  i, k, j: integer;
  a: mas;

procedure sort_bubble(a: mas);
var
  i, k: integer;
begin
  for i := 1 to N - 1 do
  begin
    for k := 1 to N - i do
      if a[k] > a[k + 1] then
      begin
        j := a[k];
        a[k] := a[k+1];
        a[k+1] := j;
      end;
  end;
  for i := 1 to n do
  begin
    write(a[i],' ');
  end;
end;

begin
  for i := 1 to n do
  begin
    read(a[i]);
  end;
  sort_bubble(a);
end.
program OA1;

const
  N = 6;

type
  mas = array [1..N] of integer;
  var
  i,c:integer;
  a:mas;

procedure Search(a: mas; c: integer);
var
  i,middle,k: integer;
begin
  middle := N div 2;
  k := N;
  i := 1;
  while (a[middle] <> c) and (i <= k) do 
  begin
    if c > a[middle] then i := middle + 1
    else k := middle - 1;
    middle := (i + k) div 2;
  end;
  if i > k then writeln('No')
  else writeln('Yes');
end;

begin
  writeln('Enter elements of array');
  for i := 1 to N do
    read(a[i]);
  writeln('Enter an element for search');
  read(c);
  search(a, c);
end.
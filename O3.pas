program o3;

type
  mas = array of integer;

var
  a: mas;
  i, N, b: integer;

function PositionOfElement(a: mas; b: integer; N: integer): integer;
var
  i, p: integer;
begin
  for i := 0 to n-1 do
  begin
    if (a[i] <= b) and (a[i + 1] >= b) then
      p := i + 1;
  end;
  PositionOfElement := p;
end;

procedure Sort_Array(a: mas; N: integer; b: integer);
var
  last,i, elpos: integer;
begin
  ElPos := PositionOfElement(a, b, N);
  last:=a[n-1];
  for i := n downto Elpos+1 do
  begin
    a[i] := a[i-1];
  end;
  a[elpos] := b;
  a[n]:=last;
end;

begin
  Writeln('Enter the size of array');
  Read(N);
  SetLength(a, N);
  Writeln('Enter elements of array in ascending order');
  for i := 0 to N - 1 do
    read(a[i]);
  Writeln('Enter the element');
  Read(b);
  setlength(a, (n + 1));
  Sort_Array(a, N, b);
  for i := 0 to N  do
    write(a[i], ' ');
end.
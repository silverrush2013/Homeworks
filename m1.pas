program matr;

const
  n = 3 ;

type
  matrix = array[1..n, 1..n] of integer;

var
  a: matrix;

procedure readmatrix;
var
  i, j: integer;
begin
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      read(a[i, j]);
    end;
  end;
end;

procedure showmatrix;
var
  i, j: integer;
begin
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      write(a[j, i]:n);
    end;
    writeln;
  end;
end;

begin
  readmatrix;
  showmatrix;
end.
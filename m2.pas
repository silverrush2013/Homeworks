program matrixmin;

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

procedure findmin;
var
  i, j: integer;
  min: integer;
begin
  for i := 1 to n do
  begin
    min := 1000000000;
    for j := 1 to n do
    begin
      if a[i, j] <= min then min := a[i, j];
      if (min <> 1000000000) and (j = n) then writeln( min );
    end;
  end;
end;

begin
  readmatrix;
  findmin;
end.
program matrixmin;

const
  n = 3 ;

type
  matrix = array[1..n, 1..n] of integer;

var
  a: matrix;
  max:integer;
procedure readmatrix;
var
  i, j: integer;
begin
writeln('¬ведите все элементы матрицы через пробел');
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      read(a[i, j]);
    end;
  end;
end;

procedure findmin(max:integer);
var
  i, j: integer;
  min: integer;
begin
  for i := 1 to n do
  begin
    min := max;
    for j := 1 to n do
    begin
      if a[i, j] <= min then min := a[i, j];
      if (min <> max) and (j = n) then write( min,' ' );
    end;
  end;
end;

begin
writeln('¬ведите число,которое больше всех элементов последовательности');
read(max);
  readmatrix;
  findmin(max);
end.
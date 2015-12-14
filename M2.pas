program ekz5;

const
  n = 3 ;

type
  matrix = array[1..n, 1..n] of integer;

var
  a: matrix;
  max: integer;

procedure readmatrix;
var
  i, j: integer;
begin
  writeln('Enter elements of matrix');
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      read(a[i, j]);
    end;
  end;
end;

procedure magicsquare;
var
  j, i, sumdiag1, sumdiag2, s1, s2: integer;
  proverka: boolean;
begin
  sumdiag1 := 0;
  proverka:=true;
  for j := 1 to n do
    sumdiag1 := sumdiag1 + a[j, j];
  for i := 1 to n do
  begin
    s1 := 0;
    s2 := 0;
    for j := 1 to n do 
    begin
      s1 := s1 + a[i, j];
      s2 := s2 + a[j, i];
    end;
    if (s1 <> sumdiag1) or (s2 <> sumdiag1) then proverka := false;
  end;
  sumdiag2 := 0;
  for i := 1 to n do
    sumdiag2 := sumdiag2 + a[i, n - i + 1];
  if sumdiag1 <> sumdiag2 then proverka := false;
  if (proverka = true) then writeln('Matrix is a magic square')
  else writeln('Matrix is not a magic square');
end;

begin
  readmatrix;
  magicsquare;
end.

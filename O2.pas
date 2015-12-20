program o2;

type
  mas = array of integer;

var
  N, i: integer;
  a: mas;


procedure Sort_Array(a: mas; N: integer);
var
  i, t, min, j, index: integer;

begin
  for i := 0 to n - 1 do
  begin
    min := a[i];
    for j := i  to N - 1 do
    begin
      if a[j] <= min then 
      begin
        index := j;
        min := a[j];
        writeln(index);
      end;
    end; 
      t := a[i];
      a[i] := a[index];
      a[index] := t;
  end;
end;


begin
  writeln('Enter the length of array');
  read(N);
  setlength(a, N);
  writeln('Enter elements of array');
  for i := 0 to N - 1 do
    read(a[i]);
  Sort_Array(a, N);
  for i := 0 to n - 1 do
    write(a[i], ' ');
end.
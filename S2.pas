program S2;

type
  mas = array of boolean;

var
  a: mas;
  N, num1, num2, num3: integer;

procedure add(a: mas; num: integer; N: integer);
begin
  if (num - 1) > (N - 1) then setlength(a, num - 1);
  a[num - 1] := true;
end;

procedure Delete(a: mas; num: integer; n: integer);
begin
  a[num - 1] := false;
end;

procedure DoesContain(a: mas; num: integer; N: integer);
begin
  if a[num - 1] = true then writeln('Array contains this element')
  else writeln('Array doesn`t contain this element');
end;

begin
  writeln('Enter the size of array');
  read(N);
  setlength(a, N);
  writeln('Enter the elment to add');
  read(num1);
  add(a, num1, n);
  writeln('Enter the element to delete');
  read(num2);
  delete(a, num2, n);
  writeln('Enter the element to know if the array contains it or not');
  read(num3);
  DoesContain(a, num3, n);
end.
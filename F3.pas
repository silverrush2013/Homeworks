program massiv_to_file;

type
  mas = array of integer;

var
  f: text;
  a: mas;
  n, i: integer;

function Int_to_String(a: integer): string;
var
  h, l, num: string;
  x, k, j, i: integer;
begin
  num := '';
  str(a, h);
  j := length(h);
  x := 1;
  for i := 1 to j do
  begin
    k := (a mod 10) * x;
    str(k, l);
    num := num + k + ' ';
    a := (a) div 10;
    x := x * 10;
  end;
  Int_To_String := num;
end;

procedure CreateFile(a: mas; n: integer);
var
  i: integer;
begin
  for i := 0 to n - 1 do
  begin
    write(f, Int_To_String(a[i]), ' ');
  end;
  close(f);
end;


begin
  assign(f, 'C:\Users\Admin\Desktop\mas.txt');
  rewrite(f);
  writeln('Enter the size of array');
  readln(n);
  setlength(a, n);
  writeln('Enter numbers');
  for i := 0 to n - 1 do
    readln(a[i]);
  CreateFile(a, n);
end.
program tabulir;{Задача 1.1 Табулирование функции, под буквами ВВЗ}

const
  n = 7;
type
TMyArray = array [1..3, 1..n] of real;
var
  h, b, sum, summod: real;
  i, j: integer;
  a: array [1..3] of real;
  y: TMyArray;

function F(a: real; j: integer): real; {Значение функции}
var
  x: real;
begin
  x := b + j * h;
  F := exp(-(sqr(a) + 2 * (x) + 0.7));
end;

function s(var p : TMyArray; i: integer): real; {сумма элементов}
var
  m: integer;
  sum, x: real;
begin
  sum := 0;
  for m := 1 to n do
    sum := sum + p[i,m];
  s := sum;
end;

function r(var y : TMyArray; i: integer): real; {сумма модулей}
var
  sum: real;
  l: integer;
begin
  sum := 0;
  for l := 1 to n do
    sum := sum + abs(y[i,l]);
  r := sum;
end;

begin
  
  readln(h); { h := 0.556;}
  readln(b); { b := -2;}
  readln(a[1]); {a1 := -5;}
  readln(a[2]);{a2 := 21.4;}
  readln(a[3]); { a3 := 6;}
  for i := 1 to 3 do
  begin
    for j := 1 to n do 
    begin
      y[i, j] := F(a[i], j);
      writeln(j, '.', ' ', y[i, j] );
    end;
    sum := s(y,i);
    summod := r(y,i);
    writeln('summa elementov massiva', ' ', sum);
    writeln('summa modulei', ' ', summod);
    writeln(' ');
  end;
end.
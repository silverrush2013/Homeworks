program chartoint;

type
  massiv = array of char;

var
  n, i: integer;
  numbers: massiv;

function isDigit(a: char): boolean;
var
  i: integer;
begin
  isDigit := (a >= '0') and (a <= '9');
end;

function Convertation(a: char): integer;
begin
  if isDigit(a) = false then Convertation := -1;
  if isDigit(a) = true then Convertation := integer(a) - integer('0');
end;

procedure ToInt(a: massiv; n: integer);
var
  i, summa, x, prov: integer;
begin
  summa := 0;
  x := 1;
  for i := n - 1 downto 0 do
  begin
    prov := Convertation(a[i]);
    if prov <> -1 then
    begin
      summa := summa + x * prov;
      x := x * 10;
      if (i = 0) then  writeln('„исло', ' ', summa);
    end
    else 
    begin
      writeln('-1');
      break;
    end;
  end;  
end;




begin
  writeln('¬ведите размер массива');
  readln(n);
  setlength(numbers, n);
  writeln('¬ведите цифры числа');
  for i := 0 to n - 1 do 
  begin
    readln(numbers[i]);
  end;
  ToInt(numbers, n);
end.
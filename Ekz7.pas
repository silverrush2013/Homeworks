program ekz_7;

var
  f1,f2: text;


function isDigit(a: char): boolean;
begin
  isDigit := (a >= '0') and (a <= '9');
end;

function Convertation(a: char): integer;
begin
  if isDigit(a) = false then Convertation := -1;
  if isDigit(a) = true then Convertation := integer(a) - integer('0');
end;


function To_Int(number: string): integer;
var
  i, summa, x, prov: integer;
begin
  summa := 0;
  x := 1;
  for i := length(number) downto 1 do
  begin
    prov := Convertation(number[i]);
    if prov <> -1 then
    begin
    summa := summa + x * prov;
    x := x * 10;
    end
    else summa:=0;
  end;  
  To_Int := summa;
end;

procedure Summ(f: text);
var
  summa: integer;
  a: char;
  number: string;
begin
  number := '';
  while not Eof(f) do
  begin
    read(f, a);
    if (a <> ' ') then 
    begin
      number := number + a;
    end;
    if (a = ' ') or (Eof(f)) then
    begin
      summa := To_Int(number) + summa;
      number := '';
    end;
  end;
  close(f1);
  writeln(f2,'Summ is',' ',summa);
  close(f2);
end;

begin
  assign(f1, 'C:\Users\Admin\Desktop\blok.txt');
  assign(f2, 'C:\Users\Admin\Desktop\blok1.txt');
  reset(f1);
  rewrite(f2);
  Summ(f1);
end.
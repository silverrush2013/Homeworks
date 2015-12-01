program ekz_7;

var
  f: text;


function Convertation(a: char): integer;
begin
  Convertation := integer(a) - integer('0');
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
    summa := summa + x * prov;
    x := x * 10;
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
  close(f);
  writeln(summa);
end;

begin
  assign(f, 'C:\Users\Admin\Desktop\blok.txt');
  reset(f);
  Summ(f);
end.
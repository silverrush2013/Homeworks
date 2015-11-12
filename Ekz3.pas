program A3;

const
  n = 8;

type
  posled = array[1..n] of integer;

procedure Stupenka;
var
  a: posled;
  i, k, max: integer;
begin
  i := 2;
  k := 1;
  max:=1;
  writeln('Введите последовательность');
  for i := 1 to n do
    read(a[i]);
  a[n] := 0;
  for i:=2 to n-1 do
  begin
    if a[i - 1] < a[i] then k := k + 1; {Считаем количество подряд идущих возрастающих элементов}
    if (a[i - 1] < a[i]) and (a[i] > a[i + 1]) then {Если следующее число меньше предыдущего} 
    begin
      if k > max then {то сравниваем количество возрастающих элементов предыдущей последовательности и приравниваем к максимуму,если больше}
      begin
      max := k;
      k := 0;
      end;
      end;
  end;
  writeln(max);
end;

begin
  stupenka;
end.
program resheto;

const
  n = 67;

var
  i, k, j: integer;
  a: array[1..n] of boolean;

begin
  a[1] := false;
  for i := 2 to n do 
  begin
    a[i] := true; {изначально преподлагаем,что все элементы простые}
  end;
  for i := 2 to n div 2 do
  begin
    for j := 2 to n div i do {затем исключаем числа,которые не являются простыми}
      a[i * j] := false; {числа,которые могут быть получены произведением двух других, не являются простыми,т.к. делятся не только на 1 и на себя}
  end;
  for i := 1 to n do
    if a[i] then write(i, ' '); {выводим все оставшиеся простые числа}
end.
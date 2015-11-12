program A2;

const
  n = 4;

var
  a: array[1..n] of integer;
  i, k: integer;
  proverka: boolean;

begin
  for i := 1 to n do
    read(a[i]);
  proverka := true;
  i := 1;
  k := 1;
  
  while (k <= n div 2 ) do {Разница между индексами}
  begin
    for i := 1 to n div 2 do 
    begin
      if a[i] = a[i + k] then proverka := true
      else proverka := false;
      if (proverka = true) and ((i + k) = n) then
      begin
        writeln('последовательность периодическая');
        break;
      end;
    end;     
    inc(k);
  end;
  if (proverka = false) then writeln('последовательность не периодическая');
end.
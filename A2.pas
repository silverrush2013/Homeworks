program A2;

const
  n = 6;

type
  mas = array [1..n]of integer;

procedure period(a: mas);
var
  i, k: integer;
  proverka: boolean;
begin
  proverka := true;
  k := 1; 
  while (k <= n div 2 ) do 
  begin
    for i := 1 to n div 2 do
    begin
      if a[i] = a[i + k] then proverka := true
      else
      begin
        proverka := false;
        break;
      end;
      if (proverka = true) and ((i + k) >= n) then 
      begin
        writeln('periodic');
        exit;
      end;
    end;    
    inc(k);
  end;
  if (proverka = false) then writeln('not periodic');
end;

var
  a: mas;
  i: integer;

begin
  Writeln('Enter elements of array');
  for i := 1 to n do
    read(a[i]);
  period(a)
end.
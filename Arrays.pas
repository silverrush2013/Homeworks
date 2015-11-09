program sovpad;

const
  n = 7; 
  h = 3;

var
  i, k, g, itog: integer; 
  a: array[1..n] of real; 
  b: array[1..h] of real;

begin
  for i := 1 to n do {заполняем первый массив}
  begin
    read(a[i]); 
  end; 
  for i := 1 to h do {заполняем второй массив}
  begin
    read(b[i]); 
  end; 
  for i := 1 to n - h + 1 do 
  begin
    for k := 0 to h - 1 do 
    begin
      if (a[i + k] = b[1 + k]) then {считаем количество совпадений массивов} 
        itog := itog + 1 
      else break; {если совпадения подряд идущих элементов нет,то нет смысла искать - прерываем цикл }
      if itog = h then g := i; {если количество совпадений равно количеству элементов во втором массиве,то запоминаем индекс }
    end; 
  end; 
  if itog >= h then writeln('индекс элемента,после которого массив b совпадает с массивом a', ' ', g )
end.
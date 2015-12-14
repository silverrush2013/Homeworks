{R2. Вычисление свойств.
 Дана последовательность (файл) точек плоскости (запись/полярные координаты).
 Выяснить, лежат ли они ВСЕ на заданной прямой (коэффициенты линейного уравнения)}
program qq(input, output);

const
  n = 2;

type
  polar = record
    {полярная система координат}
    r: real;//длина вектора
    fi: real;//угол
  end;

type
  xy = record//декартовы координаты
    x: real;
    y: real;
  end;

var
  input, output: text;
  a, b, c: real;

function f(x: real): real;
begin
  f := (-a * x - c) / b;
end;

function getCor(r, fi: real): xy;//переводит полярные координаты в декартовы
var
  cr: xy;
begin
  cr.x := r * cos(fi);
  cr.y := r * sin(fi);
  getCor := cr;
end;


procedure main();
type
  arr = array [1..n] of polar;//массив координат точек
var
  cord: arr;
  i: integer;
  res: boolean;
begin
  assign(output, 'output.txt');
  assign(input, 'input.txt');
  reset(input);
  rewrite(output);
  //ввод прямой
  read(input, a);
  read(input, b);
  read(input, c);
  //ввод точек
  for i := 1 to n do
  begin
    read(input, cord[i].r);
    read(input, cord[i].fi);
  end;
  //вычисление A квантора
  res := true;
  i := 1;
  while((i < (n + 1)) and (res)) do
  begin
    //если 
    if(getCor(cord[i].r, cord[i].fi).y <> f(getCor(cord[i].r, cord[i].fi).x)) then
      res := false;
    inc(i);
  end;
  write(output, res);
  input.Close();
  output.Close();
end;


begin
  main();
end.
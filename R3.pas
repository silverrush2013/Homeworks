program qq(input,output);

const
  n = 2;

type
  cor = record
    x: real;
    y: real;
  end;

type
  arr = array[1..n] of cor;

var
  xy: arr;
  r: real;
  i: integer;
  b: boolean;

begin
  writeln('enter r');
  read(r);
  writeln('enter coordinate');
  for i := 1 to n do
  begin
    read(xy[i].x);
    read(xy[i].y);
  end;
  b := true;
  
  for i := 1 to n do
  begin
    if((sqrt(xy[i].x * xy[i].x + xy[i].y * xy[i].y)) <> r) then
      b := false;
  end;
  write(b);
  
end.
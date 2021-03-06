{R2. ���������� �������.
 ���� ������������������ (����) ����� ��������� (������/�������� ����������).
 ��������, ����� �� ��� ��� �� �������� ������ (������������ ��������� ���������)}
program qq;

const
  n = 2;

type
  polar = record
    {�������� ������� ���������}
    r: real;//����� �������
    fi: real;//����
  end;

type
  xy = record//��������� ����������
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

function getCor(r, fi: real): xy;//��������� �������� ���������� � ���������
var
  cr: xy;
begin
  cr.x := r * cos(fi);
  cr.y := r * sin(fi);
  getCor := cr;
end;


procedure R2(  input, output: text);
type
  arr = array [1..n] of polar;//������ ��������� �����
var
  cord: arr;
  i: integer;
  res: boolean;
begin  
  //���� ������
  read(input, a);
  read(input, b);
  read(input, c);
  //���� �����
  for i := 1 to n do
  begin
    read(input, cord[i].r);
    read(input, cord[i].fi);
  end;
  //���������� A ��������
  res := true;
  i := 1;
  while((i < (n + 1)) and (res)) do
  begin
    //���� 
    if(getCor(cord[i].r, cord[i].fi).y <> f(getCor(cord[i].r, cord[i].fi).x)) then
      res := false;
    inc(i);
  end;
  write(output, res);

end;


begin
  assign(output, 'C:\Users\Admin\Desktop\output.txt');
  assign(input, 'C:\Users\Admin\Desktop\input.txt');
  reset(input);
  rewrite(output);
  r2(input,output);
  Close(input);
 Close(output);
end.
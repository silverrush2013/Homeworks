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
  writeln('������� ������������������');
  for i := 1 to n do
    read(a[i]);
  a[n] := 0;
  for i:=2 to n-1 do
  begin
    if a[i - 1] < a[i] then k := k + 1; {������� ���������� ������ ������ ������������ ���������}
    if (a[i - 1] < a[i]) and (a[i] > a[i + 1]) then {���� ��������� ����� ������ �����������} 
    begin
      if k > max then {�� ���������� ���������� ������������ ��������� ���������� ������������������ � ������������ � ���������,���� ������}
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
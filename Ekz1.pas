program a1;

var
  chislo1, chislo2: string;

procedure summachisel(chislo1, chislo2: string);
var
  a, r, summa: string;
  n, m, i, f, k, l, b, kod: integer;
begin
  readln(chislo1);{ ��������� ��� �����}
  readln(chislo2);
  n := length(chislo1);
  m := length(chislo2);
  if n < m then {����� �������,����� �� ����� �������,����� ����� ���� ����� ����������� �������� ��� ����}
  begin
    a := chislo1;
    chislo1 := chislo2;
    chislo2 := a;
    k := n;
    n := m;
    m := k;
  end;
  f := 0;
  summa := '';
  for i := m downto 1 do {���� ���������� � �����,��������� ��������� �����}
  begin
    val(chislo1[n], b, kod);
    val(chislo2[m], k, kod);
    l := b + k + f;
    if l > 9 then {���� ����� ������ 9,������ ����� ��������� ������� � ����������� �������}
    begin
      l := l - 10;
      f := 1;
    end
    else f := 0;
    str(l, r);
    insert(r, summa, 1);
    delete(chislo1, n, 1);
    n := n - 1;
  end;
  while (n <> 0) do {���� � �������� ����� �������� �����,��: }
  begin
    if f <> 0 then {���� � �������� �������� ������� �������,������� �� ������ ��������� � ����������� �������,�� ���������� ���}
    begin
      val(chislo1[n], b, kod);
      l := b + 1;
      if (l > 9) and (n > 1) then {��������� �������,��� ��� �� ��������� ���������� ������ �������� �����}
      begin
        l := l - 10; {���� � ������� ����� ��� �������� �������,�� ������ ���������� �������}
        f := 1; 
      end;
             {���� ��� ��������� ������,�� ������ ���������� ������������ L � ������ ����� }
      str(l, r);
      insert(r, summa, 1);
      delete(chislo1, n, 1);
      n := n - 1;
    end;
    if (f = 0) then begin  {���� � ��� �� �������� ���� ������ ����� � �������� �� �������� �� ������������ ��������,�� ������ ���������� ���������� ����� �������� �����}
      insert(chislo1, summa, 1);{� ������ �����}
      n := 0;
    end;
  end;
  write(summa);
end;

begin
  summachisel(chislo1, chislo2);
end.
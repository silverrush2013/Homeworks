program a1;

var
  chislo1, chislo2: string;

procedure summachisel(chislo1, chislo2: string);
var
  a, r, summa: string;
  n, m, i, f, k, l, b, kod: integer;
begin
  readln(chislo1);{ Считываем оба числа}
  readln(chislo2);
  n := length(chislo1);
  m := length(chislo2);
  if n < m then {Сразу находим,какое из чисел длиннее,чтобы далее было легче производить операции над ними}
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
  for i := m downto 1 do {Идем поразрядно с конца,складывая последние цифры}
  begin
    val(chislo1[n], b, kod);
    val(chislo2[m], k, kod);
    l := b + k + f;
    if l > 9 then {Если число больше 9,значит нужно прибавить единицу к предыдущему разряду}
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
  while (n <> 0) do {Если у большего числа остались цифры,то: }
  begin
    if f <> 0 then {Если с прошлого сложения остался десяток,который мы должны прибавить к предыдущему разряду,то прибавляем его}
    begin
      val(chislo1[n], b, kod);
      l := b + 1;
      if (l > 9) and (n > 1) then {Проверяем условие,что это не последний оставшийся разряд большего числа}
      begin
        l := l - 10; {Если у первого числа еще остались рязряды,то просто прибавляем десяток}
        f := 1; 
      end;
             {Если это последний разряд,то просто прибавляем получившееся L к строке сумма }
      str(l, r);
      insert(r, summa, 1);
      delete(chislo1, n, 1);
      n := n - 1;
    end;
    if (f = 0) then begin  {Если у нас от сложения цифр малого числа к большому не осталось не прибавленных десятков,то просто прибавляем оставшиеся цифри большого числа}
      insert(chislo1, summa, 1);{к строке сумма}
      n := 0;
    end;
  end;
  write(summa);
end;

begin
  summachisel(chislo1, chislo2);
end.
program S2;

type
  mas = array of boolean;

var
  a: mas;
  N, num1, num2, num3, count1, count2,count3, i: integer;

function DoesContain(a: mas; num: integer; N: integer): boolean;
begin
  if a[num - 1] = true then DoesContain := true
  else DoesContain := false;
end;


procedure add(a: mas; num: integer; N: integer);
begin
  a[num - 1] := true;
end;

procedure Delete(a: mas; num: integer; n: integer);
begin
  if DoesContain(a, num, N) = true then a[num - 1] := false
  else writeln('array doesn`t contain this element'); 
end;


begin
  writeln('Enter the size of array');
  read(N);
  setlength(a, N);
  writeln('How many elements do you want to add?');
  read(count1);
  for i := 1 to count1 do
  begin
    writeln('Enter the elment to add');
    read(num1);
    if num1 > N then begin 
    setlength(a, num1);
    N:=num1;   
    end;
    add(a, num1, n);
  end;
  writeln('How many elements do you want to delete?');
  read(count2);
  for i := 1 to count2 do
  begin
    writeln('Enter the element to delete');
    read(num2);
    if num2<N then delete(a, num2, n)
    else writeln('Doesn`t contain');
  end;
  writeln('How many elements do you want to check?');
  read(count3);
  for i := 1 to count3 do
  begin
    writeln('Enter the element to know if the array contains it or not');
    read(num3);
    if DoesContain(a, num3, n) = true then writeln('Array contains this element')
    else writeln('Array doesn`t contain this element');
  end;
end.
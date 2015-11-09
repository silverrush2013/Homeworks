program algKMP;

const
  n = 7;
  m = 3;
  max = 100;

type
  massiv1 = array[1..n] of integer;
  massiv2 = array[1..m] of integer;

procedure KMP(a: massiv1; b: massiv2);
var
  itog, i, j: integer;
  massivsovp: array[1..Max] of integer;
begin
  massivsovp[1] := 0;
  for i := 2 to m do 
  begin
    j := massivsovp[i - 1];
    while (j <> 0) and (b[j] <> b[i - 1]) Do
      j := massivsovp[j];
    massivsovp[i] := j + 1;
  end;
  j := 1;
  for i := 1 to n do
  begin
    while (j <> 0) and (b[j] <> a[i]) do
      j := massivsovp[j];
    if j = m then break;
    j := j + 1
  end;
  if (j = m) then itog := i - j + 1 
  else itog := 0;
  writeln(itog);
end;

var
  a: massiv1;
  b: massiv2;
  i: integer;

begin
  for i := 1 to n do
    read(a[i]);
  for i := 1 to m do
    read(b[i]);
  KMP(a, b)
end.
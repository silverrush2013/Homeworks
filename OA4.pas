program OA4;

type
  mas = array of real;

var
  ar1, ar2, united: mas;
  i, N1, N2: integer;

procedure union(united, ar1, ar2: mas; N1, N2: integer);
var
  i, j, k: integer;
begin
  i := 0;
  j := 0;
  k := 0;
  while (i <= N1 - 1) and (j <= N2 - 1) and (k <= (N1 + N2 - 2)) do
  begin
    if (j = N2 - 1) and (i <> N1 - 1) then
    begin
      if ar2[j] = ar1[i] then
      begin
        united[k] := ar2[j];
        inc(k);
        inc(i);
        while (i <= N1 - 1) do
        begin
          united[k] := ar1[i];
          inc(k);
          inc(i);
        end;
        break;
      end;
      if ar2[j] < ar1[i] then
      begin
        united[k] := ar2[j];
        inc(k);
        while (i <= N1 - 1) do
        begin
          united[k] := ar1[i];
          inc(k);
          inc(i);
        end;
        break;
      end;
      if ar2[j] > ar1[i] then
      begin
        repeat
          united[k] := united[i];
          inc(i);
          inc(k);
        until (ar2[j] <= ar1[i]) or (i = N1 - 1);
        if ar2[j] = ar1[i] then
        begin
          united[k] := ar2[j];
          inc(k);
          while (i <= N1 - 1) do
          begin
            united[k] := ar1[i];
            inc(k);
            inc(i);
          end;
        end;
        if ar2[j] < ar1[i] then
        begin
          united[k] := ar2[j];
          inc(k);
          while (i <= N1 - 1) do
          begin
            united[k] := ar1[i];
            inc(k);
            inc(i);
          end;
        end;
        if (ar2[j] > ar1[i]) then
        begin
          while(J <= N2 - 1) do
          begin
            united[k] := ar2[j];
            inc(k);
            inc(j);
          end;
        end;
      end;
    end;
    if (j = N2 - 1) and (i = N1 - 1) then
    begin
      if ar1[i] = ar2[j] then 
      begin
        united[k] := ar1[i];
      end;
      if ar1[i] < ar2[j] then
      begin
        united[k] := ar1[i];
        inc(k);
        united[k] := ar2[j];
      end;
      if ar1[i] > ar2[j] then
      begin
        united[k] := ar2[j];
        inc(k);
        united[k] := ar1[i];
      end;
      break;
    end;
    if (ar1[i] = ar2[j]) and (j <> N2 - 1) and (i <> N1 - 1) then 
    begin
      united[k] := ar1[i];
      inc(i);
      inc(j);
      inc(k);
    end;
    if (ar1[i] < ar2[j] ) and (j <> N2 - 1) and (i <> N1 - 1) then
    begin
      united[k] := ar1[i];
      inc(i);
      inc(k);
    end;
    if (ar1[i] > ar2[j]) and (j <> N2 - 1) and (i <> N1 - 1) then
    begin
      united[k] := ar2[j];
      inc(j);
      inc(k);
    end;
    
  end;
end;

begin
  writeln('enter the length of 1 array');
  read(N1);
  setlength(ar1, N1);
  writeln('enter the length of 2 array');
  read(N2);
  setlength(ar2, N2);
  writeln('enter elements of 1 array');
  for i := 0 to N1 - 1 do
    read(ar1[i]);
  writeln('enter elements of 2 array');
  for i := 0 to N2 - 1 do
    read(ar2[i]);
  setlength(united, (N1 + N2) );
  if N1 > N2 then union(united, ar1, ar2, N1, N2)
  else union(united, ar2, ar1, N2, N1);
  write(united);
end.
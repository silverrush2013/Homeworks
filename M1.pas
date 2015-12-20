program ekz4;

const
  n = 3;
  m = 3;

type
  matrix = array[1..n, 1..m] of real;

var
  a: matrix;

procedure readmatrix;
var
  i, j: integer;
begin
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      read(a[i, j]);
    end;
  end;
end;

procedure findSedl;
var
  max1, min1, max2, min2: real;
  j, k, i, strokamax, strokamin, stolbecmax, stolbecmin: integer;
begin
  for i := 1 to n do 
  begin
    max1 := a[i, 1];
    stolbecmax := 1;
    min2 := a[i, 1];
    stolbecmin := 1;
    for j := 1 to m do
    begin
      if a[i, j] >= max1 then
      begin
        max1 := a[i, j];    
        stolbecmax := j;        
      end;
      if a[i, j] <= min2 then
      begin
        min2 := a[i, j];    
        stolbecmin := j;        
      end;
    end;
    min1 := a[1, stolbecmax];
    strokamin := 1;
    max2 := a[1, stolbecmin];
    strokamax := 1;
    for k := 1 to m do 
    begin
      if a[k, stolbecmax] <= min1 then
      begin
        min1 := a[k, stolbecmax];  
        strokamin := k;
      end;
      if a[k, stolbecmin] >= max2 then
      begin
        max2 := a[k, stolbecmin];  
        strokamax := k;
      end;
    end;
    if min1 = max1 then   
    begin
      writeln(a[strokamax, stolbecmin], ' ');
    end;    
    if min2 = max2 then   
    begin
      writeln(a[strokamin, stolbecmax], ' ');
    end;    
    if (i = n) and ((min1 <> max1) and (min1 <> max2)) then writeln('There is no point'); 
  end;
end;

begin
  readmatrix;
  findSedl;
end.

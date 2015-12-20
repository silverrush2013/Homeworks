program R4;

const
  N = 80;

type
  Abit = record
    FIO: string;
    Medal: boolean;
    Ekz: array[1..3] of real;
  end;

var
  f1, f2: text;

function crit(abiturient: abit): boolean;
var
  i: integer;
  mark: boolean;
begin
  mark := false;
  for i := 1 to 3 do
    if (abiturient.Ekz[i] >= 75) then mark := true;
  if (abiturient.Medal = true and mark = true) or (((abiturient.ekz[1] + abiturient.ekz[2] + abiturient.ekz[3]) / 3) >= N) then crit := true
  else crit := false;
end;

procedure Zachislenie(f1, f2: text);
var
  abiturient: abit;
  medal:string;
begin
  while not eof(f1) do
  begin
    read(f1, abiturient.ekz[1]);
    read(f1, abiturient.ekz[2]);
    read(f1, abiturient.ekz[3]);
    read(f1, abiturient.FIO);
    read(f1, Medal); 
    if medal = 'true' then abiturient.medal := true
    else  abiturient.medal := false;
    if Crit(abiturient) = true then writeln(f2, abiturient.FIO, ' ', 'is erolled');
    readln(f1);
  end;
end;

begin
  assign(f1, 'C:\Users\Admin\Desktop\Abitur.txt');
  reset(f1);
  assign(f2, 'C:\Users\Admin\Desktop\Zach.txt');
  rewrite(f2);
  Zachislenie(f1, f2);
  close(f1);
  close(f2);
end.
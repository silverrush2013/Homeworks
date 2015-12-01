program ekzamen_files1;

var
  f: text;

procedure the_longest_word(f: text);
var
  lmax: integer;
  w: string;
  symb: char;
  my_word: string;
  l: integer;
begin
  lmax := 0;
  w := '';
  l:=0;
  my_word:='';
  while not Eof(f) do
  begin
    read(f, symb);
    if (symb <> ' ') then 
    begin
      my_word := my_word + symb;
      inc(l);
    end;
    if (symb = ' ') or (Eof(f)) then
    begin
      if l > lmax then 
      begin
        lmax := l;
        w := my_word;
      end;
      l := 0;
      my_word := '';
    end;
  end;
  close(f);
  writeln('The length of the longest word is', ' ', lmax);
  writeln('This word is', ' ', w);
end;

begin
  assign(f, 'C:\Users\Admin\Desktop\blok.txt');
  reset(f);
  the_longest_word(f);
end.
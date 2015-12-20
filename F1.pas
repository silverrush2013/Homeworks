program F1;

var
  f: text;


procedure the_longest_word(f: text);
var
  symb: char;
  my_word,w: string;
  l,lmax: integer;
begin
  lmax := 0;
  w := '';
  l := 0;
  my_word := '';
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
  writeln('The length of the longest word is', ' ', lmax);
  writeln('This word is', ' ', w);
end;

begin
  assign(f, 'C:\Users\Admin\Desktop\words.txt');
  reset(f);
  the_longest_word(f);
  close(f);
end.
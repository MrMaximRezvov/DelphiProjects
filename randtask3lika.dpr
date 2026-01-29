program randtask3lika;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, windows;

var
  i, l, lm, j, nm: int32;

begin
setconsoleoutputCP(1251);
  repeat
    nm := 0;
    lm := 0;
    l := 0;
    write('введите randseed: ');
    readln(randseed);
    for i := 1 to 10000 do
    begin
      j := random(21);
      if j <> 0 then
      begin
        inc(l);
        if l > lm then
        begin
          lm := l;
          nm := i - lm + 1;
        end;
      end
      else
        l := 0;
    end;
    writeln('максимальная длина: ', lm);
    writeln('номер первого элемента: ', nm);
  until false;
end.

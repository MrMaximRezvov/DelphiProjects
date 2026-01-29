program evklidfunc;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, windows;

var
  a, b, c, i, r, NOD: int32;

begin
  setconsoleoutputCP(1251);
  repeat
    writeln('Введите сколько НОД скольки чисел хотите узнать:');
    readln(r);
    for i := 1 to r-1 do
    begin
      if i > 1 then
      begin
        a := a + b;
        writeln('Введите одно следующее целое значение: ');
        readln(b);
        while b <> 0 do
        begin
          c := b;
          b := a mod b;
          a := c;
        end;
        writeln('NOD=', a + b, ' Кол-во чисел=', i+1);
        continue;
      end;
    writeln('Введите два целых ненулевых значения: ');
    readln(a);
    readln(b);
    if (a = 0) and (b = 0) then
    begin
      writeln('Не должны равняться 0');
      writeln('#####################################');
      continue;
    end;
    while b <> 0 do
    begin
      c := b;
      b := a mod b;
      a := c;
    end;
    writeln('NOD=', a + b);
    end;
    writeln('#####################################')
  until false;

end.

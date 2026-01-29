program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

var
    p1, p2, p3, L1: tdot;
    d1, d2, d3, d4: real;

const s = 'Введите координаты точки на плоскости: ';

begin

      repeat
        write(s);
        readln(d1, d2);
        p1.init(d1, d2);
        p1.print(3, s);
        readln(d1, d2);
        p2.init(d1, d2);
        writeln(p1.dist(p1, p2):0:4);
        p1.line(p1, p2);
        readln;
      until false;

end.

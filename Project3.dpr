program Project3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, windows;

var
  x1, x2, y1, y2, k, b: real;

label m;

begin

begin   m:
  setconsoleoutputCP(1251);
  write('Введите координаты первой точки: ');
  readln(x1, y1);
  write('Введите координаты второй точки: ');
  readln(x2, y2);

  if x1 = x2 then
  if y1 = y2 then
  begin
       writeln('Точки одинаковы. Количество прямых бесконечно.');
       goto m;
  end;

  if x1 = x2 then
  begin
    writeln('x = ', x1:0:2);
  end
  else if y1 = y2 then
  begin
    b:= y1;
    writeln('y=',  b:0:2);
  end
  else
  begin
    k:= (y2 - y1) / (x2 - x1);
    b:= y1 - k * x1;
    writeln('y=', k:0:2, '*x+', b:0:2);
  end;

  goto m;

end
end.

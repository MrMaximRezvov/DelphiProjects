program Project4;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, windows;

var
  x1, x2, y1, y2, k, b: real;

label m1, m2;

begin

begin
  setconsoleoutputCP(1251);
  m1:
  readln(k,b);

  if k = 0 then
    if b = 0 then writeln('besc');
    else writeln('net resh');
  goto m1;

  end
  else writeln('Корень ед. X1 = ', -b / k:0:2);
  m2:
  readln(x);
  y=: k*x+b;
  writeln(y:0:2, #10);
  goto m2;
end
end.

program bool1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var x, y, b1, b2, b3, b4, b5: boolean;

begin
writeln('Таблица истиности.');
writeln('x y not x not y x or y x and y x xor y');

for x := false to true do
  for y := false to true do
    begin
      b1:= not x;
      b2:= x or y;
      b3:= x and y;
      b4:= x xor y;
      b5:= not y;
      writeln(ord(x):2, ord(y):2, ord(b1):5, ord(b5):6, ord(b2):7, ord(b3):7, ord(b4):5);
    end;
readln;
end.

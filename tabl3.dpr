program tabl3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Windows;

var i, k, j, n, h: uint8;

label m;

begin
m:
setconsoleoutputCP(1251);
writeln('Введите k');
readln(k);
n:= 120 div k -1;


for h := 1 to k do
  begin
    for i := 0 to n do
      begin
        j:= h+k*i;
        write(j: 4);
      end;
      writeln;
  end;

goto m;
readln;
end.

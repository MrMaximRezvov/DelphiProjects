program boolRVN;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var x,y,f: boolean;
    n,k:uint16;
begin
writeln('ТИ для функции:');
writeln('F = not X and Y or X and not Y');
writeln(' X Y  F');
k:=3;
n:=0;
for x := false to true do
  for y := false to true do
   begin
//
    f:=not X and Y or X and not Y;
    //f:= x or y;
//
    writeln(ord(x):2,ord(y):2,ord(f):3);
    n:=n+ord(f)*(1 shl k);
    dec(k);
  end;
writeln('F = f',n);
readln;
end.

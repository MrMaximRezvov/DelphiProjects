program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, windows;

var
  a,b,c: int32;

label m;

begin
  setconsoleoutputCP(1251);
m:
  writeln('введите 3 целых числа ');
  readLn(a, b, c);
  if a > b then
  begin
    if a > c then
      writeLn('a max= ', a)
    else
      writeLn('c max=', c)
  end
  else begin
     if b>c then writeLn('b max', b) else writeLn('c max ', c)


  end;//writeLn('b max= ', b);
  goto m;

end.

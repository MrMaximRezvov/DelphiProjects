program Project5;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, windows;

var
  S, sum, i: int32;





begin

begin
  setconsoleoutputCP(1251);

for i:=1 to 100 do
sum:=sum + i;
writeln('sum=', sum);


end;
// Нахожение суммы по формуле Гаусса
S:= (1+100) * 100 div 2;
writeln('Формулой Гаусса= ', S);

readln
end.

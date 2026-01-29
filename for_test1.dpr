program for_test1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, windows;

var
  sum, sum2,  i, n1, n2: int32;





label m;

begin

begin
  setconsoleoutputCP(1251);
m:
sum:= 0;
sum2:= 0;
writeln('Введите 2 значения');
readln(n1, n2);

for i:= n1 to n2 do
if i mod 2 = 1 then
sum := sum+i;
writeln('sum=', sum);




//Нахождение суммы по формуле Гаусса

if n1 mod 2 = 0 then
n1 := n1+1;
if n2 mod 2 = 0 then
n2 := n2-1;

sum2:= ((n1+n2) * ((n2 - n1) div 2 + 1)) div 2;




writeln('Формулой Гаусса= ', sum2, #10);

end;



goto m;
readln
end.

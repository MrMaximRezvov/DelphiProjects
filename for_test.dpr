program for_test;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  windows;

var
  sum, sumc, i: int32;


const n1 = -1000;
const n2 = 10000;


begin
setconsoleoutputCP(1251);
sum:=0;
sumc:=0;

for i:= n1 to n2 do
if i mod 13 = 0 then
begin
sum:=sum + i;
sumc:=sumc+1;
end;


writeln('sum= ', sum, #10);
writeln('sumc= ', sumc, #10);


readln;
end.

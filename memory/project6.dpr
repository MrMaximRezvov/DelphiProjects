program project6;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

function triangle(a,b: real; var c: real):real;
begin
  c:=sqrt(a*a+b*b);
  result:=(a*b)/2;
end;

var a, b, c, s: real;
 cp : ^real;
begin
  repeat
    writeln('Введите a, b: ');
    readln(a);
    readln(b);
    s := triangle(a, b, c);
    writeln('Gip = ', c:0:3);
    writeln('Sum = ', s:0:3);
    readln
  until false;
  readln;
end.

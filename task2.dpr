program task2;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  a, b, c, a1, b1, otvet, otvet1: int32;

begin
  repeat
    readln(a, b);
    a1:= a;
    b1:= b;


    while b <> 0 do
    begin
      c := b;
      b := a mod b;
      a := c;
    end;

    otvet:= a1*b1 div a*a;
    writeln(otvet);
    readln;


    readln(a,b);
    while b <> 0 do
    begin
      c := b;
      b := a mod b;
      a := c;
    end;
    otvet1:= a+b;
    otvet:= a+b div otvet1;
    writeln(otvet1, otvet)
  until false;

end.

program nok;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  a, b, NOD, a1, b1, c, NK: int32;

begin

  repeat

    writeln('Введите значение a, b');
    readln(a1, b1);

    a := a1 + b1;
    b := b1;
    while b <> 0 do
    begin
      c := b;
      b := a mod b;
      a := c;
    end;
    NK := a1 * b1 div (a + b);
    NOD := a + b;
    writeln('NOD=', NOD, ' NOK=', NK);

  until (false);
  readln;

end.

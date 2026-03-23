program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  td1 = array of real;

function parabola(x: real; n: integer = 10; step: real = 1): td1;
var
  i: integer;
begin
  setlength(result, n);
  for i := 0 to n - 1 do
  begin
    result[i] := x * x;
    x := x + step;
  end;

end;

procedure numbers(k1, k2: integer); overload;
begin
  Writeln('Сумма=', k1 + k2);
  if k2 <> 0 then
    Writeln('div=', k1 div k2, ' mod =', k1 mod k2);
  Writeln('Произв.=', k1 * k2);
end;

procedure numbers(k1, k2: real); overload;
begin
  Writeln('Сумма=', k1 + k2:0:4);
  if k2 <> 0 then
    Writeln('k1/k2=', k1 / k2:0:4);
  Writeln('Произв.=', k1 * k2:0:4);
end;

var
  arr: td1;
  i: integer;

begin
  try
    arr := parabola(0);
    for i := 0 to length(arr) - 1 do
      write(arr[i]:0:2, ' ');
    Writeln;
    arr := parabola(0, 15, 2);
    for i := 0 to length(arr) - 1 do
      write(arr[i]:0:2, ' ');
    Writeln;
    arr := parabola(0, 5);
    for i := 0 to length(arr) - 1 do
      write(arr[i]:0:2, ' ');
    readln;

    numbers(3, 5);
    Writeln;
    numbers(3.0, 5.0);
    readln;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.

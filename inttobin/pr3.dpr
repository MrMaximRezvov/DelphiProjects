program pr3;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

procedure intToBin(m: integer);
var
  c: integer;
begin
  if m > 0 then
  begin
    c := ord(odd(m));
    m := m shr 1;
    if m > 0 then
      intToBin(m);
  end;
  writeln(c);
end;

var
  m: integer;

begin
  try
    readln(m);
    writeln;
    intToBin(m);
    readln;
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      writeln(E.ClassName, ': ', E.Message);
  end;
  readln;

end.

program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  windows;

var c : ansichar;
  s: ansistring;
begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    setconsoleoutputCP(1251);
    setconsoleCP(1251);
    //readln(c);
    readln(s);
    //write(odd(c));
    writeln(ord(s[1]), ' ', sizeof(s[1]));
    readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

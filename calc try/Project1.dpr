program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var a, b, c: uint8;
  z: ansichar;

begin
  repeat
    writeln('Введите ваш пример через пробел.');
    readln(a, z, z, b);
    case z of
    '+': c:= a+b;
    '-': c:= a-b;
    '*': c:= a*b;
    '/': c:= a div b;
    end;
    writeln('Ответ: ', c);
  until false;
//  try
//    { TODO -oUser -cConsole Main : Insert code here }
//  except
//    on E: Exception do
//      Writeln(E.ClassName, ': ', E.Message);
//  end;
end.

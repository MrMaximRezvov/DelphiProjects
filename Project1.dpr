program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, windows;

var
  a,b,c: int32;

label m;

begin
  setconsoleoutputCP(1251);

m:
 readln(a,b,c);
 writeln(a);
 writeln('a');
 readln(a,b,c);
 writeln(b);
 writeln('b');
 readln(a,b,c);
 writeln(c);
 writeln('c');
 readln;
end.

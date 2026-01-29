program randtabl;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var i, j: int16;

begin
randomize;
repeat
  writeln(randseed);
  for i  := 1 to 100 do
    begin

      j:=random(100);
      write(j: 5);
      if i mod 10 = 0 then
      writeln;
    end;
    readln;
until false;
end.

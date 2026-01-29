program randtask4;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var i, schet: int32;
b: boolean;

begin
for i := 1 to 100 do
  begin
  b:= boolean(random(2));
  if b = true then schet:= schet+1;
  write(b: 6);
  end;

writeln('schet= ', schet);
readln;
end.

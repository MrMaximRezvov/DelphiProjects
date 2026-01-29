program tablbool;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  x, y: boolean;
  i, p: int16;
  result: ansistring;

begin

  for p := 0 to 15 do
  begin
    result := '';
    for i := 0 to 3 do
    begin
      if p and (1 shl i) > 0 then
        result := result + '1'
        //writeln('1');
      else
        result := result + '0';
        //writeln('0');
    end;
    //writeln;
    write//(result);
  end;
  readln;

end.

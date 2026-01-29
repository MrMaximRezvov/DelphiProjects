program randtask8;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  i, j, jold, count, istart, countbig: int32;

begin
  repeat
    i := 0;
    j := 0;
    istart := 0;
    count := 0;
    jold := 0;
    countbig:=0;

    write('Введите randseed: ');
    readln(randseed);

    for i := 1 to 10000 do
    begin

      j := random(101);
      if j > jold then
      begin
        inc(count);
      end;

      if count > countbig then
      begin


          if j<jold then
          begin
          countbig := count;
          istart := i - count;
          count := 0;
          end;


      end;
      jold := j;
    end;

    writeln('count=', countbig, ' start=', istart);
  until false;

end.

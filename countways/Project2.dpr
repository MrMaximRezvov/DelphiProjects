program Project2;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  i, j, n, m: uint32;
  ar: array of uint32;

begin
  repeat
    try
      write('Enter n,m : ');
      readln(n, m);
      setlength(ar, m);
      for i := 0 to m - 1 do
        ar[i] := 1; // начальные условия
      for i := 1 to n - 1 do
        for j := 1 to m - 1 do
          ar[j] := ar[j] + ar[j - 1];
      writeln('rez=', ar[m - 1]);
    except
      on E: Exception do
        writeln(E.ClassName, ': ', E.Message);
    end;
    // readln;
  until false;

end.

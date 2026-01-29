program filestxt;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  fin, fout: textfile;
  a, b: int8;
  namein, nameout: string;

begin
  repeat
    writeln('pls write name input file');
    readln(namein);
    writeln('pls write name output file');
    readln(nameout);
    namein := './' + namein + '.txt';
    nameout := './' + nameout + '.txt';
    assignfile(fin, namein);
    assignfile(fout, nameout);
    rewrite(fout);
    if fileexists(namein) then
      reset(fin)
    else
      writeln(fout, 'input file no found');
    readln(fin, a, b);
    writeln(fout, a, ' + ', b, ' = ', a + b);
    readln(fin, a, b);
    writeln(fout, a, ' - ', b, ' = ', a - b);
    readln(fin, a, b);
    writeln(fout, a, ' * ', b, ' = ', a * b);
    readln(fin, a, b);
    writeln(fout, a, ' / ', b, ' = ', a / b:0:3);
    readln(fin, a, b);
    closefile(fin);
    closefile(fout);
    readln;
  until false;

end.

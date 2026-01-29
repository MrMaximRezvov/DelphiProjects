program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  tmatr1 = array of real;
  tmatr2 = array of tmatr1;
  tarrofmatr = array of tmatr2;

var
  arrOfMatr: tarrofmatr;
  matrix1, matrix2, matrix3, arr: tmatr2;
  i, j, n, m, menu: int32;
  statArr: array of boolean;
  fname: string;

procedure readMatrix(filename: string);
var
  f: textfile;
  n, m: uint32;
  i, j: int32;
  r: real;

begin
  arr := nil;
  setlength(arr, 0, 0);
  assignfile(f, filename);
  reset(f);
  readln(f, n, m);
  setlength(arr, n, m);
  for i := 0 to n - 1 do
  begin
    for j := 0 to m - 1 do
    begin
      read(f, r);
      arr[i][j] := r;
    end;
    readln(f);
  end;
  closefile(f);
end;

procedure printMenu;
begin
  writeln('Menu: ');
  writeln('1. ������ �������.');
  writeln('2. ���������� ����������.');
  writeln('3. ������ �� ���� � ����� �����������.', #10);
end;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    repeat
      printMenu();
      readln(menu);
      case (menu) of
        1:
          begin
            writeln('������� ��� ����� ��� ���� � ���� � ����������, �� enter.');
            readln(fname);
            if fname <> '' then
            begin
              fname := fname + '.txt';
            end;
            readMatrix(fname);
          end;
        2:
          begin

          end;
        3:
          begin

          end;

      end;

    until false;
  except
    on E: Exception do
      writeln(E.ClassName, ': ', E.Message);
  end;

end.

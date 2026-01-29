program pr2;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

function IntToBinary(m: uint32): string;
var
  c: Integer;
  BinaryString: string;
begin
  BinaryString := '';

  while m > 0 do
  begin
    c := m mod 2;
    BinaryString := IntToStr(c) + BinaryString;
    m := m div 2;
  end;

  Result := BinaryString;
end;

var
  InputNumber: uint32;
  BinaryString: string;
begin
  try
    Write('Введите целое число: ');
    ReadLn(InputNumber);
    if InputNumber < 0 then
      BinaryString := '-' + IntToBinary(InputNumber)
    else
      BinaryString := IntToBinary(InputNumber);

    WriteLn('Двоичное представление: ', BinaryString);
  except
    on E: Exception do
      Writeln('Ошибка: ', E.Message);
  end;
  ReadLn;
end.

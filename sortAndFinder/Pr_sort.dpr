program Pr_sort;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  libSort in 'libSort.pas',
  service in 'service.pas';

var
  MyArray: TIntArray;
  n: Integer;

begin
  try
    write('n = ');
    readln(n);
    GenerateArray(MyArray, n);

    PrintArray(MyArray, 'Исходный массив:');

    BubbleSort(MyArray);

    PrintArray(MyArray, 'Отсортированный массив:');

    WriteLn('Нажмите Enter для выхода...');
    readln;
  except
    on E: Exception do
      WriteLn('Ошибка: ', E.Message);
  end;

end.

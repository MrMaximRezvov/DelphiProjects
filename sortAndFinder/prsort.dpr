program PrSort;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Service in 'Service.pas';

var
  ari: tdi;   // массив целых чисел
  arr: tdr;   // массив вещественных чисел
  arc: tdc;   // строка

begin
  try

    GenArr(ari, 1000, 0, 100, 11);
    PrintArr(ari, 4, 0);
    WriteLn('...');
    WriteLn;

    WriteLn('=== ПРИМЕР 3: Вещественные числа ===');
    GenArr(arr, 15, -50, 50, 42);
    WriteLn('Массив real данных:');
    PrintArr(arr);
    WriteLn;

    WriteLn('=== ПРИМЕР 4: Строка символов ===');
    GenArr(arc, 200, Ord('A'), Ord('Z'), 99);
    WriteLn('Случайная строка (200 символов A-Z):');
    PrintArr(arc);
    WriteLn;

    WriteLn('=== ПРИМЕР 5: Разные параметры генерации ===');
    GenArr(ari, 25, 10, 99, 777);  // числа от 10 до 99
    WriteLn('Числа в диапазоне [10..99]:');
    PrintArr(ari, 5);
    WriteLn;

  except
    on E: Exception do
      WriteLn('Ошибка: ', E.Message);
  end;

  WriteLn('Нажмите Enter...');
  ReadLn;
end.

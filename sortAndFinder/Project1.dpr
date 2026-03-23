program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Service in 'Service.pas';

var
  // Глобальные переменные согласно плану
  n, lb, rb, randVal: Int32;
  t1, t2, fr: Int64;
  ari: tdi;   // массив целых чисел
  arr: tdr;   // массив вещественных чисел
  arc: tdc;   // строка

// Процедура тестирования генерации и вывода
procedure TestGeneration;
begin
  WriteLn('=== ТЕСТ ГЕНЕРАЦИИ И ВЫВОДА ===');
  WriteLn;

  // Параметры генерации
  n := 25;
  lb := 0;
  rb := 100;
  randVal := 11;

  // Генерация массива целых чисел
  WriteLn('1. Генерация массива целых чисел (int32):');
  WriteLn('   n=', n, ', диапазон [', lb, '..', rb, '], seed=', randVal);
  GenArr(ari, n, lb, rb, randVal);
  Write('   Результат: ');
  PrintArr(ari);
  WriteLn;

  // Генерация массива вещественных чисел
  WriteLn('2. Генерация массива вещественных чисел (real):');
  WriteLn('   n=', n, ', диапазон [', lb, '..', rb, '], seed=', randVal);
  GenArr(arr, n, lb, rb, randVal);
  Write('   Результат: ');
  PrintArr(arr);
  WriteLn;

  // Генерация строки случайных символов
  WriteLn('3. Генерация строки случайных символов (ansistring):');
  n := 150;
  lb := Ord('A');
  rb := Ord('Z');
  randVal := 42;
  WriteLn('   n=', n, ', символы [A..Z], seed=', randVal);
  GenArr(arc, n, lb, rb, randVal);
  WriteLn('   Результат:');
  PrintArr(arc);
  WriteLn;
end;

// Процедура тестирования с большими массивами
procedure TestLargeArray;
begin
  WriteLn('=== ТЕСТ БОЛЬШОГО МАССИВА (>300 элементов) ===');
  WriteLn;

  n := 500;
  lb := -1000;
  rb := 1000;
  randVal := 123;

  WriteLn('Генерация массива из ', n, ' целых чисел:');
  GenArr(ari, n, lb, rb, randVal);
  WriteLn('Вывод (по 100 символов в строке):');
  PrintArr(ari, 6);  // ширина поля 6 символов
  WriteLn;
end;

// Процедура тестирования с параметрами вывода
procedure TestCustomOutput;
begin
  WriteLn('=== ТЕСТ ПОЛЬЗОВАТЕЛЬСКИХ ПАРАМЕТРОВ ВЫВОДА ===');
  WriteLn;

  n := 15;
  GenArr(ari, n, 0, 50, 999);

  WriteLn('Массив целых чисел с шириной поля 8:');
  PrintArr(ari, 8);  // ширина 8 символов
  WriteLn;

  GenArr(arr, n, -10, 10, 888);
  WriteLn('Массив вещественных чисел (ширина=10, 2 знака после точки):');
  PrintArr(arr, 10, 2);
  WriteLn;
end;

// Тест с startind (начиная с определенного индекса)
procedure TestStartIndex;
begin
  WriteLn('=== ТЕСТ ВЫВОДА С НАЧАЛЬНОГО ИНДЕКСА ===');
  WriteLn;

  n := 30;
  GenArr(ari, n, 1, 100, 777);

  WriteLn('Полный массив:');
  PrintArr(ari, 4, 0);  // с начала
  WriteLn;

  WriteLn('Начиная с индекса 10:');
  PrintArr(ari, 4, 10);  // с 10-го элемента
  WriteLn;
end;

// Основная программа
begin
  try
    WriteLn('===========================================');
    WriteLn('   ПРОЕКТ ПО СОРТИРОВКЕ - Pr-sort');
    WriteLn('===========================================');
    WriteLn;

    // Тест 1: Базовая генерация и вывод
    TestGeneration;

    // Тест 2: Большие массивы
    TestLargeArray;

    // Тест 3: Пользовательские параметры
    TestCustomOutput;

    // Тест 4: Вывод с индекса
    TestStartIndex;

    WriteLn('===========================================');
    WriteLn('Все тесты завершены успешно!');
    WriteLn('Нажмите Enter для выхода...');
    ReadLn;

  except
    on E: Exception do
      WriteLn('ОШИБКА: ', E.ClassName, ': ', E.Message);
  end;
end.

program priceways2;

{$APPTYPE CONSOLE}
{$R *.res}
// windows;

uses
  System.SysUtils, System.math;

const
  w = 100;

type
  td2 = array of array of uint32;

var
  i, j, n, m, pr: uint32;
  ar, ar_p: td2;

  // function restore(i,j)
begin
  repeat
    write('Enter randseed : ');
    readln(randseed);
    writeln('Enter n, m : ');
    readln(n, m);
    setlength(ar, n, m);
    // Генерация массива
    for i := 0 to n - 1 do
      for j := 0 to m - 1 do
        ar[i, j] := random(w);
    // Вывод массива ar
    for i := 0 to n - 1 do
      for j := 0 to m - 1 do
        if j = m - 1 then
          writeln(ar[i, j]:5)
        else
          write(ar[i, j]:5);
    // Main
    setlength(ar_p, n, m);
    ar_p[0, 0] := ar[0, 0]; // начальный price
    // pr[i,j]=max(pr[i-1,j],pr[i,j-1])+pr[i,j]
    // Первая строка и первый столбец
    for j := 1 to m - 1 do
      ar_p[0, j] := ar_p[0, j - 1] + ar[0, j];
    for i := 1 to n - 1 do
      ar_p[i, 0] := ar_p[i - 1, 0] + ar[i, 0];
    // Остальные
    for i := 1 to n - 1 do
      for j := 1 to m - 1 do
        //
        ar_p[i, j] := min(ar_p[i - 1, j], ar_p[i, j - 1]) + ar[i, j];
    //
    // Вывод массива ar_p
    writeln('Массив стоимости : ');
    for i := 0 to n - 1 do
      for j := 0 to m - 1 do
        if j = m - 1 then
          writeln(ar_p[i, j]:5)
        else
          write(ar_p[i, j]:5);
    // Восстановить маршрут в виде строки
    i := n - 1;
    j := m - 1;
    var
    s := '(' + i.ToString + ' ' + j.ToString + ')';
    while (i > 0) and (j > 0) do
    begin
      if ar_p[i - 1, j] < ar_p[i, j - 1] then
        dec(i)
      else
        dec(j);
      s := '(' + i.ToString + ' ' + j.ToString + ')' + ',' + s;
    end;
    while (i = 0) and (j > 0) do
    begin
      dec(j);
      s := '(' + i.ToString + ' ' + j.ToString + ')' + ',' + s;
    end;
    while (j = 0) and (i > 0) do
    begin
      dec(i);
      s := '(' + i.ToString + ' ' + j.ToString + ')' + ',' + s;
    end;
    writeln('Маршрут : ', s);
    readln;
  until false;

end.

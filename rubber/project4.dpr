program project4;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  math;

type
  tarr = array of integer;
  tarr2 = array of tarr;

var
  i, j, n, w, tw, sum, k, tw2, total_weight, total_value: integer;
  mw, mp: tarr; // mw - массив весов, mp - массив стоимостей
  msol: tarr2;
  n1, tw1: integer;

begin
  repeat
    sum := 0;
    write('Введите randseed: ');
    readln(randseed);
    setlength(mw, random(10) + 3);
    setlength(mp, length(mw));
    for i := 0 to length(mw) - 1 do
    begin
      mw[i] := random(10) + 1;
      inc(sum, mw[i]);
    end;
    for i := 0 to length(mw) - 1 do
    begin
      mp[i] := random(20) + 1;
    end;
    n := length(mw);
    n1 := n;
    setlength(msol, n + 1, sum + 1);
    for w := 0 to sum do
      msol[0, w] := 0; // i=0 - количество предметов
    for i := 1 to n do
      msol[i, 0] := 0;
    // основная часть
    for i := 1 to n do
      for w := 0 to sum do
      begin
        j := i - 1;
        msol[i, w] := msol[i - 1, w];
        if (w >= mw[j]) and ((msol[i - 1, w - mw[j]] + mp[j]) > msol[i, w]) then
          msol[i, w] := msol[i - 1, w - mw[j]] + mp[j];
      end;
    write('Набор слитков : ');
    for i := 0 to n - 1 do
      if i < n - 1 then
        write(mw[i]:3, ' (', mp[i]:3, '), ')
      else
        writeln(mw[i]:3, ' (', mp[i]:3, ')');
    writeln('Сумма весов слитков : ', sum);
    writeln('Количество слитков : ', length(mw));
    //
    for w := 0 to sum do
      if w < sum then
        write(w:3)
      else
        writeln(w:3);
    writeln;
    for i := 0 to n do
      for w := 0 to sum do
        if w < sum then
          write(msol[i, w]:3)
        else
          writeln(msol[i, w]:3);

    // обратная задача
    // write(#10, 'Введите возможности грузчика : ');
    // readln(tw1);
    // write('Грузчик взял: ', msol[n, tw1]);
    // write(#10, 'Cлитки:');
    // while msol[n1, tw1] > 0 do
    // begin
    // if msol[n1, tw1] > msol[n1 - 1, tw1] then
    // begin
    // write(' ', mw[n1 - 1]:3, ' (', mp[n1 - 1]:3, ');');
    // dec(n1, 1);
    // tw1 := tw1 - mw[n1];
    // end
    // else
    // dec(n1, 1);
    // end;
    // write(#10, 'Введите возможности грузчика: ');
    // readln(tw1);
    // writeln(#10, 'Список взятых слитков:');
    // writeln('+------+--------+-----------+');
    // writeln('|Номер | Вес    | Стоимость |');
    // writeln('+------+--------+-----------+');
    //
    // // Переменные для подсчета общего веса и стоимости
    // total_weight := 0;
    // total_value := 0;
    //
    // while msol[n1, tw1] > 0 do
    // begin
    // if msol[n1, tw1] > msol[n1 - 1, tw1] then
    // begin
    // // Выводим информацию о слитке в виде строки таблицы
    // writeln('| ', n1:4, ' | ', mw[n1 - 1]:6, ' | ', mp[n1 - 1]:9, ' |');
    // // Увеличиваем общий вес и стоимость
    // total_weight := total_weight + mw[n1 - 1];
    // total_value := total_value + mp[n1 - 1];
    // // Переходим к следующему слитку
    // dec(n1, 1);
    // tw1 := tw1 - mw[n1];
    // end
    // else
    // dec(n1, 1);
    // end;
    //
    // writeln('+------+--------+-----------+');
    // writeln('|Итого | ', total_weight: 6, ' | ', total_value: 9, ' |');
    // writeln('+------+--------+-----------+');
    // writeln;
    // write('Введите количество слитков: ');
    // readln(k);
    // write('Введите возможности грузчика : ');
    // readln(tw2);
    // writeln('Грузчик взял: ', msol[k, tw2]);
    // write('Слитки: ');
    // while msol[k, tw2] > 0 do
    // begin
    // if msol[k, tw2] > msol[k - 1, tw2] then
    // begin
    // write(' ', mw[k - 1]:3, ' (', mp[k - 1]:3, ');');
    // dec(k, 1);
    // tw2 := tw2 - mw[k];
    // end
    // else
    // dec(k, 1);
    // end;
    // writeln;
    write('Введите количество слитков: ');
    readln(k);
    write('Введите возможности грузчика: ');
    readln(tw2);

    // Вывод списка взятых слитков в виде таблицы
    writeln(#10, 'Список взятых слитков:');
    writeln('+------+--------+-----------+');
    writeln('|Номер | Вес    | Стоимость |');
    writeln('+------+--------+-----------+');

    // Переменные для подсчета общего веса и стоимости
    total_weight := 0;
    total_value := 0;

    while msol[k, tw2] > 0 do
    begin
      if msol[k, tw2] > msol[k - 1, tw2] then
      begin
        // Выводим информацию о слитке в виде строки таблицы
        writeln('| ', k:4, ' | ', mw[k - 1]:6, ' | ', mp[k - 1]:9, ' |');
        // Увеличиваем общий вес и стоимость
        total_weight := total_weight + mw[k - 1];
        total_value := total_value + mp[k - 1];
        // Переходим к следующему слитку
        dec(k, 1);
        tw2 := tw2 - mw[k];
      end
      else
        dec(k, 1);
    end;

    writeln('+------+--------+-----------+');
    writeln('|Итого | ', total_weight: 6, ' | ', total_value: 9, ' |');
    writeln('+------+--------+-----------+');
    // очистка памяти
    msol := nil;
  until false;

end.

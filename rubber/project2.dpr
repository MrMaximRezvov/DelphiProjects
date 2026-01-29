program project2;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Windows, math;

type
  tm = array of integer;
  tm2 = array of tm;

var
  i, j, n, w, tw: integer;
  mw: tm = [3,10,5,20,3];//[9, 1, 3];//
  msol: tm2;
  used: array of boolean;

begin
  repeat
    n := length(mw);
    // tw - weight of the knapsack
    write('Enter weight knapsack: ');
    readln(tw);
    setlength(msol, n + 1, tw + 1);
    setlength(used, n); // массив для хранения информации о использованных грузах
    for w := 0 to tw do
      msol[0, w] := 0; // i=0-number of good
    for i := 1 to n do
      msol[i, 0] := 0;
    // main
    for i := 1 to n do
      for w := 0 to tw do
      begin
        j := i - 1;
        msol[i, w] := msol[i - 1, w];
        if (w >= mw[j]) and ((msol[i - 1, w - mw[j]] + mw[j]) > msol[i, w]) then
          msol[i, w] := msol[i - 1, w - mw[j]] + mw[j];
      end;
    // ouput msol
    write('Набор слитков: ');
    for i := 0 to n - 1 do
      if i < n - 1 then
        write(mw[i]:3, ' ')
      else
        writeln(mw[i]:3);
    for w := 0 to tw do
      if w < tw then
        write(w:3)
      else
        writeln(w:3);
    writeln;
    for i := 0 to n do
      for w := 0 to tw do
        if w < tw then
          write(msol[i, w]:3)
        else
          writeln(msol[i, w]:3);

    // Определение использованных грузов
    w := tw;
    for i := n downto 1 do
    begin
      if msol[i, w] <> msol[i - 1, w] then
      begin
        used[i - 1] := true;
        w := w - mw[i - 1];
      end
      else
        used[i - 1] := false;
    end;

    // Вывод использованных грузов
    writeln('Использованные грузы:');
    for i := 0 to n - 1 do
      if used[i] then
        write(mw[i], ' ');
    writeln;

    // memory clear
    readln;
    msol := nil;
    used := nil;
  until false;

end.

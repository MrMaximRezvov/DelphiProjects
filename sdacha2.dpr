program sdacha2;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  // coins: array [0 .. 4] of int64;
  coins: array [0 .. 4] of int16 = (
    100,
    10,
    5,
    3,
    2
  );
  fm: array of int32;
  i, j, change, k: int64;
  km: uint8;

begin
  repeat
    // Доступные монеты
    // coins[0] := 100; // 100 руб.
    // coins[1] := 10; // 50 руб.
    // coins[2] := 5; // 10 руб.
    // coins[3] := 3; // 5 руб.
    // coins[4] := 2; // 2 руб.
    //writeln('Введи сдачу');
    // WriteLn('Для выдачи сдачи, используйте следующие монеты:');
    for i := 1 to 25 do
      write(i:3);
    writeln;
    for j := 1 to 25 do
    begin
      change := j;
      k := 0;
      for i := 0 to High(coins) do
      begin
        if change >= coins[i] then
        begin
          // WriteLn('Монет по ', coins[i], ' руб.: ', change div coins[i]);
          inc(k, change div coins[i]);
          change := change mod coins[i];
        end;
      end;
      // writeln;
      if change > 0 then
        write(' no')
      else
        write(k:3);

    end;
    readln;
  until false;

end.

program sdacha;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  coins: array [0 .. 5] of int64;
  i, change: int64;
  km: uint8;

begin
  repeat
    // Доступные монеты
    coins[0] := 100; // 100 руб.
    coins[1] := 50; // 50 руб.
    coins[2] := 10; // 10 руб.
    coins[3] := 5; // 5 руб.
    coins[4] := 2; // 2 руб.
    coins[5] := 1; // 1 руб.

    Write('Введите количество сдачи: ');
    ReadLn(change);

    WriteLn('Для выдачи сдачи, используйте следующие монеты:');

    for i := 0 to High(coins) do
    begin
      if change >= coins[i] then
      begin
        WriteLn('Монет по ', coins[i], ' руб.: ', change div coins[i]);
        change := change mod coins[i];
      end;
    end;
  until false;
end.

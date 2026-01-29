program sdacha5;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

const
  inf = 50000;

var
  n, n1, i, j, jm, k: uint16;
  arm: array of uint8 = [2, 3, 5, 10]; // для стат.массива (...)
  ar_r: array of uint8;
  fm: array of uint16; // index - сумма, знач. - min кол-во монет
  s: string;
  km: uint8;

begin
  writeln('Динамическое программирование. Задача банкомат');
  repeat
    try
      write('Enter n : ');
      readln(n);
      setlength(fm, n + 1);
      fm[0] := 0;
      km := high(arm);
      setlength(ar_r, km + 1);
      for i := 1 to n do
        fm[i] := inf;
      for i := 0 to km do
        fm[arm[i]] := 1;
      for k := 1 to n do
      begin
        // n1-текущая сумма
        n1 := k;
        for i := 0 to km do
          if (n1 >= arm[i]) and (fm[n1 - arm[i]] + 1 < fm[n1]) then
            fm[n1] := fm[n1 - arm[i]] + 1;
        if fm[n1] = inf then
          write('no':4)
        else
          write(fm[n1]:4);
      end;
      /// ///////////
      writeln(#10, 'Обратный алгоритм (Enter)');
      readln;
      n1 := n;
      s := '';
      for i := 0 to km do
        ar_r[i] := 0;
      j := n1;
      while n1 >= arm[0] do
      begin
        for i := 0 to km do
        begin
          if (fm[n1 - arm[i]] + 1) = fm[n1] then
          begin
            Dec(n1, arm[i]);
            if s = '' then
              s := IntToStr(arm[i]) + s
            else
              s := IntToStr(arm[i]) + '+' + s;
            inc(ar_r[i]);
            // Break;
          end;
        end;
      end;
      writeln(s, ' = ', j);
      for i := 0 to km do
        if ar_r[i] > 0 then
          writeln(arm[i], ' = ', ar_r[i]);
      if n1 > 0 then
        writeln(n1:4, ' - ', 'no banknote');
      writeln('===============');
    except
      on E: Exception do
        writeln(E.ClassName, ': ', E.Message);
    end;
  until false;

end.

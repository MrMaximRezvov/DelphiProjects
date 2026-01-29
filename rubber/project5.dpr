program project5;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  tm = array of integer;

var
  wt, prt: tm;
  rw: array of tm;
  n, k, Tw, n1, Tw1, j, i, w, price: integer;
  s: string;

begin
  repeat
    write('Randseed (4,5,11,13, ..) : ');
    readln(randseed);
    n := random(10) + 3;
    setlength(wt, n);
    for i := 0 to n - 1 do
      wt[i] := random(10) + 1;
    setlength(prt, n);
    for i := 0 to n - 1 do
      prt[i] := random(20) + 1;
    writeln('Слитков = ', n);
    write('Номера: ');
    for i := 1 to n do
      write(i:4);
    writeln;
    // Вывод слитков
    write('Вес   : ');
    Tw := 0;
    for k := 1 to n do
    begin
      if k < n then
        write(wt[k - 1]:4)
      else
        writeln(wt[k - 1]:4);
      Tw := Tw + wt[k - 1];
    end;
    write('Price : ');
    for k := 1 to n do
      if k < n then
        write(prt[k - 1]:4)
      else
        writeln(prt[k - 1]:4);
    //
    repeat
      // write('Введите предельный вес : ');
      // readln(Tw);
      setlength(rw, n + 1, Tw + 1);
      for w := 0 to Tw do
        rw[0, w] := 0;
      //
      for k := 1 to n do
      begin
        for w := 0 to Tw do
        begin
          rw[k, w] := rw[k - 1, w];
          if (w >= wt[k - 1]) and ((rw[k - 1, w - wt[k - 1]] + prt[k - 1]) >
            rw[k, w]) then
            rw[k, w] := rw[k - 1, w - wt[k - 1]] + prt[k - 1];
        end;
      end;
      //
      writeln(#10);
      write('k\w ');
      for i := 0 to Tw do
        if i = Tw then
          writeln(i:3)
        else
          write(i:3);
      for k := 0 to n do
      begin
        write(k:3, '|  0');
        for w := 1 to Tw do
          if w < Tw then
            write(rw[k, w]:3)
          else
            writeln(rw[k, w]:3);
      end;
      write('Enter  k и предельный вес Wmax : ');
      readln(n1, Tw1);
      writeln('Price = ', rw[n1, Tw1]);
      // Печать предметов
      // Обратная задача
      w := Tw1;
      j := 0;
      price := 0;
      writeln('Брать : ');
      writeln('Номер Вес Стоимость');
      for k := n1 downto 1 do
        if rw[k, w] = rw[k - 1, w] then
          continue
        else
        begin
          writeln(k:4, wt[k - 1]:4, prt[k - 1]:7);
          dec(w, wt[k - 1]);
          inc(j, wt[k - 1]);
          inc(price, prt[k - 1]);
        end;
      writeln(#10, 'Вес=', j, ' Стоимость= ', price, #10,
        'New randseed (y|n) : ');
      readln(s);
    until s = 'y';
  until s = 'n';

end.

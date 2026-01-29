program task;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  i, j, sum1, sum2, schet2, chislo2, sum3, sum31, sum4, sum41: uint32;

begin

for i := 8 to 2024 do
begin
  if i mod 7 = 0 then
  sum1 := sum1 + i;
end;

writeln('sum1= ', sum1);

i:= 0;

  while i < 1000 do
  begin
    if sum2 < 10000 then
    begin
      inc(schet2);
      sum2:= sum2+i;
    end;

    if sum2 > 10000 then
    begin
      chislo2:=i-1;
      sum2:= sum2 - i;
      writeln('sum2= ', sum2,' schet2= ', schet2 - 1, ' chislo2= ', chislo2);
      break;
    end;

    inc(i);
   end;

i:= 0;
j:= 0;

for i := 50 to 9999 do
begin
    sum3:= 0;
    j:= i;
    while j > 0 do
     begin
       sum3:= sum3 + j mod 10;
       j:=j div 10;
     end;
     if sum3 = 13 then inc(sum31, sum3);


end;
writeln('sum3= ', sum31);

i:= 0;
sum3:= 0;
j:= 0;
sum31:= 0;

for I := 100 to 2024 do
  if i mod 3 = 0 then
    if i mod 2 > 0 then
      begin
        sum3:= 0;
        j:= i;
        while j > 0 do
        begin
          sum3:= sum3 + j mod 10;
          j:=j div 10;
        end;
        if sum3 mod 5 = 0 then inc(sum31, sum3);
       end;

writeln('sum4= ', sum31);




readln;
end.

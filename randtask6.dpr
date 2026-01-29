program randtask6;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var c: ansichar;
i, schet: int32;


begin
schet:= 0;
randseed:= 11;
for i := 1 to 600 do
begin
c:= ansichar(random(ord('я')-ord('а') + 1) + ord('а'));
write(c);
//if ord(c) = 76 then inc(schet);
if c = 'а' then inc(schet);
if c = 'е' then inc(schet);
if c = 'у' then inc(schet);
if c = 'о' then inc(schet);
if c = 'и' then inc(schet);
if c = 'э' then inc(schet);
if c = 'ы' then inc(schet);
if c = 'я' then inc(schet);
if c = 'ю' then inc(schet);

end;
writeln(#10, 'schet= ', schet);
readln;
end.

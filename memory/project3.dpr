program project3;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
s7, s8: ansistring;
begin
  s8:= 'Хочу знать и понимать работу с динамическими строками';
  s7 := s8;
  writeln('@s7 = ', uintptr(@s7), ' @s8 = ', uintptr(@s8));
  s8[5] := '-';
  writeln('@s7 = ', uintptr(@s7), ' @s8 = ', uintptr(@s8));
  readln;
end.

program pr3;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, windows;
  

type
  PEl = ^TEl;

  TEl = record
    f: boolean;
    Link: array ['а' .. 'я'] of PEl;
  end;

   twin1251 = type ansistring(1251);

procedure Insert(s: ansistring; var root: PEl);
var
  i: integer;
  curr: PEl;
  c: ansichar;
  c1251: twin1251;
  s1:ansistring;
begin
  if root = nil then
    New(root);

  curr := root;
  //s1:=utf8toansi(s);//s1:=s//s1:=s;
  for i := 1 to Length(s) do
  begin
     c := s[i];
     c1251 := twin1251(c);
     //writeln('я','  ',ord('я'),'  ',c);
     //readln;
//    if not(c1251 in ['а' .. 'я']) then
//      writeln('Недопустимый символ: ' + c);

    if curr^.Link[c1251] = nil then
      New(curr^.Link[c1251]);

    curr := curr^.Link[c];
  end;
end;

var
  root: PEl = nil;
  s: string;

begin
  try
    setconsoleCP(1251);
    setconsoleOUTPUTCP(1251);
    repeat
      writeln('s: ');
      read(s);
      Insert(s, root);
      readln;
    until false;
  except

  end;
end.

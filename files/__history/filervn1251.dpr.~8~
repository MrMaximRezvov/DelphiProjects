program filervn1251;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, windows;

// Пример реализации 1 шага (вводим с клавиатуры)
type
  mytype = type ansistring(1251);
  ts = array of mytype;
  tchar = #192 .. #255;

var
  aw: ts; // array of words
  s, s1: mytype;
  i: int32;

begin
  setconsoleoutputCP(1251);
  setconsolecp(1251);
  repeat
    writeln('Введите предложение на русском языке : ');
    readln(s);
    s := mytype(s);
    // s:=utf8toansi(s);
    s1 := '';
    // s:=s+' ';
    for i := 1 to high(s) do
      if s[i] in [low(tchar) .. high(tchar)] then
        s1 := mytype(s1) + mytype(s[i])
      else if s1 <> '' then
      begin
        aw := aw + [mytype(s1)];
        s1 := '';
      end;
    // 'хочу все знать'
    // не нужен, если добавляем в конце ' ';
    if s1 <> '' then
      aw := aw + [s1];
    writeln('Всего слов: ', length(aw));
    for i := 0 to High(aw) do
      writeln('<', mytype(aw[i]), '>');
    writeln(#10#10);
    aw := nil;
  until false;

end.

program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  a, b, rez, i: uint8;
  nop: int8;
  c, c1: char;
  s, s1: string;

begin
  //writeln('Введите : ');
  repeat
    try
      writeln('Введите: Оп1_символ оп.(+-*/%)_Оп2');
      nop := 1;
      readln(s);
      s1:= '';
      i := 1;
      while s[i] in ['0'..'9'] do
      begin
        s1:= s1+s[i];
        inc(i);
      end;
      a:= strtoint(s1);
      while s[i] = ' '  do inc(i);
      c:= s[i];
      inc(i);
      s1 := '';
      nop:= 2;
      while i<=length(s) do
      begin
        s1:= s1+s[i];
        inc(i);
      end;
      b := strtoint(s1);
      nop := 3;

//      read(a);
//      nop := 2;
//      readln(c, c, b);
      case c of
        '+':
          rez := a + b;
        '-':
          rez := a - b;
        '*':
          rez := a * b;
        '/':
          rez := a div b;
        '%':
          rez := a mod b;
        //'^':
          //rez := a^b;
      else
        begin
          writeln('Ошибка в вводе операции');
          continue;
        end;
      end; // case
      writeln(' = ', rez, #10);
    except
      on EDivByZero do
        writeln('Ошибка деления на ноль  в операции "', c, '"');
      on ERangeError do
        writeln('Ошибка переполнения результата.');
      on EInOutError do
      begin
        writeln('Ошибка в операнде ', nop);
        if nop = 1 then
          readln;
      end;
      on cl1: Exception do
      begin
        writeln(cl1.ClassName, ': ', cl1.Message);
      end;
    end;
  until false;

end.

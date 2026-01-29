program texttoword;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, windows;

type
  TWin1251 = type AnsiString(1251);

var
  fin, fout: TextFile;
  f_name, f_name2: TWin1251;
  words: array of TWin1251;
  str, word: TWin1251;
  i, j: Integer;
  ban: set of Char = [' ', ',', '.', ';', ':', '!', '?', '-', #9, #10, #13,
    '''', '"'];

begin
  setconsoleoutputCP(1251);
  setConsoleCP(1251);
  repeat
    try
      WriteLn('Введите имя файла для чтения (без расширения):');
      ReadLn(f_name);
      AssignFile(fin, f_name + '.txt');

      WriteLn('Введите имя файла для записи (без расширения):');
      ReadLn(f_name2);
      AssignFile(fout, f_name2 + '.txt');
{$I-}
      Reset(fin);
{$I+}
      if IOResult <> 0 then
      begin
        WriteLn('Ошибка: Файл ', f_name, '.txt не найден!');
        Continue;
      end;
      Rewrite(fout);

      while not EOF(fin) do
      begin
        ReadLn(fin{, str});
        readln(str);

        word := '';
        for j := 1 to Length(str) do
        begin
          if CharInSet(str[j], ban) then
          begin
            if word <> '' then
            begin
              SetLength(words, Length(words) + 1);
              words[High(words)] := TWin1251(word);
              word := '';
            end;
          end
          else
          begin
            word := TWin1251(word + str[j]);
          end;
        end;

        if word <> '' then
        begin
          SetLength(words, Length(words) + 1);
          words[High(words)] := TWin1251(word);
        end;
      end;

      WriteLn('Найденные слова:');
      for i := 0 to High(words) do
      begin
        Write(fout, TWin1251(words[i]), ' ');
        Write(TWin1251(words[i]), ' ');
      end;
      WriteLn;

      CloseFile(fin);
      CloseFile(fout);
      SetLength(words, 0);
    except
      on E: Exception do
        WriteLn('Ошибка: ', E.Message);
    end;

    ReadLn;
  until false;

end.
// begin
// try
// { TODO -oUser -cConsole Main : Insert code here }
// except
// on E: Exception do
// Writeln(E.ClassName, ': ', E.Message);
// end;
// end.

program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  TMyDate = { packed } record
    Year: Integer;
    Month: Byte;
    Day: Byte;
  end;

{$ALIGN 1}

  TMyRecord = record
  private
    Name: string;
    Value: Integer;
    SomeChar: Char;
  public
    function tostring: string;
    procedure SetValue(NewString: string);
    procedure Init(int: Integer);
  end;


var
  BirthDay: TMyDate;
  rec1, rec2, Myrec: TMyRecord;


procedure TMyRecord.Init(int: Integer);
begin
  Value := int;
  SomeChar := 'A';
end;


function TMyRecord.tostring: string;
begin
  Result := Name + ' [' + SomeChar + ']: ' + Value.tostring;
end;
procedure TMyRecord.SetValue(NewString: string);
begin
  Name := NewString;
end;


begin
  BirthDay.Year := 1997;
  BirthDay.Month := 2;
  BirthDay.Day := 14;
  writeln('Born in year ' + BirthDay.Year.tostring);
  writeln('Record size is ' + SizeOf(BirthDay).tostring);

  writeln(#10, 'Record MyRec size is ' + SizeOf(Myrec).tostring);
  Myrec.Init(10);
  Myrec.SetValue('Иван');
  writeln(Myrec.tostring);
  rec1.SetValue('Влад');
  rec2.SetValue('Иван');
  rec1.Value := 100;
  rec2.Value := 200;
  writeln(rec1.tostring);
  writeln(rec2.tostring);
  //
  readln;

end.

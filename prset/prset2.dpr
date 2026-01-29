program prset2;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  ten1 = (jan, feb, mar, apr, may, jul, jun, aug, sep, oct, nov, dec);
  tch = 'a' .. 'z';
  tchn = 0 .. 9;
  tset1 = set of tch;
  tset2 = set of tchn;
  tset3 = set of ten1;

var
  set1a, set2a, set3a: tset1;
  set1n, set2n, set3n: tset2;
  set1e, set2e, set3e: tset3;
  i: int32;
  c: ansichar;
  it: ten1;

procedure out_tchn(S: tset2);
var
  i: int32;
begin
  for i := low(tchn) to high(tchn) do
  begin
    if i in S then
      write(i);
  end;
end;

procedure out_tch(S: tset1);
var
  c: ansichar;
begin
  for c := low(tch) to high(tch) do
  begin
    if c in S then
      write(c);
  end;
end;

procedure out_ten(S: tset3);
type
  tarr_en = array of ansistring;
var
  i: int32;
  it: ten1;
  arr_en: tarr_en;
begin
  arr_en := ['jan', 'feb', 'mar', 'apr', 'may', 'jul', 'jun', 'aug', 'sep',
    'oct', 'nov', 'dec'];
  for it := Low(ten1) to High(ten1) do
  begin
    if it in S then
      write(arr_en[ord(it)], ' ');
  end;
end;

begin
  repeat
    {
      set1a:= ['a', 'b', 'f', 'g', 't', 'y', 'u'];
      set2a:= ['a', 'b', 'e', 't', 'q', 'u'];
      //set3a:= ['n', 'j', 'o', 'e', 'o', 'g', 'd', 's'];

      set1n:= [0, 9, 3, 6, 5, 2, 1];
      set2n:= [8, 6, 7, 3, 7, 9, 0];
      //set3n:= [0, 6, 3, 2, 7, 8, 4];

      set1e:= [jan, feb, mar, apr];
      set2e:= [nov, mar, apr, may];
      //set3e:= [jun, jul, aug, may];
    }
    set1a := [];
    set2a := [];
    set1n := [];
    set2n := [];
    set1e := [];
    set2e := [];
    for i := 0 to 16 do
    begin
      include(set1a, ansichar(random(26) + ord('a')));
      include(set2a, ansichar(random(26) + ord('a')));
    end;
    for i := 0 to 5 do
    begin
      include(set1n, random(10));
      include(set2n, random(10));
    end;
    for i := 0 to 7 do
    begin
      include(set1e, ten1(random(12)));
      include(set2e, ten1(random(12)));
    end;
    // Вывод рандомных данных
    writeln('set1a:');
    out_tch(set1a);
    writeln(#10, #10, 'set2a:');
    out_tch(set2a);
    //
    writeln(#10, #10, 'set1n:');
    out_tchn(set1n);
    writeln(#10, #10, 'set2n:');
    out_tchn(set2n);
    writeln(#10, #10, 'set1e');
    out_ten(set1e);
    writeln(#10, #10, 'set2e');
    out_ten(set2e);

    /// ///////////////

    writeln(#10, #10, 'set3a:= set1a-set2a;');
    set3a := set1a - set2a;
    out_tch(set3a);
    writeln(#10, #10, 'set3a:= set2a+set1a;');

    set3a := set2a + set1a;

    out_tch(set3a);
    writeln(#10, #10, 'set3a:= set2a*set1a;');

    set3a := set2a * set1a;

    out_tch(set3a);
    /// /////////////////////////////////////
    writeln(#10, #10, 'set3n := set1n - set2n;');

    set3n := set1n - set2n;
    out_tchn(set3n);
    writeln(#10, #10, 'set3n:= set2n+set1n; ');

    set3n := set2n + set1n;

    out_tchn(set3n);
    writeln(#10, #10, 'set3n:= set2n*set1n;');

    set3n := set2n * set1n;

    out_tchn(set3n);

    /// //////////////////////////

    writeln(#10, #10, 'set3e := set1e - set2e;');

    set3e := set1e - set2e;
    out_ten(set3e);
    writeln(#10, #10, 'set3e:= set1e+set2e; ');

    set3e := set1e + set2e;

    out_ten(set3e);
    writeln(#10, #10, 'set3e:= set2e*set1e;');

    set3e := set2e * set1e;

    out_ten(set3e);
    readln;
  until false;
  readln;

end.

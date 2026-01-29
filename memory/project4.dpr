program project4;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

// test программа для дин.объектов

var
  i: integer;

  pi, pd: ^integer;

  s, s1, s2: string;

  sa: ansistring;

  p, p1: Pointer;

  pw: ^uint16;

  pc: ^Char;

  pac: ^ansichar;

  pr: ^real;

  //

type
  tdeskr = record

    cp, size_ch: word;

    ref, len: cardinal;

  end;

  td = ^tdeskr;

var
  rec_d: tdeskr;

   p_desk: td;

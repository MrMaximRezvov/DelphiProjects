unit Unit1;

interface

type
  tdot = record
  private
    x, y: real;

  public
    function dist(a, b: tdot): real;
    procedure line(a, b: tdot);
    procedure init(a, b: real);
    procedure print(k: int32; s: string);

  end;

implementation

{ tdot }

function tdot.dist(a, b: tdot): real;
var
  dx, dy: real;
begin
  //if x1>x2 then dx := x1-x2 else dx := x2-x1;
  //if y1>y2 then dy := y1-y2 else dy := y2-y1;
  // d3 := Sqrt((d1*d1)+(d2*d2));
  dx := b.x - a.x;
  dy := b.y - a.y;
  result := sqrt(dx * dx + dy * dy);
  // writeln('Расстояние между точками= ', d3:0:4)

end;

procedure tdot.init(a, b: real);
begin
  x := a;
  y := b;
end;

procedure tdot.print(k: int32; s: string);
begin
  writeln(s, ' x1=', self.x:0:k, ' y1=', self.y:0:k);
end;

procedure tdot.line(a, b: tdot);
var
  dx, dy, k, bk: real;
begin
  dx := b.x - a.x;
  dy := b.y - a.y;
  k := dy/dx;
  bk := a.y - k*a.x;
  writeln('Коэфицент k= ', k:0:4, ' коэфицент b= ', bk:0:4);

end;

end.

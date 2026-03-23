unit Unit1;

interface

uses
  System.SysUtils,
  service;

implementation

procedure BubbleSort(var Arr: TIntArray);
var
  i, j, temp: Integer;
  n: Integer;
begin
  n := Length(Arr);
  for i := 0 to n - 2 do
    for j := 0 to n - 2 - i do
      if Arr[j] > Arr[j + 1] then
      begin
        temp := Arr[j];
        Arr[j] := Arr[j + 1];
        Arr[j + 1] := temp;
      end;
end;

end.

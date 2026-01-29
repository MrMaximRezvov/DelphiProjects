program project5;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

// test программа для дин.объектов

type
  PSt = ^TSt; // указатель на тип TStudent

  //
  TSt = record
    f_name: string[20]; // фамилия
    l_name: string[20]; // имя
    next: PSt; // следующий элемент списка
  end;

var
  head: PSt = nil; // начало (голова) списка
  Last: PSt = nil; // последний элемент сптска
  curr: PSt;
  ans: char;
  answer: uint8;
  count: integer = 0; // количество элементов списка
  num, i: integer;

  // Создание нового элемента
function new_rec: PSt;
var
  curr: PSt;
begin
  new(curr);
  // result:=curr;
  write('Фамилия : ');
  readln(curr^.f_name);
  write('Имя : ');
  readln(curr^.l_name);
  // подготовка
  curr^.next := nil;
  result := curr;
end;

procedure add(var head: PSt; var Last: PSt; var count: integer);
var
  curr: PSt;
begin
  curr := new_rec;
  if head = nil then
    head := curr
  else
    Last^.next := curr;
  Last := curr;
  inc(count);
end;

// Вывод 1-го элемента списка
procedure print_el(curr: PSt);
begin
  writeln('Фамилия : ', curr^.f_name:20);
  writeln('Имя     : ', curr^.l_name:20);
  if curr.next = nil then
    writeln('next=  nil')
  else
    writeln('next=  ', uintptr(curr.next));
end;

procedure view_list(curr: PSt);
var
  i: integer;
begin
  i := 0;
  while curr <> nil do
  begin
    inc(i);
    with curr^ do
      writeln(i:5, ' адр=', uintptr(curr):11, f_name:8, l_name:8, ' адр.next=',
        uintptr(next):11);
    curr := curr^.next;
  end;
  writeln('Count =', i);
end;

//
begin
  repeat
    // writeln('Создать новый элемент?');
    // readln(ans);
    // if not(ans in ['д', 'Д', 'Y', 'y']) then
    // break;
    // writeln('Меню: ');
    writeln('1. Добавление элемента в список.');
    writeln('2. Просмотр списка.');
    writeln('7. Выход');
    readln(answer);
    case answer of
      1:
        ;
      2:
        ;
      7:
        ;

    else
        writeln('Неизвестная команда.');
    end;

    curr := nil;
    // curr := new_rec;
    // print_el(curr);
    add(head, Last, count);
    print_el(Last);
    view_list(head);
    readln;
  until false;
  readln;

end.

// procedure view_list(head, last, curr: PSt; count: integer);
// var size_of_element, current: ^TSt;
// begin
// size_of_element := curr - last;
// for i := 0 to count do
// begin
// current := i*size_of_element + head;
//
// end;
// end;
// procedure view_list(head: PSt; count: integer);
// var
// curr: PSt;
// i: integer;
// begin
// if head = nil then
// begin
// writeln('Список пуст.');
// Exit;
// end;
// i := 0;
// writeln(#10, 'View_list: ');
// curr := head;
// while curr <> nil do
// begin
// inc(i);
// writeln('Элемент ', i);
// writeln('Фамилия : ', curr^.f_name:20);
// writeln('Имя     : ', curr^.l_name:20);
// if curr^.next = nil then
// writeln('next = nil')
// else
// writeln('next = ', uintptr(curr^.next));
// writeln('-------------------------');
// curr := curr^.next;
// end;
// end;

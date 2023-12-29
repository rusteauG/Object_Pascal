program Pointer1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
var
  number:integer;
  iptr:^integer;
  y:^word;
  value:integer;
  doubleDeref:integer;
begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  number := 100;
  writeln('Number is : ',number);

  iptr := @number;
  writeln('iptr points to a value: ', iptr^);
  iptr^ :=200;
  writeln('iptr points to value: ',iptr^);
  writeln('Number is : ',number);
  y := addr(iptr);
    writeln('Address of number is: ', Format('%p', [@number]));
    writeln('Address of y is: ', Format('%p', [y]));
      writeln('Address of iptr is: ', Format('%p', [iptr]));
          writeln('Dereference twice through y: ', PWord(y)^); // Double dereference
          value := PWord(y)^;
  writeln('Dereferenced value of number through y: ', value);

  // Dereference the address stored in y to get the address of iptr
  // Then, dereference the address of iptr to get the value of number
  doubleDeref := PInteger(y)^;
  doubleDeref := PInteger(doubleDeref)^;
  writeln('Double dereference through y: ', doubleDeref);

  writeln(y^);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
 readln;
end.

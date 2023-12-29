program Pointer1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
var
  number:integer;
  iptr:^integer;
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

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
 readln;
end.
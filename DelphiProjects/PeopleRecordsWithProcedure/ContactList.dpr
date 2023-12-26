program ContactList;
uses
  System.SysUtils;

{$APPTYPE CONSOLE}

 type
  TPerson = record
    Name:String;
    Age:Integer;
  End;

var
  people: array of TPerson;

procedure displayPerson(const  People: array of TPerson);
var
  i:Byte;
begin
  for i := Low(People) to High(People) do
    Writeln(i+1,': ',People[i].Name, ' - ',People[i].Age);
end;

{$R *.res}
procedure createPeople();
var
  newSize, i: Integer;
  continueAdding: Boolean;
  add:Char;

begin
continueAdding := True;

  repeat

  Write('Enter Number of New Entries: ');
  readln(newSize);
  // Check if resizing is necessary before entering the loop
  if newSize > 0  then
  begin
    SetLength(people, Length(people) + newSize);

    for i := High(people) - newSize + 1 to High(people) do

        begin
    write('Enter Name: ');
    readln(people[i].Name);
    Writeln;
    write('Enter Age: ');
    readln(people[i].Age);
  end;
 end;
   Write('Do you want to add more entries? (Y/N): ');
    readln(add);
     add := UpCase(add);
    if add = 'N' then
    begin
      continueAdding := False;
    end;

  until not continueAdding;
end;


begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    SetLength(people,0);
  createPeople;

  displayPerson(people);
  createPeople;
  displayPerson(people)
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
 Readln;
  end.

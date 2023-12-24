program Project8;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
	Person = record
		Name: String;
		Age: Integer;
		City: String;
	end;
var
	person1:Person;

// Passing a record as a parameter
procedure DisplayPersonInfo(person:Person);
begin
	Writeln('Name: ',person.Name);
	Writeln('Age: ', person.Age);
    Writeln('City: ', person.City);

end;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  person1.Name := 'Alice';
  person1.Age := 30;
  person1.City := 'New York';

  Writeln('Person Details:');
  Writeln('Name: ', person1.Name);
  Writeln('Age: ', person1.Age);
  Writeln('City: ', person1.City);
	DisplayPersonInfo(person1);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
Readln;
end.

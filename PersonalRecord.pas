program PersonalRecord;
uses
	SysUtils;
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
  // Direct initialization of all fields at once:
  //person1 := Person('Alice', 30, 'New York');

  Writeln('Person Details:');
  Writeln('Name: ', person1.Name);
  Writeln('Age: ', person1.Age);
  Writeln('City: ', person1.City);
	DisplayPersonInfo(person1);
	
Readln;	
end.
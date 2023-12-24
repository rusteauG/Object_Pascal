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
  //person1 := Person('Alice', 30, 'New York'); NOt ALlowed for Records
  //Records do not use constructors like classes do. 
  //initialize each field individually
  	person1.Name := 'Neville';
	person1.Age := 44;
	person1.City := 'Mont Fleuri';

	DisplayPersonInfo(person1);
	
Readln;	
end.
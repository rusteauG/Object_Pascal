program PersonalRecord;
uses
	SysUtils;
type
	Person = record
		Name: String;
		Age: Integer;
		City: String; 
	end;

// Passing a record as a parameter
procedure DisplayPersonInfo(person:Person);

begin
	Writeln('Name: ',person.Name);
	Writeln('Age: ', person.Age);
  Writeln('City: ', person.City);
 end;

 //using a record method
type
  Rectangle = record
    Width, Height: Integer;
    function GetArea: Integer;
  end;

function Rectangle.GetArea;
begin
  Result := Width * Height;
end;



var
		person1:Person;
		MyRect:Rectangle;
		Area:Integer;

  // Direct initialization of all fields at once:
  //person1 := Person('Alice', 30, 'New York'); NOt ALlowed for Records
  //Records do not use constructors like classes do. 
  //initialize each field individually

begin
 	person1.Name := 'Neville';
	person1.Age := 44;
	person1.City := 'Mont Fleuri';

	DisplayPersonInfo(person1);
	Writeln;

	// Example of using a record method
  MyRect.Width := 5;
  MyRect.Height := 10;
  Area := MyRect.GetArea;

  Writeln('Rectangle Area: ', Area);

		


//Create a instance of Rectangle Records and call the method inside
Readln;	
end.
program Records;

type
	TCar = record
	 	Model: String;
	 	Year: Integer;
	 	Color:String;
	end;
var
	Car01,Car02: TCar;

begin
	//Create lst car of type TCar
	Car01.Model := 'Chevy';
	Car01.Year := 2016;
	Car01.Color := 'Black';	
	//Create 2nd car of type TCar
	Car02.Model := 'Honda';
	Car02.Year := 2013;
	Car02.Color := 'Blue';

	Writeln('Car01 Model: ',Car01.Model);
	Writeln('Car01 Year: ',Car01.Year);
	Writeln('Car01 Color: ',Car01.Color);

	Writeln('Car02 Model: ',Car02.Model);
	Writeln('Car02 Year: ',Car02.Year);
	Writeln('Car02 Color: ',Car02.Color);
Readln;	
end.
program TestDArray;
var
	numbers: array of Integer;
begin
	SetLength(numbers,5); // Initially set the array to hold 5 elements
  	numbers[0] := 10;
  	numbers[4] := 25;
	Writeln(numbers[0]);     // Access and print the value of the last element

Readln;	 
end.	 
{* Note
Free Pascal, as a modern and more flexible implementation
of Pascal, deviates from this standard and adopts 
zero-based indexing for both static and dynamic arrays,
aligning with the convention used in most other
programming languages.}
program TPersonArray;

type
	TPerson = record
		first_name: String;
		last_name: String;
		age: Integer;
end;

var
	Person: array[1..3] of TPerson;
	i:Byte;

procedure DisplayPerson(const People:array of TPerson);
var
	i: Byte;
begin
	for i:=Low(People) to High(People) do
	begin
		writeln('Fname: ',People[i].first_name,#10,'Lname: ',
		People[i].last_name,#10,'Age: ',People[i].age);
	end;
end;

begin
	for i:=Low(Person) to High(Person) do
	begin
		writeln('Enter First Name: ');
		readln(Person[i].first_name);
		writeln('Enter Last Name: ');
		readln(Person[i].last_name);
		writeln('Enter Age: ');
		readln(Person[i].age);
	end;
	DisplayPerson(Person);
Readln;
end. 

{
##Note##
-----------------------------------------------------------------------------------------------------------------
The DisplayPerson procedure now accepts an array of TPerson records as a parameter.
The loop condition in the DisplayPerson procedure uses Low and High functions to iterate over the array correctly.

When you pass an array to a procedure or function, you're actually passing a reference to the array.

So, in the line:

procedure DisplayPerson(const People: array of TPerson);

The People parameter is a reference to the array of TPerson records. The const keyword indicates that the array
is passed by reference, but the contents of the array cannot be modified within the procedure.
The const modifier ensures that the procedure won't modify the array itself.

Therefore, while you cannot modify the reference (People), you can access and read the elements of the array 
inside the procedure. The actual array is not copied when passing it to the procedure, which is more efficient 
for large arrays.

In Delphi, when you define an array like array[1..3] of TPerson, the array indices start from 1 and end at 3.
The Length function returns the number of elements in an array, but it does not provide the starting index. 
By default, Length assumes an array with indices starting at 0.
Instead, the Low and High functions are used to get the lower and upper bounds of the array, respectively. 
This ensures that you iterate over the correct range of indices for the specific array declaration:


Using Low and High makes your code more robust and ensures that it works correctly with arrays of any starting index.
If you later change the array declaration to start from 0 or any other index, 
your loop will still iterate over the correct range without modification

}

program MainProgram;
uses crt;

var i,j:Shortint;
	friends: array[1..3, 1..5] of Integer;
{
	[1, 2, 3]
	[
		[1,2,3,4,5],
		[1,2,3,4,5],
		[1,2,3,4,5],
	]

	3 Arrays with 5 Values inside them
}

	cellWidth: integer;

begin
  cellWidth := 3; // Adjust the cell width as needed

 	for i := 1 to 3 do
 		begin
 			for j := 1 to 5 do
 				begin
 					friends[i][j] := i*j;
 				end;
 		end;

 	for i := 1 to 3 do
 		begin
 		    writeln('+------+-------+------+------+-----+');

 			for j := 1 to 5 do
 			begin
      			write('|  ', friends[i, j]:cellWidth, ' ');
 			end;
 				writeln('|');	
 		end;	

 	  writeln('+------+-------+------+------+-----+');

end. 
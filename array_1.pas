program MainProgram;
uses crt;
var 
	friends:array[1..4] of string;
	i:Shortint;
begin
	friends[1] := 'Nick';
	friends[2] := 'Jack';
	friends[3] := 'Mike';

	writeln(friends[1]);
	writeln(friends[2]);
	writeln(friends[3]);

	friends[4] := 'Neville';
	writeln(friends[4]);
	
	for i := 1 to length(friends) do
		begin
			write(friends[i],' | ');
		end;
end. 
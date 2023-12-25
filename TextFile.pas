program TextFile;

var
  FileName: String;
  FP:TextFile;
  Output: String;

begin
	//FileName to Relative Path
	FileName :='test.txt';

	//Attach Physical file to our File Pointer FP
	 AssignFile(FP, FileName);
	//Use the FP Poniter to Ref our File now
	//Set operation mode to write only
	Rewrite(FP);
	//Output some text
	repeat
		write('Enter Some text: ');
		readln(Output);
		if Output <> '0' then
			write(FP,Output);	
	until Output = '0';
	closefile(FP);
readln;
end.
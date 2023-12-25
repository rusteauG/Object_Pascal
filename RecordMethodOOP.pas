program RecordMethodOOP;
type
	TRetangle = class
	private
		FWidth,FHeight:Integer;
	public
		property Width:Integer read FWidth write FWidth;
		property Height:Integer read FHeight write FHeight;
		function GetArea: Integer;
end;

function TRetangle.GetArea:Integer;
begin
	Result := FWidth * FHeight;
end;

var
	myRect: TRetangle;
begin
	myRect := TRetangle.Create; // Create an instance
	myRect.Width := 23;
	myRect.Height :=32;
	Writeln('Rectangle Area: ', myRect.GetArea);  // Call the method


readln;	
end.
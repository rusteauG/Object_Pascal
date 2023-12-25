program RecordMethodExample;

type
  TRectangle = record
    Width, Height: Integer;
  end;

function GetArea(var rect:TRectangle): Integer;
begin
  Result := rect.Width * rect.Height;
end;

var
  myRect: TRectangle;

begin
  myRect.Width := 5;
  myRect.Height := 10;
  // Display the result
  Writeln('Rectangle Area: ',GetArea(myRect) );

  Readln;
end.

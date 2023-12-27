program Project13;


{$APPTYPE CONSOLE}

uses
  System.SysUtils;

var
  Filename: String;
  FP: TextFile;
  Line: String;

begin
  try
    Filename := 'test.txt';

    // Check if the file exists
    if not FileExists(Filename) then
    begin
      // Create a new file if it doesn't exist
      AssignFile(FP, Filename);
      Rewrite(FP);
      CloseFile(FP);
      Writeln('File created:', Filename);
    end;

    // Open the file in append mode
    AssignFile(FP, Filename);
    Append(FP);

    repeat
      Write('Enter some Text (type "0" to exit): ');
      Readln(Line);

      if Line <> '0' then
        Writeln(FP, Line); // Use Writeln to add a newline character

    until Line = '0';

    CloseFile(FP);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  Readln;
end.

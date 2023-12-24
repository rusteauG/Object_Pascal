{* Removing type and using dynamic arrays: *}
program selSortDynamic;

uses
  SysUtils;

var
 	arr: array of Integer;  // Dynamic array declaration
 	i:Integer;
 procedure selectionSort(var arr:array of Integer);
 var
 	temp,i,j,min_index: Integer;
 begin
 	  for i := 0 to High(arr) - 2 do
  begin
    min_index := i;
    for j := i + 1 to High(arr) do
    begin
      if arr[min_index] > arr[j] then
      begin
        min_index := j;
      end;
    end;
    // Swap elements
    temp := arr[i];
    arr[i] := arr[min_index];
    arr[min_index] := temp;
  end;
 end;


 begin
 	SetLength(arr,7); // Set array size at runtime
 	arr[0] := 15;
 	arr[1] := 10;
 	arr[2] := 2;
 	arr[3] := 4;
 	arr[4] := 1;
 	arr[5] := 5;
 	arr[6] := 45;
{*  explicitly specifies the index of 
the element to be assigned.*}

  selectionSort(arr);

  // Display the sorted array
  for i := Low(arr) to High(arr) do
  begin
    Write(arr[i], ' ');
  end;
  Writeln;

 Readln; 	
 end.
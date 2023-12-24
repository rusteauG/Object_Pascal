program selSort;
uses
	SysUtils;

const
	size = 7;
type
  ToSort = array[1..size] of Integer;

var
  arr: ToSort =  (15, 28, 17, 12, 18, 9, 6);
  i: Integer;  // Added semicolon here



procedure selectionSort(var arr:ToSort);
var
	temp,i,j,min_index: Integer;
	begin
		for i := 1 to High(arr) - 1 do
		begin
			min_index := i;
		 	for j:=i+1 to High(arr) do
		 		begin
		 			if arr[min_index] > arr[j] then
		 				begin
		 				 	min_index := j;
		 				 end; 
		 		end;
		 	//Swap Elements
		 	temp := arr[i];
		 	arr[i] :=arr[min_index];
		 	arr[min_index] := temp;	
		 end;
end;

begin
	selectionSort(arr);
	//Display the Sorted Array
	for i := Low(arr) to High(arr) do
	begin
		write(arr[i], ' ');
	end;
	writeln;

readln;
end.
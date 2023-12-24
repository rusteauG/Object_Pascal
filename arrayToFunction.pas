program arrayToFunction;
const 
	size =5;
type
	a = array[1..size] of Integer;
var
 	balance: a = (1000,2,3,27,50); 
 	average: real;

 function avg(var arr:a): real;
 
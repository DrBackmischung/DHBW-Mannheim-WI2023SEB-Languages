PLEASE DO ,1 <- #0  
PLEASE DO ,2 <- #0 
PLEASE DO ,3 <- #0 

PLEASE READ OUT "Enter first number: ",1
PLEASE READ IN ,1
PLEASE READ OUT "Enter second number: ",2
PLEASE READ IN ,2

⍝ Add the two numbers
DO (LABEL ADD_NUMBERS) ← COME FROM ,1
PLEASE DO ,3 <- ,1 + ,2  

⍝ Output the result
PLEASE READ OUT "The result is: "
PLEASE READ OUT ,3

PLEASE GIVE UP

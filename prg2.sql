SET SERVEROUTPUT ON

DECLARE
  num1 NUMBER;
  num2 NUMBER;
  num3 NUMBER;
  average NUMBER;
BEGIN
  -- Get the three numbers from the user
  num1 := &Enter_Number1;
  num2 := &Enter_Number2;
  num3 := &Enter_Number3;

  average := (num1 + num2 + num3) / 3;
  
  -- Display the average
  DBMS_OUTPUT.PUT_LINE('Average: ' || average);
END;
/

SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE calculate_factorial(
  num IN NUMBER,
  factorial OUT NUMBER
) IS
BEGIN
  factorial := 1;
  
  FOR i IN 1..num LOOP
    factorial := factorial * i;
  END LOOP;
  
  -- Display the result
  DBMS_OUTPUT.PUT_LINE(factorial);
END;
/
DECLARE
  input_num NUMBER;
  result NUMBER;
BEGIN
  -- Get the number from the user
  input_num := &Enter_Number;
  
  -- Call the stored procedure with the user input
  calculate_factorial(input_num, result);
END;
/

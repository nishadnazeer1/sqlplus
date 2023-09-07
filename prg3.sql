SET SERVEROUTPUT ON

VARIABLE Enter_Number NUMBER

DECLARE
  num NUMBER;
  digit NUMBER;
  sum NUMBER := 0;
  num_str VARCHAR2(100);
BEGIN
  -- Get the number from the user
  num_str := '&Enter_Number';
  num := TO_NUMBER(num_str);
  
  -- Calculate the sum of digits
  FOR i IN 1..LENGTH(num_str) LOOP
    digit := TO_NUMBER(SUBSTR(num_str, i, 1));
    sum := sum + digit;
  END LOOP;
  
  -- Display the sum of digits
  DBMS_OUTPUT.PUT_LINE('Sum of Digits: ' || sum);
END;
/

PRINT Enter_Number

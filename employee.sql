CREATE OR REPLACE FUNCTION MaxSal RETURN number
IS
Maximum number:=0;
BEGIN

select max(salary)into Maximum from EMPLOYEE;
RETURN Maximum;
END;
/
DECLARE m number;
m=MaxSal();
dbms_output.put_line('maximum salary='||m);
end;
/

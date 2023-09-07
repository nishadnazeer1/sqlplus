CREATE OR REPLACE PROCEDURE factorial(n IN NUMBER)
is
v number:=1;
begin
for i in 1..n
loop
v:=v*i;
end loop;
dbms_output.put_line('factorial= '||v);
end;
/
begin
factorial(5);
end;
/
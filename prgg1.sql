create or replace trigger trig_emp after insert on emps1 for each row
begin
insert into trig_logg values('A new row in emps1 table has been inserted');
end;
/

create or replace trigger trig_emp_update after update on emps1 for each row
begin
insert into trig_logg values('A new row in emps1 table has been updated');
end;
/

create or replace trigger trig_emp1_deleted after delete on emps1 for each row
begin
insert into trig_logg values ('A row in emps1 table has been deleted');
end;
/

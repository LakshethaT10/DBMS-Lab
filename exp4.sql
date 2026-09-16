Select * from customers;


SET SERVEROUTPUT ON;
DECLARE
total_rows number(2); BEGIN
UPDATE customers SET salary = salary + 500;
IF sql%notfound THEN
dbms_output.put_line('no customers selected');
ELSIF sql%found THEN total_rows := sql%rowcount;
dbms_output.put_line( total_rows || ' customers selected '); END IF;
END;
/



DECLARE
c_id customers.id%type; c_name customers.name%type; c_addr customers.address%type; CURSOR c_customers IS
SELECT id, name, address FROM customers;
BEGIN OPEN c_customers;
LOOP
FETCH c_customers INTO c_id, c_name, c_addr;
EXIT WHEN c_customers%notfound;
dbms_output.put_line(c_id || '' || c_name || '' || c_addr); END LOOP;
CLOSE c_customers;
END;
/

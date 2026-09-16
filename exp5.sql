SET SERVEROUTPUT ON;
CREATE OR REPACE PROCEDURE Sum_Proc(a IN number, b IN number) IS c number; BEGIN
c := a + b;
dbms_output.put_line('Sum of two nos = '|| c);
 END Sum_Proc;


Procedure created.
For calling the procedure created following code will be executed: SET SERVEROUTPUT ON;
DECLARE
x number; y number;
BEGIN
x := &x;
y := &y; Sum _Proc(x,y);


SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION Sum_Func (a IN number, b IN number) RETURN number IS c number;
BEGIN
c := a + b; RETURN c;
END Sum_Func;


SET SERVEROUTPUT ON;
DECLARE
no1 number; no2 number; result number;
BEGIN
no1 := &no1; no2 := &no2;
result := Sum(no1,no2); dbms_output.put_line(‘Sum of two nos=’ ||result);
END;
/



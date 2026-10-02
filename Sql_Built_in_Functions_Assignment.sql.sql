-- select upper('data') from dual;
-- select first_name, upper(first_name),last_name from hr.employees;
-- select first_name, upper(first_name) from hr.employees where last_name = 'Ande';
-- select lower('ORACLE') FROM DUAL;
-- SELECT LOWER(last_name), last_name from hr.employees;
-- select initcap('oracle class') from dual;
-- select first_name, initcap(first_name) from hr.employees;
-- select last_name, initcap(last_name) from hr.employees;
-- select first_name ,length(first_name) from hr.employees;
-- select first_name, substr(first_name,2,3) from hr.employees;
-- select first_name, substr(first_name,2,3) from hr.employees where last_name = 'Ande';
-- select substr('oracle sql class', 3, 7) from dual;
-- select substr('oracle sql class', 3) from dual;
-- select substr('oracle sql class', -3, 2) from dual;
-- select substr('oracle sql class', -5) from dual;
-- select concat('Hello World', 'Program') from dual;
-- select concat('Hello World',' ', 'Program') from dual;
-- select first_name, last_name, concat(first_name,' ', last_name) from hr.employees;
-- select first_name, last_name, first_name||' '|| last_name from hr.employees;
-- select REPLACE('Hello world','world','class') from dual;
-- select first_name, replace(first_name,first_name,last_name) from hr.employees;
-- select trim('  Sql class   ') from dual;
-- select ltrim ('    sql class  ab ') from dual; 
-- select ltrim ('***sql class', '*') from dual; 
-- select rtrim('  sql class   ') from dual;
-- select lpad(salary,7,0) from hr.employees;
-- select rpad(salary,9,5) from hr.employees;
-- select rpad(salary,9,'*') from hr.employees;
-- select ascii('A') from dual;
-- select first_name, ascii(first_name) from hr.employees;
-- select CHR(65) from dual;
-- SELECT CHR(90) FROM DUAL;

-- SELECT CEIL(10.4) FROM DUAL;
-- SELECT CEIL(11.8) FROM DUAL;
-- SELECT SALARY,CEIL(SALARY) FROM HR.EMPLOYEES;
-- SELECT FLOOR(10.7) FROM DUAL;
-- SELECT FLOOR(10.2) FROM DUAL;
-- SELECT MOD(10,3) FROM DUAL;
-- SELECT MOD(9,30) FROM DUAL;
-- SELECT ABS(-10.3) FROM DUAL;

-- SELECT POWER(10,3) FROM DUAL;
-- SELECT SQRT(4) FROM DUAL;




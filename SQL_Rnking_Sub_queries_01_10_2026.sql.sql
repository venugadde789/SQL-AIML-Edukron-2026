-- Example 1 – Assign Row Number Based on Highest Salary
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     ROW_NUMBER() OVER (
--         ORDER BY salary DESC
--     ) AS row_num

-- FROM hr.employees;

-- Example 2 – Row Number Based on Lowest Salary
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     ROW_NUMBER() OVER (ORDER BY SALARY ASC) AS RANK_LOWEST_SALARY
--     FROM HR.EMPLOYEES;

-- Example 3 – Department-Wise Row Number
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,
--     ROW_NUMBER()OVER(PARTITION BY department_id ORDER BY SALARY DESC) AS RANK_DEPT_NO
--     FROM HR.EMPLOYEES;

--     SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,

--     ROW_NUMBER() OVER (
--         PARTITION BY department_id
--         ORDER BY salary DESC
--     ) AS row_num

-- FROM hr.employees;

-- Example 4 – Row Number Based on Hire Date
--     SELECT
--     employee_id,
--     first_name,
--     hire_date,
--     ROW_NUMBER() OVER (ORDER BY HIRE_DATE ASC) AS ROW_NUM_HIRE
--     FROM HR.EMPLOYEES;


-- SELECT
--     employee_id,
--     first_name,
--     hire_date,

--     ROW_NUMBER() OVER (
--         ORDER BY hire_date ASC
--     ) AS joining_order

-- FROM hr.employees;

-- Example 5 – Latest Employee in Each Department
-- SELECT *
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         department_id,
--         hire_date,

--         ROW_NUMBER() OVER (
--             PARTITION BY department_id
--             ORDER BY hire_date DESC
--         ) AS rn

--     FROM hr.employees
-- )
-- WHERE rn = 1;

-- Example 6 – Top 3 Highest Paid Employees in Each Department
-- SELECT *
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         department_id,
--         salary,

--         ROW_NUMBER() OVER (
--             PARTITION BY department_id
--             ORDER BY salary DESC
--         ) AS rn

--     FROM hr.employees
-- )
-- WHERE rn <= 3;

-- Example 7 – Rank Employees Based on Salary
-- SELECT
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     RANK() OVER (
--         ORDER BY salary DESC
--     ) AS salary_rank

-- FROM hr.employees;

-- Example 8 – Rank Employees from Lowest Salary
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     RANK() OVER (
--         ORDER BY salary ASC
--     ) AS salary_rank

-- FROM hr.employees;

-- Example 9 – Department-Wise Salary Rank
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,

--     RANK() OVER (
--         PARTITION BY department_id
--         ORDER BY salary DESC
--     ) AS department_rank

-- FROM hr.employees;
-- Example 10 – Rank Employees Based on Hire Date
-- SELECT
--     employee_id,
--     first_name,
--     hire_date,

--     RANK() OVER (
--         ORDER BY hire_date ASC
--     ) AS joining_rank

-- FROM hr.employees;

-- Example 11 – Highest Paid Employees in Every Department
-- SELECT *
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         department_id,
--         salary,

--         RANK() OVER (
--             PARTITION BY department_id
--             ORDER BY salary DESC
--         ) AS salary_rank

--     FROM hr.employees
-- )
-- WHERE salary_rank = 1;

-- Example 12 – Top 3 Salary Ranks in Every Department
-- SELECT *
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         department_id,
--         salary,

--         RANK() OVER (
--             PARTITION BY department_id
--             ORDER BY salary DESC
--         ) AS salary_rank

--     FROM hr.employees
-- )
-- WHERE salary_rank <= 3;
-- Example 13 – Dense Rank Based on Salary
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     DENSE_RANK() OVER (
--         ORDER BY salary DESC
--     ) AS salary_rank

-- FROM hr.employees;

-- Example 14 – Dense Rank from Lowest Salary
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     DENSE_RANK() OVER (
--         ORDER BY salary ASC
--     ) AS salary_rank

-- FROM hr.employees;

-- Example 15 – Department-Wise Dense Rank
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,

--     DENSE_RANK() OVER (
--         PARTITION BY department_id
--         ORDER BY salary DESC
--     ) AS department_rank

-- FROM hr.employees;

-- Example 16 – Find Second Highest Salary
-- SELECT *
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         salary,

--         DENSE_RANK() OVER (
--             ORDER BY salary DESC
--         ) AS salary_rank

--     FROM hr.employees
-- )
-- WHERE salary_rank = 2;

-- Example 17 – Third Highest Salary
-- SELECT *
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         salary,
--         DENSE_RANK() OVER (ORDER BY SALARY DESC) AS salary_rank
--         FROM HR.Employees
-- )
-- WHERE salary_rank = 3;
-- Example 18 – Second Highest Salary in Every Department
-- SELECT *
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         department_id,
--         salary,

--         DENSE_RANK() OVER (
--             PARTITION BY department_id
--             ORDER BY salary DESC
--         ) AS salary_rank

--     FROM hr.employees
-- )
-- WHERE salary_rank = 2;

-- Example 19 – Display Highest Salary Against Every Employee
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     FIRST_VALUE(salary) OVER (
--         ORDER BY salary DESC
--     ) AS highest_salary

-- FROM hr.employees;


-- Example 20 – Display Lowest Salary Using FIRST_VALUE
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     FIRST_VALUE(salary) OVER (
--         ORDER BY salary ASC
--     ) AS lowest_salary

-- FROM hr.employees;

-- Example 21 – Highest Salary in Each Department
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,

--     FIRST_VALUE(salary) OVER (
--         PARTITION BY department_id
--         ORDER BY salary DESC
--     ) AS department_highest_salary

-- FROM hr.employees;

-- Example 22 – Name of Highest Paid Employee in Each Department
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,

--     FIRST_VALUE(first_name) OVER (
--         PARTITION BY department_id
--         ORDER BY salary DESC
--     ) AS highest_paid_employee

-- FROM hr.employees;

-- Example 23 – Earliest Joining Date in Each Department
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     hire_date,

--     FIRST_VALUE(hire_date) OVER (
--         PARTITION BY department_id
--         ORDER BY hire_date DESC
--     ) AS earliest_hire_date

-- FROM hr.employees;

-- Example 24 – First Employee Who Joined Each Department
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     hire_date,

--     FIRST_VALUE(first_name) OVER (
--         PARTITION BY department_id
--         ORDER BY hire_date ASC
--     ) AS first_joined_employee

-- FROM hr.employees;

-- Example 25 – Display Lowest Salary Against Every Employee
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     LAST_VALUE(salary) OVER (
--         ORDER BY salary desc
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING
--     ) AS lowest_salary

-- FROM hr.employees;

-- Example 26 – Highest Salary Using LAST_VALUE
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     LAST_VALUE(salary) OVER (
--         ORDER BY salary ASC
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING
--     ) AS highest_salary

-- FROM hr.employees;

-- Example 27 – Lowest Salary in Each Department
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,

--     LAST_VALUE(salary) OVER (
--         PARTITION BY department_id
--         ORDER BY salary DESC
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING
--     ) AS department_lowest_salary

-- FROM hr.employees;

-- Example 28 – Lowest Paid Employee Name in Each Department
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,

--     LAST_VALUE(first_name) OVER (
--         PARTITION BY department_id
--         ORDER BY salary DESC
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING
--     ) AS lowest_paid_employee

-- FROM hr.employees;

-- Example 29 – Latest Hire Date in Each Department
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     hire_date,

--     LAST_VALUE(hire_date) OVER (
--         PARTITION BY department_id
--         ORDER BY hire_date ASC
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING
--     ) AS latest_hire_date

-- FROM hr.employees;

-- EXAMPLE 30 – Compare Employee Salary with HIGHEST
                                          AND LOWEST DEPARTMENT SALARY
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,

--     FIRST_VALUE(salary) OVER (
--         PARTITION BY department_id
--         ORDER BY salary DESC
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING
--     ) AS highest_department_salary,

--     LAST_VALUE(salary) OVER (
--         PARTITION BY department_id
--         ORDER BY salary DESC
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING
--     ) AS lowest_department_salary

-- FROM hr.employees
-- ORDER BY department_id, salary DESC;

-- 1. Running Total – First Row to Current Row
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- SUM() is used as an analytic function.
--     -- ORDER BY employee_id decides the sequence of employees.
--     -- UNBOUNDED PRECEDING means start from the first row.
--     -- CURRENT ROW means stop at the current employee.
--     -- Therefore, this calculates a cumulative/running salary total.
--     SUM(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND CURRENT ROW
--     ) AS running_total

-- FROM hr.employees

-- -- Display employees in the same order used for calculation.
-- ORDER BY employee_id;

-- 2. Department-Wise Running Total
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,

--     -- PARTITION BY creates a separate window for each department.
--     -- Running total restarts when department_id changes.
--     -- Employees inside each department are ordered by employee_id.
--     -- Calculation starts from the first employee in the department.
--     -- It ends at the current employee.
--     SUM(salary) OVER (
--         PARTITION BY department_id
--         ORDER BY employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND CURRENT ROW
--     ) AS department_running_total

-- FROM hr.employees

-- ORDER BY department_id, employee_id;

-- 3. Running Average Salary
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- AVG() calculates the average salary.
--     -- Window starts from the first employee.
--     -- Window grows until the current employee.
--     -- Therefore, this gives a running average.
--     AVG(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND CURRENT ROW
--     ) AS running_average

-- FROM hr.employees

-- ORDER BY employee_id;

-- 4. Maximum Salary Seen So Far
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- MAX() finds the highest salary.
--     -- Window starts from the first employee.
--     -- Window ends at the current employee.
--     -- Result shows the highest salary encountered so far.
--     MAX(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND CURRENT ROW
--     ) AS maximum_salary_so_far

-- FROM hr.employees

-- ORDER BY employee_id;

-- 5. Minimum Salary Seen So Far
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- MIN() finds the smallest salary.
--     -- Start from the first employee.
--     -- Continue until the current employee.
--     -- This gives the minimum salary seen so far.
--     MIN(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND CURRENT ROW
--     ) AS minimum_salary_so_far

-- FROM hr.employees

-- ORDER BY employee_id;

-- 6. Running Employee Count
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- COUNT(*) counts rows.
--     -- First employee sees 1 row.
--     -- Second employee sees 2 rows.
--     -- Third employee sees 3 rows.
--     -- Therefore, this creates a running count.
--     COUNT(*) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND CURRENT ROW
--     ) AS running_employee_count

-- FROM hr.employees

-- ORDER BY employee_id;

-- 7. Complete Company Salary Total
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- UNBOUNDED PRECEDING = first row.
--     -- UNBOUNDED FOLLOWING = last row.
--     -- Therefore, the complete table is considered.
--     -- Every employee receives the same company salary total.
--     SUM(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING
--     ) AS company_total_salary

-- FROM hr.employees

-- ORDER BY employee_id;

-- 8. Complete Department Salary Total
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,

--     -- Create a separate window for every department.
--     -- Start from the first employee of the department.
--     -- Continue until the last employee of the department.
--     -- Therefore, every employee sees the total salary
--     -- of their department.
--     SUM(salary) OVER (
--         PARTITION BY department_id
--         ORDER BY employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING
--     ) AS department_total_salary

-- FROM hr.employees

-- ORDER BY department_id, employee_id;

-- 9. Complete Department Average Salary
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,

--     -- Employees are separated department-wise.
--     -- Complete department is included in the window.
--     -- AVG() calculates the average salary of that department.
--     AVG(salary) OVER (
--         PARTITION BY department_id
--         ORDER BY employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING
--     ) AS department_average_salary

-- FROM hr.employees

-- ORDER BY department_id, employee_id;

-- 10. Reverse Running Total
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- CURRENT ROW means start from the current employee.
--     -- UNBOUNDED FOLLOWING means continue until the last employee.
--     -- This is the opposite of a normal running total.
--     SUM(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN CURRENT ROW
--         AND UNBOUNDED FOLLOWING
--     ) AS reverse_running_total

-- FROM hr.employees

-- ORDER BY employee_id;

-- 11. Reverse Running Average
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- Start from current employee.
--     -- Continue until last employee.
--     -- Calculate average salary of all remaining employees.
--     AVG(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN CURRENT ROW
--         AND UNBOUNDED FOLLOWING
--     ) AS reverse_running_average

-- FROM hr.employees

-- ORDER BY employee_id;

-- 12. Previous Row + Current Row
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- 1 PRECEDING means one row before the current row.
--     -- CURRENT ROW means include the current row.
--     -- Maximum two rows participate.
--     SUM(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN 1 PRECEDING
--         AND CURRENT ROW
--     ) AS previous_current_total

-- FROM hr.employees

-- ORDER BY employee_id;

-- 13. Previous Two Rows + Current Row
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- 2 PRECEDING means start two rows before current row.
--     -- Include:
--     --     2nd previous employee
--     --     1st previous employee
--     --     current employee
--     -- Maximum window size = 3 rows.
--     SUM(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN 2 PRECEDING
--         AND CURRENT ROW
--     ) AS three_row_total

-- FROM hr.employees

-- ORDER BY employee_id;

-- 14. Previous Three Rows + Current Row Average
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- Start three rows before the current employee.
--     -- End at current employee.
--     -- Maximum four employees participate.
--     AVG(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN 3 PRECEDING
--         AND CURRENT ROW
--     ) AS four_row_moving_average

-- FROM hr.employees

-- ORDER BY employee_id;

-- 15. Previous + Current + Next Row
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- Start one row before current row.
--     -- End one row after current row.
--     -- Maximum three employees participate.
--     SUM(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN 1 PRECEDING
--         AND 1 FOLLOWING
--     ) AS three_row_moving_total

-- FROM hr.employees

-- ORDER BY employee_id;

-- 16. Three-Row Moving Average
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- Previous employee
--     -- +
--     -- Current employee
--     -- +
--     -- Next employee
--     --
--     -- AVG() calculates the moving average.
--     AVG(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN 1 PRECEDING
--         AND 1 FOLLOWING
--     ) AS three_row_moving_average

-- FROM hr.employees

-- ORDER BY employee_id;

-- 17. Two Previous + Current + Two Following
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- Start two rows before current employee.
--     -- End two rows after current employee.
--     -- Maximum window size = 5 employees.
--     SUM(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN 2 PRECEDING
--         AND 2 FOLLOWING
--     ) AS five_row_moving_total

-- FROM hr.employees

-- ORDER BY employee_id;


-- 19. Current Row + Next Row
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- Start from current employee.
--     -- Include one employee after current employee.
--     -- Maximum two employees participate.
--     SUM(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN CURRENT ROW
--         AND 1 FOLLOWING
--     ) AS current_next_total

-- FROM hr.employees

-- ORDER BY employee_id;

-- 20. Current Row + Next Two Rows
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- Start at current employee.
--     -- Include next two employees.
--     -- Maximum window size = 3 employees.
--     SUM(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN CURRENT ROW
--         AND 2 FOLLOWING
--     ) AS current_next_two_total

-- FROM hr.employees

-- ORDER BY employee_id;

-- 21. Current Row + Next Three Rows Average
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- Start at current employee.
--     -- Include maximum next three employees.
--     -- Maximum window size = 4 rows.
--     AVG(salary) OVER (
--         ORDER BY employee_id
--         ROWS BETWEEN CURRENT ROW
--         AND 3 FOLLOWING
--     ) AS forward_moving_average

-- FROM hr.employees

-- ORDER BY employee_id;

-- 
-- 22. Department-Wise Moving Average
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,

--     -- PARTITION BY prevents the window
--     -- from crossing department boundaries.
--     --
--     -- For each employee calculate average of:
--     -- previous employee
--     -- current employee
--     -- next employee
--     AVG(salary) OVER (
--         PARTITION BY department_id
--         ORDER BY employee_id
--         ROWS BETWEEN 1 PRECEDING
--         AND 1 FOLLOWING
--     ) AS department_moving_average

-- FROM hr.employees

-- ORDER BY department_id, employee_id;

-- 23. Department Running Salary Based on Hire Date
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     hire_date,
--     salary,

--     -- Create separate window for every department.
--     -- Arrange employees according to joining date.
--     -- employee_id is used as a tie-breaker.
--     --
--     -- Start from earliest employee.
--     -- Continue until current employee.
--     SUM(salary) OVER (
--         PARTITION BY department_id
--         ORDER BY hire_date, employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND CURRENT ROW
--     ) AS salary_running_total

-- FROM hr.employees

-- ORDER BY department_id, hire_date, employee_id;

-- 24. Highest Salary Seen So Far Based on Hire Date
-- SELECT
--     employee_id,
--     first_name,
--     hire_date,
--     salary,

--     -- Arrange employees based on joining date.
--     -- Start from earliest employee.
--     -- Continue until current employee.
--     --
--     -- MAX() returns the highest salary
--     -- encountered up to that employee.
--     MAX(salary) OVER (
--         ORDER BY hire_date, employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND CURRENT ROW
--     ) AS highest_salary_so_far

-- FROM hr.employees

-- ORDER BY hire_date, employee_id;
-- 25. FIRST_VALUE – Highest Salary
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- salary DESC places highest salary first.
--     --
--     -- Complete window:
--     -- first row → last row.
--     --
--     -- FIRST_VALUE() therefore returns
--     -- the highest salary.
--     FIRST_VALUE(salary) OVER (
--         ORDER BY salary DESC, employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING
--     ) AS highest_salary

-- FROM hr.employees

-- ORDER BY salary DESC, employee_id;

-- 26. LAST_VALUE – Lowest Salary
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- salary DESC places:
--     --
--     -- Highest salary → first
--     -- Lowest salary  → last
--     --
--     -- UNBOUNDED FOLLOWING is important because
--     -- we want Oracle to examine the entire window.
--     --
--     -- LAST_VALUE() therefore returns
--     -- the lowest salary.
--     LAST_VALUE(salary) OVER (
--         ORDER BY salary DESC, employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING
--     ) AS lowest_salary

-- FROM hr.employees

-- ORDER BY salary DESC, employee_id;

-- 27. Highest and Lowest Salary in Each Department
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,

--     -- =============================================
--     -- FIRST_VALUE
--     -- =============================================
--     -- Divide employees department-wise.
--     -- Sort salary highest to lowest.
--     -- First salary = highest department salary.
--     FIRST_VALUE(salary) OVER (
--         PARTITION BY department_id
--         ORDER BY salary DESC, employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING
--     ) AS highest_department_salary,


--     -- =============================================
--     -- LAST_VALUE
--     -- =============================================
--     -- Same sorting:
--     --
--     -- Highest → first
--     -- Lowest  → last
--     --
--     -- Therefore LAST_VALUE returns
--     -- lowest department salary.
--     LAST_VALUE(salary) OVER (
--         PARTITION BY department_id
--         ORDER BY salary DESC, employee_id
--         ROWS BETWEEN UNBOUNDED PRECEDING
--         AND UNBOUNDED FOLLOWING) as lowest_department_salary
-- from hr.employees;

-- Example 1 – Employees Earning Above Average Salary
-- SELECT
--     employee_id,
--     first_name,
--     last_name,
--     salary
-- FROM hr.employees
-- WHERE salary >
-- (
--     -- Inner query calculates one value:
--     -- average salary of all employees.
--     SELECT AVG(salary)
--     FROM hr.employees
-- )
-- ORDER BY salary DESC;

-- Example 2 – Employees Earning Below Average Salary

-- SELECT
--     employee_id,
--     first_name,
--     salary
-- FROM hr.employees
-- WHERE salary <
-- (
--     -- Calculate company average salary.
--     SELECT AVG(salary)
--     FROM hr.employees
-- )
-- ORDER BY salary;

-- Example 3 – Employee with Maximum Salary

-- SELECT
--     employee_id,
--     first_name,
--     last_name,
--     salary
-- FROM hr.employees
-- WHERE salary =
-- (
--     -- MAX returns one value.
--     SELECT MAX(salary)
--     FROM hr.employees
-- );

-- Example 4 – Employee with Minimum Salary
-- SELECT
--     employee_id,
--     first_name,
--     salary
-- FROM hr.employees
-- WHERE salary =
-- (
--     -- Find minimum salary first.
--     SELECT MIN(salary)
--     FROM hr.employees
-- );

-- Example 5 – Employees Earning More Than Employee 103
-- SELECT
--     employee_id,
--     first_name,
--     salary
-- FROM hr.employees
-- WHERE salary >
-- (
--     -- Find salary of employee 103.
--     SELECT salary
--     FROM hr.employees
--     WHERE employee_id = 103
-- )
-- ORDER BY salary DESC;

-- Example 6 – Employees Hired After Employee 101
-- SELECT
--     employee_id,
--     first_name,
--     hire_date
-- FROM hr.employees
-- WHERE hire_date >
-- (
--     -- Find employee 101's joining date.
--     SELECT hire_date
--     FROM hr.employees
--     WHERE employee_id = 101
-- )
-- ORDER BY hire_date;

-- Example 7 – Employees in the Same Department as Employee 103
-- SELECT
--     employee_id,
--     first_name,
--     department_id
-- FROM hr.employees
-- WHERE department_id =
-- (
--     -- Find department of employee 103.
--     SELECT department_id
--     FROM hr.employees
--     WHERE employee_id = 103
-- )
-- AND employee_id <> 103;

-- Example 8 – Employees with Salary Equal to Company Average
-- SELECT
--     employee_id,
--     first_name,
--     salary
-- FROM hr.employees
-- WHERE salary =
-- (
--     SELECT AVG(salary)
--     FROM hr.employees
-- );

-- Example 9 – Employees Working in Sales Departments
-- SELECT
--     employee_id,
--     first_name,
--     department_id
-- FROM hr.employees
-- WHERE department_id IN
-- (
--     -- This subquery may return multiple department IDs.
--     SELECT department_id
--     FROM hr.departments
--     WHERE department_name LIKE '%Sales%'
-- );

-- Example 10 – Employees in Departments Located at Location 1700
-- SELECT
--     employee_id,
--     first_name,
--     department_id
-- FROM hr.employees
-- WHERE department_id IN
-- (
--     -- Find all departments at location 1700.
--     SELECT department_id
--     FROM hr.departments
--     WHERE location_id = 1700
-- );

-- Example 11 – Employees Not Working in Location 1700 Departments
-- SELECT
--     employee_id,
--     first_name,
--     department_id
-- FROM hr.employees
-- WHERE department_id NOT IN
-- (
--     SELECT department_id
--     FROM hr.departments
--     WHERE location_id = 1700
-- );

-- Example 12 – Salary Greater Than ANY Employee in Department 50
-- SELECT
--     employee_id,
--     first_name,
--     salary
-- FROM hr.employees
-- WHERE salary > ANY
-- (
--     -- Return all salaries from department 50.
--     SELECT salary
--     FROM hr.employees
--     WHERE department_id = 50
-- )
-- ORDER BY salary;

-- Example 13 – Salary Less Than ANY Department 50 Salary
-- SELECT
--     employee_id,
--     first_name,
--     salary
-- FROM hr.employees
-- WHERE salary < ANY
-- (
--     SELECT salary
--     FROM hr.employees
--     WHERE department_id = 50
-- );

-- Example 14 – Salary Greater Than ALL Department 50 Employees
-- SELECT
--     employee_id,
--     first_name,
--     salary
-- FROM hr.employees
-- WHERE salary > ALL
-- (
--     -- Get every salary from department 50.
--     SELECT salary
--     FROM hr.employees
--     WHERE department_id = 50
-- )
-- ORDER BY salary DESC;

-- Example 15 – Salary Less Than ALL Department 50 Salaries
-- SELECT
--     employee_id,
--     first_name,
--     salary
-- FROM hr.employees
-- WHERE salary < ALL
-- (
--     SELECT salary
--     FROM hr.employees
--     WHERE department_id = 50
-- );
-- Example 16 – Display Company Average Salary
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- Scalar subquery returns one value.
--     -- The same average is displayed for every employee.
--     (
--         SELECT AVG(salary)
--         FROM hr.employees
--     ) AS company_average

-- FROM hr.employees;

-- Example 17 – Compare Employee Salary with Company Average
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- Company-wide average salary.
--     (
--         SELECT AVG(salary)
--         FROM hr.employees
--     ) AS company_average,

--     -- Calculate difference between employee salary
--     -- and company average.
--     salary -
--     (
--         SELECT AVG(salary)
--         FROM hr.employees
--     ) AS difference_from_average

-- FROM hr.employees;

-- Example 18 – Display Maximum Salary for Every Employee
-- SELECT
--     employee_id,
--     first_name,
--     salary,

--     -- Scalar subquery returns company maximum salary.
--     (
--         SELECT MAX(salary)
--         FROM hr.employees
--     ) AS company_max_salary

-- FROM hr.employees;

-- Example 19 – Departments Whose Average Salary Is Above Company Average
-- SELECT
--     department_id,
--     AVG(salary) AS department_average
-- FROM hr.employees
-- WHERE department_id IS NOT NULL
-- GROUP BY department_id

-- HAVING AVG(salary) >
-- (
--     -- Calculate company-wide average salary.
--     SELECT AVG(salary)
--     FROM hr.employees
-- )

-- ORDER BY department_average DESC;

-- Example 20 – Departments with More Employees Than Department 90
-- SELECT
--     department_id,
--     COUNT(*) AS employee_count
-- FROM hr.employees
-- WHERE department_id IS NOT NULL
-- GROUP BY department_id

-- HAVING COUNT(*) >
-- (
--     -- Count employees in department 90.
--     SELECT COUNT(*)
--     FROM hr.employees
--     WHERE department_id = 90
-- )

-- ORDER BY employee_count DESC;

-- Example 21 – Filter Department Average Using Inline View
-- SELECT
--     department_id,
--     avg_salary
-- FROM
-- (
--     -- Inner query creates a temporary result.
--     SELECT
--         department_id,
--         AVG(salary) AS avg_salary
--     FROM hr.employees
--     WHERE department_id IS NOT NULL
--     GROUP BY department_id
-- )
-- WHERE avg_salary > 8000
-- ORDER BY avg_salary DESC;

-- Example 22 – Top 5 Highest Paid Employees
-- SELECT
--     employee_id,
--     first_name,
--     salary
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         salary
--     FROM hr.employees
--     ORDER BY salary DESC
-- )
-- WHERE ROWNUM <= 5;

-- Example 23 – Top 3 Employees Per Department
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         department_id,
--         salary,

--         -- Rank employees inside every department.
--         ROW_NUMBER() OVER (
--             PARTITION BY department_id
--             ORDER BY salary DESC
--         ) AS rn

--     FROM hr.employees
-- )
-- WHERE rn <= 3
-- ORDER BY department_id, salary DESC;

-- Example 24 – Second Highest Salary Using Inline View
-- SELECT
--     employee_id,
--     first_name,
--     salary
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         salary,

--         -- DENSE_RANK gives same rank for equal salaries
--         -- without skipping rank numbers.
--         DENSE_RANK() OVER (
--             ORDER BY salary DESC
--         ) AS salary_rank

--     FROM hr.employees
-- )
-- WHERE salary_rank = 2;

-- Example 25 – Third Highest Salary
-- SELECT
--     employee_id,
--     first_name,
--     salary
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         salary,

--         DENSE_RANK() OVER (
--             ORDER BY salary DESC
--         ) AS salary_rank

--     FROM hr.employees
-- )
-- WHERE salary_rank = 3;

-- Example 26 – Employees Earning Above Their Department Average
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary
-- FROM hr.employees e
-- WHERE salary >
-- (
--     -- Calculate average salary for the department
--     -- of the CURRENT employee from outer query.
--     SELECT AVG(e2.salary)
--     FROM hr.employees e2
--     WHERE e2.department_id = e.department_id
-- )
-- ORDER BY department_id, salary DESC;

-- Example 27 – Employees Earning Below Their Department Average
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary
-- FROM hr.employees e
-- WHERE salary <
-- (
--     -- Calculate department average for current employee.
--     SELECT AVG(e2.salary)
--     FROM hr.employees e2
--     WHERE e2.department_id = e.department_id
-- )
-- ORDER BY department_id, salary;

-- Example 28 – Highest Paid Employee in Each Department
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary
-- FROM hr.employees e
-- WHERE salary =
-- (
--     -- Find maximum salary in current employee's department.
--     SELECT MAX(e2.salary)
--     FROM hr.employees e2
--     WHERE e2.department_id = e.department_id
-- )
-- ORDER BY department_id;

-- Example 29 – Lowest Paid Employee in Each Department
-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary
-- FROM hr.employees e
-- WHERE salary =
-- (
--     SELECT MIN(e2.salary)
--     FROM hr.employees e2
--     WHERE e2.department_id = e.department_id
-- )
-- ORDER BY department_id;

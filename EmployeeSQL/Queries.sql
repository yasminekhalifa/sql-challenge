-- Query 1
SELECT e."employee_ID", e."First_Name", e."Last_Name", e."sex", s."salary"
FROM public.employee as e
INNER JOIN public.salaries as s
ON (e."employee_ID" = s."employee_ID");

-- Query 2
SELECT "First_Name", "Last_Name", "Hire_date"
FROM public.employee
Where EXTRACT(year FROM "Hire_date") = 1986;

-- Query 3
SELECT e."employee_ID", e."Last_Name", e."First_Name", d."department_ID", f."department_Name"
FROM employee as e 
JOIN dept_manger as d 
on e."employee_ID" = d."employee_ID"
join department as f
on d."department_ID" = f."department_ID";

-- Query 4
SELECT e."employee_ID", e."Last_Name", e."First_Name", f."department_Name"
FROM employee as e 
JOIN department_employee as d 
on e."employee_ID" = d."employee_ID"
join department as f
on d."department_ID" = f."department_ID";

-- Query 5
SELECT "First_Name", "Last_Name", "sex"
FROM public.employee as e 
Where e."First_Name" = 'Hercules'
and e."Last_Name" LIKE 'B%';

-- Query 6
SELECT e."employee_ID", e."Last_Name", e."First_Name", y."department_Name"
FROM employee as e
LEFT JOIN department_employee as d
ON d."employee_ID" = e."employee_ID"
LEFT JOIN department as y
ON d."department_ID" = y."department_ID"
where y."department_Name" = 'Sales';

-- Query 7
SELECT e."employee_ID", e."Last_Name", e."First_Name", y."department_Name"
FROM employee as e
LEFT JOIN department_employee as d
ON d."employee_ID" = e."employee_ID"
LEFT JOIN department as y
ON d."department_ID" = y."department_ID"
where y."department_Name" = 'Sales' or y."department_Name" = 'Development';

-- Query 8
SELECT "Last_Name", count(*) 
FROM employee
group by "Last_Name"
ORDER BY "count" DESC;














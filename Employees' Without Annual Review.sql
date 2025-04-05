Return all employees who have never had an annual review. Your output should include the employee's 
first name, last name, hiring date, and termination date. List the most recently hired employees first.

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    e.termination_date
FROM uber_employees e
LEFT JOIN uber_annual_review r ON e.id = r.emp_id
WHERE r.emp_id IS NULL
ORDER BY e.hire_date DESC;

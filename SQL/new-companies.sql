SELECT c.company_code, c.founder,
             (SELECT COUNT( DISTINCT lead_manager_code) FROM lead_manager AS lm WHERE  c.company_code = lm.company_code),
             (SELECT COUNT( DISTINCT senior_manager_code) FROM senior_manager AS sm WHERE  c.company_code = sm.company_code),
             (SELECT COUNT( DISTINCT manager_code) FROM manager AS m WHERE  c.company_code = m.company_code),
                  (SELECT COUNT( DISTINCT employee_code) FROM employee AS e WHERE  c.company_code = e.company_code)
FROM company AS c
ORDER BY company_code



-- SUBQUERY
-- QUERY INSIDE ANOTHER QUERY

-- WHEN TO USE A SUBQUERY?
	-- PSEUDO TABLE BANANA HO N THEN USE THAT TABLE TO GET INFO BASICALLY

-- SUBQUERIES VS JOINS
		-- WHEN TO USE WHAT
			-- JAB JO DUSRA TABLE USE KARNA HAI USMAI MANIPULATIONS LAANI HAI TOH USE SUBQUERY
			-- SUBQUERY MAI SAB INDEPENDENTLY BHI EXECUTE HO SAKT AHIA
		-- IF HAVE TO GET VIEW OF MULTIPLE TABLES UUSING A KEY CAN BE DONE ONLY USING JOINS
        
-- SUBQUERY NEEDS TO BE PLACED INSIDE PARANTHESES
-- MUST BE INDEPENDENT 

-- dont write correlated subqueries cz time zyada

-- 4 TYPES OF SUBQUERIES
	-- WITH
    
        -- COMMON TABLE EXPRESSION
    -- PRINT NAME, DEPARTMENT AND TOTAL HOURS
    
WITH T1 AS 
	(SELECT SUM(HOURS) AS TOTAL_HRS, ESSN
	 FROM WORKS_ON GROUP BY ESSN)
SELECT SSN, DNO, FNAME, TOTAL_HRS 
FROM EMPLOYEE INNER JOIN T1
ON EMPLOYEE.SSN=T1.ESSN;
		
        -- JUST PUT A COMMA TO MAKE MULTIPLE TABLES AND THEN INNER JOIN THEM INSIDE SUBQUERIES
        
        
    -- NESTED
			-- WHERE SUB QUERY
--  GETTING ALL MANAGERS FRO EMPLOYEE TABLE
SELECT DISTINCT SUPER_SSN FROM EMPLOYEE WHERE SUPER_SSN IS NOT NULL;

SELECT FNAME, SSN 
FROM EMPLOYEE
WHERE SSN IN (SELECT DISTINCT SUPER_SSN 
		FROM EMPLOYEE 
        WHERE SUPER_SSN IS NOT NULL);
        
SELECT * FROM WORKS_ON;

SELECT FNAME, SSN FROM EMPLOYEE
WHERE SSN IN ( SELECT DISTINCT ESSN
				FROM WORKS_ON );
                
    -- INLINE
		-- CREATE A TEMP TABLE AND USE THAT TEMP TABLE
SELECT MAX(SALARY) , MIN(SALARY)
FROM (SELECT AVG(SALARY) AS SALARY 
		FROM EMPLOYEE 
        GROUP BY DNO) AS T1;
        
        
    -- SCALER
		-- WHEN THE SUBQUERY GENERATES A SINGE values
	
    -- PRINT ALL MEPLOYESS EARNING LEARGER THAN AVG SALARY
    
    USE COMPANYDB;
    
    SELECT SSN,FNAME, SALARY
    FROM EMPLOYEE
    WHERE SALARY>(
    SELECT AVG(SALARY) FROM EMPLOYEE);
    
    

    
    



-- FORMATTING OF SUBQUERIES
		-- IMPROVES READABILITY OF THE CODE
        -- use the brush icon to do the same
        
-- CORRELATED SUBQUERY
USE COMPANYDB;

-- INNER QUERY DEPENDENT ON THE OUTER QUERY
        
        
-- VIEWS IN SQL
	-- RAM MAI STORED TABLE
    -- TEMP TABLE TYPE SCENARIO FER USE IT FOR MULTIPLE QUERIES

-- HOW TO CREATE

CREATE VIEW TEMP AS(
SELECT  DNAME FROM DEPARTMENT);

SELECT * FROM TEMP;


-- SHOW DATABASES;

-- USE lco_users;


-- SELECT stu_fname as FirstName,email from  students;

-- TODO: Distinct

-- SELECT Distinct stu_fname as FirstName,email from students;

-- TODO: Order by.

-- SELECT Distinct stu_fname,login_count from students;

-- SELECT  Distinct stu_fname,login_count,course_count from students ORDER BY login_count ASC;

-- SELECT Distinct stu_fname,login_count,course_count from  students ORDER BY login_count DESC;

-- TODO:order by student name in desc 
-- SELECT Distinct stu_fname,login_count,course_count from students ORDER BY stu_fname DESC;


-- TODO:LIMIT

-- SELECT stu_fname,login_count FROM students;

-- SELECT Distinct stu_fname,login_count FROM students;

-- SELECT Distinct stu_fname,login_count from students ORDER BY login_count desc limit 5; 

-- SELECT Distinct stu_fname,login_count from students ORDER by login_count desc limit 0,5;

-- TODO:Pattern matching

-- SELECT stu_fname,email FROM students WHERE stu_fname LIKE '%ish';

-- TODO:COUNT

-- SELECT Distinct stu_fname from students;

-- SELECT Distinct COUNT(stu_fname) from students;

-- SELECT COUNT(Distinct stu_fname) as Count from students;

-- TODO:sql modes

-- SET @@sql_mode='';

-- TODO: GROUP BY

-- SELECT stu_fname,signup_month from students;

-- SELECT stu_fname,signup_month from students GROUP BY signup_month;

-- SELECT stu_fname,signup_month ,count(*) FROM students GROUP BY signup_month;

-- TODO: min max

-- SELECT stu_fname,email,login_count FROM students
-- WHERE login_count=(SELECT max(login_count) from students);

-- SELECT stu_fname,email,course_count from students
-- WHERE course_count=(SELECT min(course_count) from students);

-- TODO:GROUP BY min-max

--  SELECT login_count,signup_month from students
--  GROUP BY signup_month;


-- SELECT max(login_count),signup_month from students
-- GROUP BY signup_month ORDER by signup_month  ;


-- TODO: sum avg

-- SELECT login_count,signup_month from students WHERE signup_month='7';

-- SELECT sum(login_count),signup_month FROM students GROUP by signup_month;

-- SELECT avg(login_count),signup_month FROM students GROUP by signup_month;

-- TODO: AND OR (Find users who are having login count of least 20 and
-- are enrolled in at least 5 courses)

-- SELECT email,login_count,signup_month,course_count from students WHERE login_count>=20 AND course_count>=5 ORDER BY login_count;

-- SELECT email,login_count,signup_month,course_count from students WHERE login_count>=20 OR course_count>=5 ORDER BY login_count;

-- SELECT email,login_count,signup_month from students WHERE signup_month='7' or signup_month='10';


-- TODO: range between

-- SELECT email,login_count,signup_month from students where signup_month between 7 and 10 ;

-- TODO: cases

SELECT stu_fname,email,signup_month,
    CASE 
        WHEN signup_month between 7 and 10 THEN 'early bird'
        WHEN signup_month between 11 and 12 THEN 'regular users'
        ELSE '###'
    END as custom
FROM students;






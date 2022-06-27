-- TODO: give full name for students.
-- SHOW DATABASES;

-- USE lco_users;



-- SELECT stu_fname,stu_lname from students;

-- SELECT concat(stu_fname,' ',stu_lname) as FullName from students;

-- SELECT CONCAT(stu_fname,' ',stu_lname) as FullName,login_count FROM students;

-- Assignment

-- SELECT CONCAT('users coursce count is:',course_count,' and login count is:',login_count) as LoginInfo from students;

-- TODO: REPLACE

-- SELECT  stu_fname FROM students;

-- SELECt REPLACE(stu_fname,'a','@') from students;

-- SELECT CONCAT(SUBSTRING(email,1,7),'......') as TURNCATED from students;

--  TODO: Reverse.

-- SELECT Reverse(stu_fname) from students;

-- TODO: Char length

-- SELECT stu_fname ,char_length(stu_fname) as length from students; 

-- SELECT UPPER(stu_fname) as Upper ,stu_lname from students;
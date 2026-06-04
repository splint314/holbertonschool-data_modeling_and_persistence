select name as student_name 
from students
where id IN (
	SELECT student_id FROM enrollments)
order by student_name ASC;
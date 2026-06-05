SELECT
    students.name,
    courses.title
FROM registrations
JOIN students
    ON registrations.student_id = students.id
JOIN courses
    ON registrations.course_id = courses.id
ORDER BY students.name ASC, courses.title ASC;
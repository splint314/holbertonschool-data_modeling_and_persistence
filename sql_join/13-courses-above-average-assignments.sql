SELECT
    course_assignment_counts.title
FROM (
    SELECT
        courses.id,
        courses.title,
        COUNT(assignments.id) AS assignment_count
    FROM courses
    LEFT JOIN assignments
        ON courses.id = assignments.course_id
    GROUP BY courses.id, courses.title
) AS course_assignment_counts
WHERE course_assignment_counts.assignment_count > (
    SELECT
        AVG(assignment_count)
    FROM (
        SELECT
            courses.id,
            COUNT(assignments.id) AS assignment_count
        FROM courses
        LEFT JOIN assignments
            ON courses.id = assignments.course_id
        GROUP BY courses.id
    ) AS average_counts
)
ORDER BY course_assignment_counts.title ASC;
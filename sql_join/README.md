# SQL — Joins & Relationships (tasks 0–5)

These six SQL solutions follow the readable task requirements from the supplied screenshots.

- **0** Authors and books, including authors with no books (`LEFT JOIN`).
- **1** Student/course enrollment pairs (`INNER JOIN` across 3 tables).
- **2** Courses and enrolled students, including empty courses (`LEFT JOIN` across 3 tables).
- **3** Students enrolled in at least one course (subquery with `IN`).
- **4** Courses with enrollment count above the average across all courses (`GROUP BY`, `COUNT`, subquery).
- **5** Enrollment count per course including zero (`LEFT JOIN`, `GROUP BY`, `COUNT`).

**Tasks 6–9 are NOT included:** their complete task descriptions and checker requirements were not legible in the screenshots; avoid guessing.

Before submission, verify the required Holberton filenames (these are descriptive filenames), and inspect column names against your supplied database schema. These queries assume `authors(id, name)`, `books(title, author_id)`, `students(id, name)`, `courses(id, title)`, `enrollments(student_id, course_id)`.

### Additional SQL tasks
- `6-above-average-enrollment-having.sql` — compare course enrollment counts to the average using `HAVING` and a subquery.
- `7-course-enrollments-count.sql` — include zero-enrollment courses using `LEFT JOIN` and `COUNT(e.student_id)`.

The official required filenames must be checked in Holberton before submission. Tasks 8 and 9 are not included because their complete instructions were not legible in the provided screenshots.

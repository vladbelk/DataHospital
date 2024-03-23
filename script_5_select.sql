USE Hospital_5;
GO

SELECT room_name, capacity
FROM rooms
WHERE building_number = 5
    AND capacity >= 5
    AND EXISTS (
        SELECT 1
        FROM rooms
        WHERE building_number = 5
            AND capacity > 15
    );

SELECT department_name
FROM departments
WHERE EXISTS (
    SELECT 1
    FROM examinations
    WHERE department_id = departments.id
        AND examination_date >= DATEADD(day, -7, GETDATE())
);

SELECT disease_name
FROM diseases
WHERE NOT EXISTS (
    SELECT 1
    FROM examinations
    WHERE disease_id = diseases.id
);

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM doctors
WHERE NOT EXISTS (
    SELECT 1
    FROM examinations
    WHERE doctor_id = doctors.id
);

SELECT department_name
FROM departments
WHERE NOT EXISTS (
    SELECT 1
    FROM examinations
    WHERE department_id = departments.id
);

SELECT last_name
FROM doctors
WHERE position = 'Intern';

SELECT last_name
FROM doctors
WHERE position = 'Intern'
    AND hourly_rate > ANY (
        SELECT hourly_rate
        FROM doctors
    );

SELECT room_name
FROM rooms
WHERE capacity > ALL (
    SELECT capacity
    FROM rooms
    WHERE building_number = 3
);

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM doctors
WHERE EXISTS (
    SELECT 1
    FROM examinations
    WHERE doctor_id = doctors.id
        AND department_id IN (
            SELECT id
            FROM departments
            WHERE department_name IN ('Ophthalmology', 'Physiotherapy')
        )
);

SELECT DISTINCT department_name
FROM Employees
WHERE job_title IN ('Intern', 'Professor');

SELECT CONCAT(first_name, ' ', last_name) AS full_name, department_name
FROM Doctors
WHERE department_funding > 20000;

SELECT department_name
FROM Departments
WHERE department_id = (
    SELECT department_id
    FROM Doctors
    ORDER BY salary DESC
    LIMIT 1
);

SELECT disease_name, COUNT(*) AS number_of_examinations
FROM Examinations
GROUP BY disease_name;


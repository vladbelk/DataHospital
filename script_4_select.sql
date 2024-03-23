USE Hospital_3;
GO

SELECT d.dname, d.specialization
FROM doctor d;

SELECT d.dname, (s.base_salary + s.bonus) AS total_salary
FROM doctor d
JOIN salary s ON d.doctorID = s.doctorID
WHERE d.status <> 'On Vacation';

SELECT w.wardName
FROM ward w
JOIN department d ON w.departmentID = d.departmentID
WHERE d.departmentName = 'Intensive Treatment';

SELECT DISTINCT d.departmentName
FROM department d
JOIN sponsor s ON d.departmentID = s.departmentID
WHERE s.sponsorName = 'Umbrella Corporation';

SELECT d.departmentName, s.sponsorName, b.amount, b.donationDate
FROM donation b
JOIN department d ON b.departmentID = d.departmentID
JOIN sponsor s ON b.sponsorID = s.sponsorID
WHERE b.donationDate >= DATEADD(MONTH, -1, GETDATE());

SELECT d.dname, w.wardName
FROM doctor d
JOIN examination e ON d.doctorID = e.doctorID
JOIN ward w ON e.wardID = w.wardID
WHERE e.examinationDay NOT IN ('Saturday', 'Sunday');

SELECT w.wardName, d.departmentName
FROM doctor d
JOIN examination e ON d.doctorID = e.doctorID
JOIN ward w ON e.wardID = w.wardID
WHERE d.dname = 'Helen Williams';

SELECT d.departmentName, d.dname
FROM department d
JOIN donation b ON d.departmentID = b.departmentID
WHERE b.amount > 100000;

SELECT d.departmentName
FROM department d
JOIN doctor doc ON d.departmentID = doc.departmentID
LEFT JOIN salary s ON doc.doctorID = s.doctorID
WHERE s.bonus IS NULL;

SELECT specialization
FROM doctor
WHERE severityLevel > 3;

SELECT d.departmentName, e.diseaseName
FROM department d
JOIN examination e ON d.departmentID = e.departmentID
WHERE e.examinationDate >= DATEADD(MONTH, -6, GETDATE());

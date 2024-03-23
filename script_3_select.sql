USE Hospital_4;
GO

SELECT COUNT(*) AS NumberOfRooms
FROM Wards
WHERE Places > 10;

SELECT Building, COUNT(*) AS NumberOfRooms
FROM Wards
GROUP BY Building;

SELECT D.Name AS DepartmentName, COUNT(W.Id) AS NumberOfRooms
FROM Departments D
JOIN Wards W ON D.Id = W.DepartmentId
GROUP BY D.Name;

SELECT D.Name AS DepartmentName, SUM(DO.Premium) AS TotalPremium
FROM Departments D
JOIN Doctors DO ON D.Id = DO.DepartmentId
GROUP BY D.Name;

SELECT D.Name AS DepartmentName
FROM Departments D
JOIN DoctorsExaminations DE ON D.Id = DE.DepartmentId
GROUP BY D.Name
HAVING COUNT(DISTINCT DE.DoctorId) >= 5;

SELECT COUNT(*) AS NumberOfDoctors, SUM(Salary + Premium) AS TotalSalary
FROM Doctors;

SELECT AVG(Salary + Premium) AS AverageSalary
FROM Doctors;

SELECT Name AS RoomName
FROM Wards
WHERE Places = (SELECT MIN(Places) FROM Wards);

SELECT Building
FROM Wards
WHERE Building IN (1, 6, 7, 8)
GROUP BY Building
HAVING SUM(Places) > 100;

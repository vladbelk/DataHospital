USE Hospital_3;
GO

INSERT INTO Departments (Name)
VALUES
    ('Cardiology'),
    ('Neurology'),
    ('Oncology'),
    ('Pediatrics'),
    ('Orthopedics'),
    ('Gastroenterology'),
    ('Dermatology'),
    ('Intensive Treatment'),
    ('Psychiatry'),
    ('Radiology');
INSERT INTO Doctors (FirstName, LastName, DepartmentId)
VALUES
    ('John', 'Smith', 1),
    ('Anna', 'Johnson', 2),
    ('Michael', 'Brown', 3),
    ('Emily', 'Davis', 1),
    ('David', 'Lee', 2),
    ('Sophia', 'Wilson', 3),
    ('Daniel', 'Clark', 1),
    ('Olivia', 'Moore', 2),
    ('Helen', 'Williams', 3),
    ('Emma', 'Anderson', 1);
INSERT INTO Donations (Amount, Date, DepartmentId, SponsorId)
VALUES
    (1000.00, '2024-03-01', 1, 1),
    (500.00, '2024-03-02', 2, 2),
    (200.00, '2024-03-03', 3, 3),
    (300.00, '2024-03-04', 1, 4),
    (150.00, '2024-03-05', 2, 5),
    (50.00, '2024-03-06', 3, 6),
    (100.00, '2024-03-07', 1, 7),
    (75.00, '2024-03-08', 2, 8),
    (30.00, '2024-03-09', 3, 9),
    (20.00, '2024-03-10', 1, 10);
INSERT INTO Specializations (Name)
VALUES
    ('Cardiology'),
    ('Neurology'),
    ('Oncology'),
    ('Pediatrics'),
    ('Orthopedics'),
    ('Gastroenterology'),
    ('Dermatology'),
    ('Emergency Medicine'),
    ('Psychiatry'),
    ('Radiology');
INSERT INTO Sponsors (Name)
VALUES
    ('ABC Corporation'),
    ('XYZ Foundation'),
    ('Healthcare Solutions'),
    ('Umbrella Corporation'),
    ('Wellness Foundation'),
    ('Global Aid Network'),
    ('Hopeful Hearts'),
    ('Medical Innovations'),
    ('Caring Hands'),
    ('Healing Hearts');
INSERT INTO Vacations (EndDate, StartDate, DoctorId)
VALUES
    ('2024-03-01', '2024-03-10', 1),
    ('2024-03-02', '2024-03-11', 2),
    ('2024-03-03', '2024-03-12', 3),
    ('2024-03-04', '2024-03-13', 4),
    ('2024-03-05', '2024-03-14', 5),
    ('2024-03-06', '2024-03-15', 6),
    ('2024-03-07', '2024-03-16', 7),
    ('2024-03-08', '2024-03-17', 8),
    ('2024-03-09', '2024-03-18', 9),
    ('2024-03-10', '2024-03-19', 10);
INSERT INTO Wards (Name, DepartmentId)
VALUES
    ('Ward A', 1),
    ('Ward B', 2),
    ('Ward C', 3),
    ('Ward D', 1),
    ('Ward E', 2),
    ('Ward F', 3),
    ('Ward G', 1),
    ('Ward H', 2),
    ('Ward I', 3),
    ('Ward J', 1);

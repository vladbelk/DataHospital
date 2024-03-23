USE Hospital_4;
GO

INSERT INTO Departments (Building, Name)
VALUES
    (3, 'Cardiology'),
    (2, 'Neurology'),
    (1, 'Oncology'),
    (4, 'Pediatrics'),
    (5, 'Surgery'),
    (1, 'Gynecology'),
    (3, 'Orthopedics'),
    (2, 'Dermatology'),
    (4, 'Endocrinology'),
    (5, 'Psychiatry');
INSERT INTO Doctors (Name, Premium, Salary, Surname)
VALUES
    ('Dr. Smith', 2000, 80000, 'Johnson'),
    ('Dr. Lee', 1500, 70000, 'Kim'),
    ('Dr. Rodriguez', 1800, 75000, 'Garcia'),
    ('Dr. Wang', 1700, 72000, 'Li'),
    ('Dr. Patel', 1900, 78000, 'Shah'),
    ('Dr. M?ller', 1600, 73000, 'Schmidt'),
    ('Dr. Nguyen', 1400, 68000, 'Tran'),
    ('Dr. Brown', 2100, 82000, 'Miller'),
    ('Dr. Martinez', 2200, 85000, 'Gonzalez'),
    ('Dr. Kim', 2300, 88000, 'Park');
INSERT INTO DoctorsExaminations (EndTime, StartTime, DoctorId, ExaminationId, WardId)
VALUES
    ('12:00', '10:00', 1, 1, 3),
    ('14:30', '13:00', 2, 2, 1),
    ('16:45', '15:30', 3, 3, 2),
    ('11:15', '09:30', 4, 4, 4),
    ('13:45', '12:30', 5, 5, 5),
    ('15:30', '14:00', 6, 6, 6),
    ('10:30', '08:45', 7, 7, 7),
    ('12:45', '11:30', 8, 8, 8),
    ('14:00', '13:15', 9, 9, 9),
    ('16:00', '15:00', 10, 10, 10);
INSERT INTO Examinations (Name)
VALUES
    ('Blood Test'),
    ('MRI Scan'),
    ('X-ray'),
    ('Ultrasound'),
    ('Colonoscopy'),
    ('Echocardiogram'),
    ('Endoscopy'),
    ('CT Scan'),
    ('Mammogram'),
    ('DEXA Scan');
INSERT INTO Wards (Name, Places, DepartmentId)
VALUES
    ('Ward A', 10, 1),
    ('Ward B', 12, 2),
    ('Ward C', 8, 3),
    ('Ward D', 15, 4),
    ('Ward E', 20, 5),
    ('Ward F', 18, 1),
    ('Ward G', 14, 2),
    ('Ward H', 16, 3),
    ('Ward I', 10, 4),
    ('Ward J', 22, 5);

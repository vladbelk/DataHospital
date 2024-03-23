USE Hospital_5;
GO

INSERT INTO Departments (Building, Financing, Name) VALUES
    (3, 150000, 'Cardiology'),
    (2, 120000, 'Neurology'),
    (1, 90000, 'Oncology'),
    (5, 180000, 'Pediatrics'),
    (4, 135000, 'Surgery'),
    (3, 140000, 'Gynecology'),
    (2, 110000, 'Ophthalmology'),
    (1, 95000, 'Dermatology'),
    (5, 170000, 'Endocrinology'),
    (4, 130000, 'Physiotherapy');
INSERT INTO Diseases (Name) VALUES
    ('Hypertension'),
    ('Diabetes'),
    ('Asthma'),
    ('Arthritis'),
    ('Depression'),
    ('Migraine'),
    ('Anemia'),
    ('Osteoporosis'),
    ('Cancer'),
    ('Alzheimers');
INSERT INTO Doctors (Name, Salary, Surname) VALUES
    ('Dr. Smith', 120000, 'Johnson'),
    ('Dr. Lee', 110000, 'Kim'),
    ('Dr. Rodriguez', 130000, 'Garcia'),
    ('Dr. Wang', 125000, 'Li'),
    ('Dr. Patel', 115000, 'Shah'),
    ('Dr. Martinez', 128000, 'Lopez'),
    ('Dr. Brown', 118000, 'Miller'),
    ('Dr. Nguyen', 122000, 'Tran'),
    ('Dr. Jones', 135000, 'Williams'),
    ('Dr. Kim', 140000, 'Park');
INSERT INTO DoctorsExaminations (Date, DiseaseId, DoctorId, ExaminationId, WardId) VALUES
    ('2024-03-16', 3, 2, 5, 7),
    ('2024-03-17', 1, 4, 8, 3),
    ('2024-03-18', 2, 1, 6, 9),
    ('2024-03-19', 4, 3, 10, 2),
    ('2024-03-20', 5, 5, 7, 1),
    ('2024-03-21', 6, 6, 9, 4),
    ('2024-03-22', 7, 8, 3, 5),
    ('2024-03-23', 8, 10, 2, 6),
    ('2024-03-24', 9, 9, 4, 10),
    ('2024-03-25', 10, 7, 1, 8);
INSERT INTO Examinations (Name) VALUES
    ('Blood Pressure Check'),
    ('Blood Test'),
    ('MRI Scan'),
    ('X-ray'),
    ('Colonoscopy'),
    ('Ultrasound'),
    ('Endoscopy'),
    ('Electrocardiogram'),
    ('Eye Exam'),
    ('Physical Examination');
INSERT INTO Inters (DoctorId) VALUES
    (2),
    (4),
    (1),
    (3),
    (5),
    (6),
    (8),
    (10),
    (9),
    (7);
INSERT INTO Professors (DoctorId) VALUES
    (2),
    (4),
    (1),
    (3),
    (5),
    (6),
    (8),
    (10),
    (9),
    (7);
INSERT INTO Wards (Name, Places, DepartmentId) VALUES
    ('Ward A', 10, 3),
    ('Ward B', 12, 1),
    ('Ward C', 8, 2),
    ('Ward D', 15, 5),
    ('Ward E', 20, 4),
    ('Ward F', 18, 3),
    ('Ward G', 14, 2),
    ('Ward H', 16, 1),
    ('Ward I', 10, 5),
    ('Ward J', 12, 4);

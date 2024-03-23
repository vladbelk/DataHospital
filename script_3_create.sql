CREATE DATABASE Hospital_4;
GO

USE Hospital_4;
GO

CREATE TABLE Departments (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Building INT NOT NULL CHECK (Building BETWEEN 1 AND 5),
    Name NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Doctors (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name NVARCHAR(MAX) NOT NULL,
    Premium MONEY NOT NULL CHECK (Premium >= 0) DEFAULT 0,
    Salary MONEY NOT NULL CHECK (Salary >= 0),
    Surname NVARCHAR(MAX) NOT NULL
);

CREATE TABLE DoctorsExaminations (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    EndTime TIME NOT NULL,
    StartTime TIME NOT NULL CHECK (StartTime >= '08:00' AND StartTime <= '18:00'),
    DoctorId INT NOT NULL,
    ExaminationId INT NOT NULL,
    WardId INT NOT NULL,
    FOREIGN KEY (DoctorId) REFERENCES Doctors(Id),
    FOREIGN KEY (ExaminationId) REFERENCES Examinations(Id),
    FOREIGN KEY (WardId) REFERENCES Wards(Id)
);

CREATE TABLE Examinations (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Wards (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name NVARCHAR(20) NOT NULL UNIQUE,
    Places INT NOT NULL CHECK (Places >= 1),
    DepartmentId INT NOT NULL,
    FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
);


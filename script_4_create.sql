CREATE DATABASE Hospital_3;
GO

USE Hospital_3;
GO

CREATE TABLE Departments (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Doctors (
    Id INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DepartmentId INT NOT NULL,
    FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
);
CREATE TABLE DoctorsSpecializations (
    DoctorId INT NOT NULL,
    SpecializationId INT NOT NULL,
    PRIMARY KEY (DoctorId, SpecializationId),
    FOREIGN KEY (DoctorId) REFERENCES Doctors(Id),
    FOREIGN KEY (SpecializationId) REFERENCES Specializations(Id)
);
CREATE TABLE Donations (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Amount MONEY NOT NULL CHECK (Amount >= 0),
    Date DATE NOT NULL DEFAULT GETDATE(),
    DepartmentId INT NOT NULL,
    SponsorId INT NOT NULL,
    FOREIGN KEY (DepartmentId) REFERENCES Departments(Id),
    FOREIGN KEY (SponsorId) REFERENCES Sponsors(Id)
);
CREATE TABLE Specializations (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Sponsors (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Vacations (
    Id INT PRIMARY KEY IDENTITY(1,1),
    EndDate DATE NOT NULL,
    StartDate DATE NOT NULL,
    DoctorId INT NOT NULL,
    FOREIGN KEY (DoctorId) REFERENCES Doctors(Id)
);
CREATE TABLE Wards (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(20) NOT NULL UNIQUE,
    DepartmentId INT NOT NULL,
    FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
);
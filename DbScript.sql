﻿CREATE DATABASE EFCoreDBFirst
GO
USE EFCoreDBFirst
GO

CREATE TABLE Department
(
	Id INT PRIMARY KEY IDENTITY (1,1),
	Name VARCHAR(50)
)
GO

CREATE TABLE Employee
(
	Id BIGINT PRIMARY KEY IDENTITY (1,1),
	Name VARCHAR(50),
	DateOfJoining SMALLDATETIME,
	DeptId INT FOREIGN KEY REFERENCES Department(Id)
)
GO

INSERT INTO Department (Name) VALUES ('IT'), ('HR')
GO

INSERT INTO Employee (Name, DateOfJoining, DeptId) VALUES ('Jitan Gupta', GETDATE(), 1), ('John Doe', GETDATE(), 2)
GO
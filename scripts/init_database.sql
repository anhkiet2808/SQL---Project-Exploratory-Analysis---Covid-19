use master;
go 

-- Drop and recreate the "practice_db" database
if exists (select 1 from sys.databases where name = 'practice_db')
begin
	alter database practice_db set single_user with rollback immediate;
	drop database practice_db;
end;
go
-- Create database "practice_db"
create database practice_db;
go

use practice_db;
go

-- Create schema for Project: Exploratory Data Analysis - COVID Deaths and Vaccinations
create schema covid;
go

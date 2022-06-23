create table CompanyMst(CID int Primary Key Identity(5000,1), Cname varchar(30), 
						Address varchar(100), City varchar(20), State varchar(20), Pincode varchar(6), 
						ContactPerson varchar(30), MobileNo varchar(15), 
						Email varchar(50), Website varchar(100), Username varchar(50),
						Password varchar(20));

create table StudentMst(SID int Primary Key Identity(1000,1), 
						Name varchar(20), Address varchar(100),
						City varchar(20), State varchar(20), Pincode varchar(6), 
						Dob Date, Gender varchar(10), MobileNo varchar(15),
						Email varchar(50),Username varchar(50), Password varchar(20));

create table EducationMst(SID int references StudentMst(SID), CollegeName varchar(50),
						EnrollNo varchar(20), Semester varchar(10), Degree varchar(20),
						Branch varchar(20), Passyear varchar(4), Cgpa varchar(5), 
						Skill varchar(100));

create table ResumeMst(SID int references StudentMst(SID), data varbinary(MAX));

Create table AddJobMst(JobId int Primary Key Identity(7000, 1), CID int references CompanyMst(CID),
                        Company_name varchar(30), Requiredskill varchar(100),
                        Role varchar(20), Min_Qualification varchar(30),
                        Expected_salary varchar(20), JobLocation varchar(20),
                        JobDescription varchar(100), LastApplyDate Date);

create table ApplyJobMst(AJID int Primary key Identity(10000,1), JID int references AddJobMSt(JobId),
			CID int references CompanyMst(CID), SID int references StudentMst(SID),
			Status varchar(20), EntryDate Date);
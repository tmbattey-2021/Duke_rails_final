## This assignment consists of two parts, rails API and SQL

# Ruby on Rails API

## Installation

1. `git clone` this repository

1. install gems in Gemfile

1. launch the application

1. run rspec


## Running tests

We use RSpec for our automated tests. You must write tests for your code
according to the following standard:

- spec/models: specifications for any models that you create
- **BONUS** spec/requests: specifications for all requests against the application
- **BONUS** avoid hard-coding test artifacts such as created objects, request
  parameters, etc.

## Problems to be solved

As you work through these problems, please **commit your code early and often**.
A good rule of thumb is to make small commits grouped by specific functionality.

### Problem 1 REST backend

You have been provided assignment.apib, and assignment.html (a human readable version).
Using the existing Rails api application framework, implement the requirements specified in assignment.apib.

---

# SQL

Please edit this README.md file and provide your answers below.  The datatypes are Oracle, but feel free to use any variant of SQL.



1.  Below is a table containing information about protocols within the Duke Institutional Review Board (IRB) Application.
	Write a query that selects distinct studies currently approved by the IRB that might be trauma-related (based on title).
	
		TABLE protocols
			Protocol_ID VARCHAR2
			Full_Title VARCHAR2
			Short Title VARCHAR2
			CRU VARCHAR2
			Department VARCHAR2
			Status VARCHAR2


select distict Full_Title from protocols where Full_Title CONTAINS 'trauma' and Status = 'approved';
			
2.	Below are tables containing information about protocol dates from the IRB and Clinical Research Management System (CRMS).  Write a query that selects distinct studies currently approved or closed that provides the following dates – Date Created, IRB Reviewed Date, IRB Approval Date – including number of days between each date. Also provide the earliest date a subject enrolled on the study. Also include PI, CRU, Department

		TABLE protocols
		  Protocol_ID VARCHAR2
		  Full_Title VARCHAR2
		  Short_Title VARCHAR2
		  Created_On DATE
		  IRB_Reviewed_On DATE
		  IRB_Approval_Date DATE
		  PI_First_Name VARCHAR2
		  PI_Last_Name VARCHAR2
		  CRU VARCHAR2
		  Department VARCHAR2
		  Status VARCHAR2

		TABLE Enrollment
		  Protocol_ID VARCHAR2
		  Subject_MRN VARCHAR2
		  Enrolled_On  DATE
		 
select Enrollment.Enrolled_On, protocols.CRU, protocols.Department, protocols.PI_First_Name, protocols.PI_Last_Name,protocols.Created, protocols.IRB_Reviewed_On, protocols.IRB_Approval_Date, DATEDIFF(protocols.Created,protocols.IRB_Reviewed_On) AS days_rev, DATEDIFF(protocols.IRB_Reviewed_On,protocols.IRB_Approval_Date) AS days_app  
from protocols where Status = 'approved' or Status = 'closed'
INNER JOIN protocols ON protocols.Protocol.ID = Enrollment.Protocol_ID;



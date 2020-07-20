## This assignment consists of two parts, rails API and Oracle SQL

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
- spec/requests: specifications for all requests against the application
- **BONUS** avoid hard-coding test artifacts such as created objects, request
  parameters, etc.

## Problems to be solved

As you work through these problems, please **commit your code early and often**.
A good rule of thumb is to make small commits grouped by specific functionality.

### Problem 1 REST backend

You have been provided assignment.apib, and assignment.html (a human readable version).
Using the existing Rails api application framework, implement the requirements specified in assignment.apib.

---

# Oracle SQL

Please edit this README.md file and provide your answers below

1.  Below is a table containing information about protocols within the Duke Institutional Review Board (IRB) Application.
	Write a query that selects distinct studies currently approved by the IRB that might be trauma-related (based on title).
		TABLE protocols
			Protocol_ID VARCHAR2
			Full_Title VARCHAR2
			Short Title VARCHAR2
			CRU VARCHAR2
			Department VARCHAR2
			Status VARCHAR2
2.	Below are tables containing information about protocol dates and sponsors from the IRB.  Write a query that all distinct studies approved during FY2017 (7/1/2016 thru 6/30/2017) which are commercially funded and list their sponsors. Multiple sponsors can be associated with a study. Only 1 line per study.

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

		TABLE Sponsor
		  Protocol_ID VARCHAR2
		  Sponsor_Name VARCHAR2
		  Sponsor_Type VARCHAR2


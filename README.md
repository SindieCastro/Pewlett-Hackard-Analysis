# Pewlett-Hackard-Analysis

## Overview of Project

### Background

Pewlett Hackard is looking to prepare for the future. The company wants the total count of positions they will need to fill due to employee retirements. The company also wants the employee count of the individuals who are eligible for a mentorship program to help fill the positions that will be empty. A database to analyze the data available through the company's human resources was built using PostgreSQL.

### Purpose

The purpose of this project is to use the database to determine the number of retiring employees as well as identify employees who are eligible to participate in a mentorship program.

## Results

The SQL queries show two results for retiring employees:

- There are 90,398 individuals eligible for retiring (See Table One).
- There are 7 retiring titles (See Table One).

**Table One: Retiring Titles**

Retiring Titles | Number of Individuals
------------ | -------------
Senior Engineer  | 29,414 
Senior Staff  | 28,255
Engineer  | 14,222
Staff  | 12,242
Technique Leader  | 4502
Assistant Engineer  | 1,761
Manager  | 2

The SQL queries show two results for the mentorship program:

- There are 1,549 employees eligible for the mentorship program (See Table Two).
- There are 6 mentorship titles(See Table Two).

**Table Two: Mentorship Titles**

Mentorship Titles | Number of Individuals
------------ | -------------
Senior Staff  | 569
Senior Engineer  | 529
Engineer  | 190
Staff  | 155
Technique Leader  | 77
Assistant Engineer  | 29

## Summary

**How many roles will need to be filled as the "silver tsunami" begins to make an impact?**
There will be a total of 90,398 roles that will need to be filled; however, as the "silver tsunami" begins to make an impact in Pewlett Hackard, there will be 31,374 during the first year as shown on Table Three. Table Three resulted from Query One to capture the number of individuals born in 1952. 

Additionally, Query Two was ran to see the title count for the individuals who qualify for the mentorship program that will help fill the roles. The query did not output individuals for Manager titles. It is recommended that Pewlett Hackard begin their focus in the mentorship program to fill the 1 Manager title that will be available the first year the "silver tsunami" begins to make an impact. 

**Table Three: First Year Retiring Titles**

First Year Retiring Titles | Number of Individuals
------------ | -------------
Engineer  | 8,085
Staff  | 7,600
Senior Engineer  | 6,921
Senior Staff  | 6,636
Assistant Engineer  | 1,069
Technique Leader  | 10,62
Manager  | 1

**Query One: Eligible for First Year Retirement**

![First_retire](https://user-images.githubusercontent.com/78306719/113511942-f4e76280-9527-11eb-8467-bd42c11dd8da.PNG)

**Query Two: Titles for Mentorship Qualification**

![Mentorship_Titles](https://user-images.githubusercontent.com/78306719/113511955-06306f00-9528-11eb-885e-43d43ee04a9d.PNG)

**Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**

There are more than enough retirement-ready employees to mentor the next generation for 6 job titles but not in the Manager's title as there are only 2 who are eligible for retirement as shown in Table One using Query 2. For this query, the unique count of the titles was captured to ensure there were unduplicated titles considering employees change positions within Pewlett Hackard; However, Query Four was ran within SQL to capture the unique titles for the individuals retiring.

**Query Three: Unique Titles**

![Unique_Titles](https://user-images.githubusercontent.com/78306719/113511963-11839a80-9528-11eb-9685-4f351fb28417.PNG)

**Query Four. Retiring Titles**

![Retiring_Titles](https://user-images.githubusercontent.com/78306719/113511972-1ba59900-9528-11eb-9b08-8a7b7d0ac680.PNG)

# Pewlett Hackard Analysis 

## Overview 
The purpose of this project is to create a database to store employee information. This database allows for data to be combined across different data sets and for an in-depth analysis to be completed. This analysis is focused on the Pewlett Hackard employee population that is likely to retire in coming years and will support the company's employee planning across various departments, titles, and the company as a whole.  

## Results
* There are over 90,000 employees that are eligible to retire soon. 
* The majority of these employees are either Senior Engineers or Senior Staff employees . The skew towards more senior roles is expected as employees with more experience are more likely to be in senior roles. 

![Retiring Count by Title](https://user-images.githubusercontent.com/91712554/143691386-5ee18099-c5d8-47ba-8dee-256531b25320.png)


* The current criteria the compnay has set for a mentorship program that would support backfilling roles allows for just over 1,500 employees to act as mentors to younger or less experienced employees. 
* The majority of these possible mentors are either Senior Staff or Engineering employees. 

![Mentorship Eligibility by Title](https://user-images.githubusercontent.com/91712554/143691395-4eee3741-19e9-4a15-a609-7086d5df862f.png)


## Summary  
* Over 90,000 employees are eligible to retire soon. This represents over 30% of the current workforce. 
* Currently there are not enough qualified, retirement-ready employees to act as mentors to the next generation of Pewlett Hackard employees. With only slightly over 1,500 mentors identified, each mentor with need to engage with about 60 mentees for the program to be a success.

Two additional recommended queries to continue this analysis are:
1. Expand the potential mentorship criteria beyond the current birth year (1965). See below query as example. This would increase the number of mentors available and lower the mentor to mentee ratio which is currently very high (around 1:60). 

![Query 1](https://user-images.githubusercontent.com/91712554/143691489-a0eb0aa7-cd1b-4fcd-b3d5-8cfbc08fdc40.png)


2. Create a query that looks at employees who have recently retired. This would identify employees that could possibly come back as consultants/contractors temporarily. They could act as mentors and provide training to younger employees. Although this would be an additional expense to the company, contracts could be put in place that would limit the cost to six months or a year. This could be an a tier two option for more senior mentees in the program. 

![Query 2](https://user-images.githubusercontent.com/91712554/143691492-5eed7717-989f-4833-aca7-189b0ed4bbb9.png)
# Pewlett-Hackard-Analysis


## Overview of the analysis:
In this we will help Bobby to build employee database using sql by applying data modeling, engineering and analysis skills and ERD so that
Pewlett-Hackard can plan ahead to see who is retiring next year and how many positions need to be filled. This will help Pewlett Hackard to generate 
list of all employees eligible for retirement package. We will import and export csv dataset into pgAdmin and create new tables by joins.


### Deliverables
1: The Number of Retiring Employees by Title

2: The Employees Eligible for the Mentorship Program

3.: A written report on the employee database analysis (README.md)
 
### Software/Tools Used
 Visual Studio code, PostgreSQL, pgAdmin4, ERD 
 
## Results:
### Retirement Titles 
 Table : retirement_titles
 From this table we are getting the employees titles who were born between 1952 and 1955 and getting retire next year. This will help company in 
preparing how many titles going to vacant and need to hire next year.  

![](https://github.com/sumanpriyah/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles.png) 
 
### Unique Titles
Table : unique_titles
 This table will help the company with what all unique titles are available in company that going to vacant next year and need replacements by hiring people on those roles.
 
![](https://github.com/sumanpriyah/Pewlett-Hackard-Analysis/blob/main/Images/unique_titles.png)
 
### Retiring Titles
Table : retiring_titles
 This gives us count of the titles getting retire. This will help company to plan how many titles are required and need to replace next year.
 
![](https://github.com/sumanpriyah/Pewlett-Hackard-Analysis/blob/main/Images/retiring_titles.png)
 
### Mentorship Eligibility
Table : mentorship_eligibilty
 This tables provide the number of employees who are eligible and available to mentor the next generation after people getting retired next year.
 
![](https://github.com/sumanpriyah/Pewlett-Hackard-Analysis/blob/main/Images/mentorship_eligibilty.png)
 
## Summary:

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Below pic provided the count of roles that will be needed to be filled as the "silver tsunami".

![](https://github.com/sumanpriyah/Pewlett-Hackard-Analysis/blob/main/Images/retiring_titles.png)

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
In retiring_titles there are 2 people from Manager role going to retire but in Mentorship_eligibility table that role is not available to mentor next
generation. The total count of people retiring are 133776 where as people available to mentor next generation are 1549. There are less number
of people to mentor next generation. As a suggestion HP should hire proactively people before all the people get retired as there are not enough people to 
mentor next generation.

![](https://github.com/sumanpriyah/Pewlett-Hackard-Analysis/blob/main/Images/count_mentorship.png)

![](https://github.com/sumanpriyah/Pewlett-Hackard-Analysis/blob/main/Images/retiring%20titles-count.png)
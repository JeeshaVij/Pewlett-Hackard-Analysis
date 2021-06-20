# Overview of the Analysis

A lot of people are retiring at a high rate from Pewlett Hackard, the company is looking towards the future in two ways. 
- First it's offering retirement package for those who meet certain criteria
- To think about which positions need to be filled in the near future as the number of upcoming retirements will leave thousands of job openings

Through this analysis, we will be helping Bobby who is an HR Analyst to find answers to the following questions:
- Who will be retiring in next few years?
- How many positions will the company need to fill?

This analysis will help future-proofing Pewlett Hackard by generating a list of all employees eligible for the retirement package.

The employee data is only available in the form of six csv files because Pewlett Hackard has been mainly using excel and VBA to work with theirdata. 
But now they've finally decided to update their methods and instead use SQL and our task is to help Bobby build an employee database with SQL by applying 
the data modelling, engineering and analysis skills.

# Results

1. We got the Retirement Titles table for employees who are born between January 1,1952 and December 31,1955 and it was exported as a csv file
![retirement_titles][retirement_titles.png]

2. Because some employees may have multiple titles in the database—for example, due to promotions, a table with unique title was created by the most recent job titles and it was also exported into a csv file of unique titles
![unique_titles][unique_titles.png] 

3. A table with Retiring Titles was created that contains the number of titles filled by employees who are retiring and same same exported to a csv file
![retiring_titles][retiring_titles.png]

4. To get the data of employees who are eligible to participate in a mentorship program, a mentorship-eligibility table was created that holds the current employees who were born between January 1,1965 and December 31,1965.
![mentorship_eligibilty][mentorship_eligibilty.png]
	
# Summary

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
	- There are a total of 33118 employees who are retiring which would need to be filled

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
	- There are only 1549 employees eligible for the mentorship program, so it's not a sufficent number
	- However, if there can be a platform where one mentor can train a batch of 21 new employees on an average, it can work.
   
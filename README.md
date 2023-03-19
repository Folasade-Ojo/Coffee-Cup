![image](https://user-images.githubusercontent.com/121362860/226147682-777e2a0a-d3c5-4fd1-87d7-806474c90ca4.png)

## Dataset
The dataset employed for this project comprises 4250 records, each with 20 distinct attributes. These attributes include both numerical and categorical data. The dataset encompasses performance metrics accumulated by the coffee cup company from 2018 to 2019, among other performance metrics.

According to the dataset, the coffee cup company has 102 stores in different cities across the regions in Canada.

## Objective
The objective of this project is to provide  answers to key business questions through the use of interactive **Tableau** dashboards. Additionally, the project aims to develop a strategy map that aligns with the company's mission statement.

## About *The Coffee Cup* Company 
This hypothetical company specializes in 13 different products and operates 102 retail locations throughout Canada. Their mission statement is :***“To provide the world’s ultimate coffee shop experience with the highest-quality products, most: to have inviting stores, friendliest staff and best value.”***

![image](https://user-images.githubusercontent.com/121362860/226084259-acf44753-6672-4091-a8a4-ebe96118b01d.png)

**Figure 1: Strategy Map**

## Analysis
The dataset underwent a profiling process to ensure accuracy, completeness, and uniformity. Despite initial visual inspection indicating a clean dataset, further analysis utilizing techniques such as comparison and matching with publicly available information, identification of spelling errors, and consistency checks between records across different columns revealed the presence of errors. 

To rectify these errors, data cleaning was performed utilizing **PostgreSQL** due to its user-friendly and straightforward functionality (*see https://github.com/Folasade-Ojo/Coffee-Cup/blob/main/Data%20Exploration%20and%20Cleaning.sql*). The resulting table was downloaded as a text file and connected to Tableau.

With Tableau, I utilized calculated fields, parameters, actions, etc. to create visuals which answer below questions:

- Which store is the most profitable store (net profit)?
+ Which products should be added?
- What is the performance by region?
* Is the company growing versus the previous year?
* Basic information on the top 20 stores

Link to the interactive dashboard on Tableau public: 

https://public.tableau.com/app/profile/folasade.ojo/viz/FolasadeOjo-RWFDCoffeeCupCompanyPerformance/Overview

*Snapshots*
![image](https://user-images.githubusercontent.com/121362860/226147738-6f1ef198-b57c-4a75-add5-e59e4df10508.png)
![image](https://user-images.githubusercontent.com/121362860/226147730-c2b8d407-4cf6-4df8-891e-adcbdd2df930.png)
![image](https://user-images.githubusercontent.com/121362860/226147735-585ff4be-9bbf-4835-8da1-84ba46604eae.png)

## Findings and Recommendations

Overall, the company performed poorly in 2019 versus 2018 across all metrics, including **sales**, **net profit**, **gross profit**, **inventory**, etc. However, some stores performed better in 2019 as shown in the dashboard. To drive profits I recommend the following:
* Expand the menu by incorporating additional products, such as donuts, bagels, and cakes.
+ According to the analysis, *Green tea* and *Caffe Mocha* should be dropped as they result in negative profits despite the expenses incurred in advertising and buying inventory.
- Precedence should be given to the *Central region* and the *West* in terms of investment.

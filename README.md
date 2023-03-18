## Dataset
The dataset employed for this project comprises 4250 records, each with 20 distinct attributes. These attributes include both numerical and categorical data. The dataset encompasses performance metrics accumulated by the coffee cup company from 2018 to 2019, among other performance metrics.

According to the dataset, the coffee cup company has 102 stores in different cities across the regions in Canada.

## Objective
The objective of this project is to provide  answers to key business questions through the use of interactive **Tableau** dashboards. Additionally, the project aims to develop a strategy map that aligns with the company's mission statement.

## About *The Coffee Cup* Company
This company deals in 12 different products and have multiple stores across Canada. Their mission statement is :***“To provide the world’s ultimate coffee shop experience with the highest-quality products, most: to have inviting stores, friendliest staff and best value.”***

**Strategy Map**
![image](https://user-images.githubusercontent.com/121362860/226056639-0077fdb7-686e-49cb-ab84-7ec6e10baaaa.png)
## Analysis
The dataset underwent a profiling process to ensure accuracy, completeness, and uniformity. Despite initial visual inspection indicating a clean dataset, further analysis utilizing techniques such as comparison and matching with publicly available information, identification of spelling errors, and consistency checks between records across different columns revealed the presence of errors. 

To rectify these errors, data cleaning was performed utilizing **PostgreSQL** due to its user-friendly and straightforward functionality. The resulting table was downloaded as a text file and connected to Tableau.

With Tableau, I utilized calculated fields, parameters, actions, etc. to create visuals which answer below questions:

- Which store is the most profitable store (net profit)?
+ Which products should be added?
- What is the performance by region?
* Is the company growing versus the previous year?
* Basic information on the top 20 stores

Link to the dashboard on Tableau public: 

https://public.tableau.com/app/profile/folasade.ojo/viz/FolasadeOjo-RWFD-CoffeeCupCompanyPerformance/Overview

## FINDINGS AND RECOMMENDATIONS

Overall, the company performed poorly in 2019 versus 2018 across all metrics, including **sales**, **net profit**, **gross profit**, **inventory**, etc. To drive sales I recommend the following:
* Expand the menu by incorporating additional products, such as donuts, bagels, and cakes.
+ According to the analysis, *Green tea* and *Caffe Mocha* should be dropped as they result in negative profits despite the expenses incurred in advertising and buying inventory.
- •	Precedence should be given to the *Central region* and the *West* in terms of investment.

# [DrewCrew](https://jay-iii.github.io/COMP1020)
 

National Infrastructure Project Database Consulting Team:
Duru Elli, Aishat Mohammed, Jordan Stella

## Problem Statement & Overview

Canada is preparing for a major wave of infrastructure investment. According to the Parliamentary Budget Officer, the federal government is projected to spend over $159 billion on infrastructure between 2025-26 and 2029-30. At the same time, national reports highlight a significant infrastructure gap across Indigenous and remote communities, where many areas still face challenges related to housing, water access, and essential public services. This gap continues to widen without proper planning and oversight, making it difficult for the country to grow in a fair and balanced way.

With so many large projects underway across different provinces, contractors, and regions, one of the biggest challenges is simply keeping track of everything. Projects can fall behind schedule, go over budget, or stall without clear reporting. When information is scattered across departments or stored in different formats, it becomes difficult for government organizations to monitor progress, compare costs, or make informed decisions. A centralized system helps ensure transparency, accountability, and consistent reporting across all major infrastructure projects.

Our database was created to support that goal. By organizing key information—such as project status, budget, province, and contractor—in a single connected system, the National Infrastructure Project Database makes it easier for oversight bodies like the Infrastructure Coordination Commission (ICC) to understand what is happening across the country. This structure allows users to quickly search, filter, and analyze projects, helping decision-makers monitor spending, identify delays, and better support communities that need investment the most.

Sources:  
[Federal Infrastructure Spending – Update](https://www.pbo-dpb.ca/en/publications/RP-2526-010-S--federal-infrastructure-spending-update--depenses-federales-infrastructures-mise-jour)  
[$349B needed now to close infrastructure gap by 2030, Assembly of First Nations says in report](https://www.cbc.ca/news/indigenous/afn-infrastructure-gap-estimate-report-1.7167220)  


## Project Overview

We aim to create a centralized database for projects announced by Prime Minister Carney under review by the new Major Projects Office.
Our aim is to track the current status, budget, location of projects to aid the Major Projects Office in project management. This will allow search and filtering options to quickly access the data needed. Our DataBase has been populated by all Nation Building Projects as announced by Prime Minister Carney.   

[Prime Minister of Canada 1st tranche](https://www.pm.gc.ca/en/news/news-releases/2025/09/11/prime-minister-carney-announces-first-projects-be-reviewed-new)  
[Prime Minister of Canada 2nd tranche](https://www.pm.gc.ca/en/news/news-releases/2025/11/13/prime-minister-carney-announces-second-tranche-nation-building-projects)



Our tables includes; Projects, Provinces, Contractors, Tenders. This allows tracking of any project with the ability to highlight any relevant information such as budgets, province, contractors etc. Our Tender table is used to primarily tie the database together.

This is best demonstrated using the Entity-Relationship Diagram (ERD). 


![ERD](https://jay-iii.github.io/COMP1020/ER_Diagram_Transparent.png)

## Setup and Execution

### Required Software

```
- MySQL Workbench
- Modern web browser
- File: Setup_National_Database.sql (provided from links above)
- File: Queries_National_Database.sql (provided from links above)
```

### Database Creation:

    1. Open MySQL Workbench and click on the Database Instance under MySQL Connections
    2. Drag and Drop or "Ctrl + Shift + O" / File -> Open SQL Script -> Navigate to the location of " Setup_National_Database.sql "
    3. Click the lightning bolt ("Ctrl + Shift  + Enter") to execute the entire script.
    4. The bottom of the Screen will show Output, green checkmarks are expected
  
### Verify Database:

    1. From within the MySQL Workbench application and after you have run the Setup_National_Database.sql
    2. Drag and Drop or "Ctrl + Shift + O" / File -> Open SQL Script -> Navigate to the location of " Queries_National_Database.sql "
    3. A new Tab will appear with the imported SQL script.
    4. Highlight a code block you would like to test -> Click the Middle lightning bolt or Ctrl + Shift + Enter to run the script.
    5. You will see something like the image below if done correctly.
    
![Working](https://jay-iii.github.io/COMP1020/Verrify_Database.png)

 
        
      
## Project Scope

### Our project aims to:

    - Track Projects and Tenders
    - Track Contractors with their bids placed, and those awarded contracts
    - Track Project budgets
    - Provide scalability per unique needs
    - Provide ease of access
    - Provide custom Queries creation for the information you require
    
### Our project currently can not provide:

    - Live interaction with the Database
        
### Assumptions we made for demonstration purposes:

    - Provinces award Tenders
    - Many Contractors submit Tenders
    - Projects requirements create invites Tenders
    - Contractors are awarded Tenders

# [DrewCrew](https://jay-iii.github.io/COMP1020)
 

National Infrastructure Project Database Consulting Team:
Duru Elli, Aishat Mohammed, Jordan Stella

## Project Overview

We aim to create a centralized database for projects announced by Prime Minister Carney under review by the new Major Projects Office.
Our aim is to track the current status, budget, location of project to aid the Major Projects Office in project management.  This will allow search and filtering options to quickly access the data needed. Our DataBase has been populated by all Nation Building Projects as annonced by Prime Minister Carney   

[Prime Minister of Canada 1st tranche](https://www.pm.gc.ca/en/news/news-releases/2025/09/11/prime-minister-carney-announces-first-projects-be-reviewed-new)  
[Prime Minister of Canada 2nd tranche](https://www.pm.gc.ca/en/news/news-releases/2025/11/13/prime-minister-carney-announces-second-tranche-nation-building-projects)



Our tables include; Projects, Provinces, Contractors, Tenders. This allows tracking of any project with the ability to highlight any relevant information such as budgets, province, contractors ect. Our Tender table is used to primarily tie the database together.   This is best demoonstrated using the ERD. 


![ERD](https://jay-iii.github.io/COMP1020/ER_Diagram_Transparent.png)

## Setup and Execution

### Required Software

```
  MYSQL Workbench 
  Any Modern Webbrowser
```

### Database Creation:

    Open MySQL Workbench and click on the Database Instance under MySQL Connections
    Drag and Drop or "Ctrl + Shift + O" / File Open SQL Script -> Navigate to the loction of " Setup_National_Database.sql "
    Click the lightning bolt ("Ctrl + Shift  + Enter") to execute the entire script.
    The bottom of the Screen will show Output, green checkmnarks are expected
  
### Verrify Database:

    From withen the mySql Wortkbench application and after you have run the Setup_National_Database.sql
    Drag and Drop or "Ctrl + Shift + O" / File Open SQL Script -> Navigate to the loction of " Queries_National_Database.sql "
    A new Tab will aprear with the imported SQL script.
    Highlight a code block you would like to test -> Click the Middler lightning bolt or Ctrl + Shift + Enter to run the script.
    You will see something like the image bellow if done correctly.
    
![Verrify_ Database.png](https://jay-iii.github.io/COMP1020/Verrify_ Database.png)
     
 
        
      
## Project Scope

### Our project aims to:

    Track projects and Tenders.
    Contactors bids placed, and awardaed contracts
    Project budgets
    Scalability to per unique needs
    Provide ease of access
    Custon Queries creation for the information you require. 
    
### Our project currently can not provide:

    Live interaction with the Database
        
### Assumptions we made for demonstration purposes:

    Provinces Award Tenders
    Many Contractors Submit Tenders
    Projects requirements create invites Tenders
    Contractors are Awarded Tenders



    


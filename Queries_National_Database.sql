-- Example Files to Verrify and Demonstrate the DataBase

-- Retrieve all projects located in a specific province (e.g., 'Ontario').
SELECT Projects.project_id AS 'Project ID',
       Projects.project_name AS 'Project Name',
       Projects.project_status AS 'Project Status',
       FORMAT(Projects.budget, 2) AS 'Project Budget',
       Projects.winning_bidder AS 'Winning Bidder',
       Contractors.company_name AS 'Bidder Name',
       Projects.project_hq AS 'Project HQ'
FROM Projects
JOIN Tenders     ON Projects.project_id = Tenders.project_id 
JOIN Provinces   ON Tenders.province_id = Provinces.province_id
JOIN Contractors ON Tenders.contractor_id = Contractors.contractor_id
WHERE Provinces.province_name = 'Ontario';


-- List all projects with a status of 'In-Progress'.
SELECT Projects.project_id AS 'Project ID',
    Projects.project_status AS 'Project Status',
    FORMAT (Projects.budget, 2) AS 'Budget',
    Projects.winning_bidder AS 'Winning Bidder',
    Contractors.company_name AS 'Winner',
    Projects.project_hq AS 'Project HQ'
FROM Projects
LEFT JOIN Tenders     ON Projects.project_id = Tenders.project_id
LEFT JOIN Contractors ON Tenders.contractor_id = Contractors.contractor_id
WHERE Projects.project_status = 'In-Progress';


-- Count the number of projects assigned to each contractor.
SELECT Contractors.company_name AS 'Company Name',
       COUNT(Projects.project_id) AS 'Total Projects'
FROM Contractors
LEFT JOIN Projects
       ON Contractors.contractor_id = Projects.winning_bidder
GROUP BY Contractors.contractor_id, Contractors.company_name
ORDER BY 2 DESC
LIMIT 15;


-- Update the status of a specific project to 'Completed'.
SELECT *
FROM Projects
WHERE project_id = 12;

UPDATE Projects
SET project_status = 'Completed'
WHERE project_id = 12;


-- Calculate the total budget of all projects, grouped by province.
SELECT Provinces.province_name AS Province,
       FORMAT(SUM(Projects.budget), 2) AS 'Total Budget'
FROM Projects
INNER JOIN Tenders ON Projects.project_id = Tenders.project_id
INNER JOIN Provinces ON Tenders.province_id = Provinces.province_id
GROUP BY Provinces.province_name
ORDER BY Province ASC;

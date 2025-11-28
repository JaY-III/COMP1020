-- Retrieve all projects located in a specific province (e.g., 'Ontario').
SELECT Projects.*
FROM Projects
JOIN Tenders ON Projects.project_id = Tenders.project_id
JOIN Provinces ON Tenders.province_id = Provinces.province_id
WHERE Provinces.province_name = 'Ontario'
GROUP BY Projects.project_id;

-- List all projects with a status of 'In-Progress'.
SELECT *
FROM Projects
WHERE project_status = 'In-Progress';

-- Count the number of projects assigned to each contractor.
SELECT Contractors.company_name, COUNT(Projects.project_id) AS number_of_projects
FROM Contractors
LEFT JOIN Projects ON Contractors.contractor_id = Projects.winning_bidder
GROUP BY Contractors.contractor_id, Contractors.company_name;

-- Update the status of a specific project to 'Completed'.
UPDATE Projects
SET project_status = 'Completed'
WHERE project_id = (project_id);

-- Calculate the total budget of all projects, grouped by province.
SELECT Provinces.province_name, SUM(Projects.budget) AS total_budget
FROM Projects
INNER JOIN Tenders ON Projects.project_id = Tenders.project_id
INNER JOIN Provinces ON Tenders.province_id = Provinces.province_id
GROUP BY Provinces.province_name;

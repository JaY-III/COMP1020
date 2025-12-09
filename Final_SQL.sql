CREATE DATABASE IF NOT EXISTS national_infrastructure;
USE national_infrastructure;

CREATE TABLE IF NOT EXISTS Contractors (
contractor_id INT PRIMARY KEY AUTO_INCREMENT,
company_name VARCHAR(100) NOT NULL,
phone_number VARCHAR(25) NOT NULL,
email_address VARCHAR(100) NOT NULL,
street_num VARCHAR(25) NOT NULL,
street_name VARCHAR(100) NOT NULL,
city VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Provinces (
province_id INT PRIMARY KEY AUTO_INCREMENT,
province_name ENUM('Alberta', 'British Columbia', 'Manitoba', 'New Brunswick', 'Newfoundland and Labrador', 'Nova Scotia', 'Ontario', 'Prince Edward Island', 'Quebec', 'Saskatchewan', 'Northwest Territories', 'Nunavut', 'Yukon') NOT NULL,
median_labor_cost INT,
infrastructure_ministry_contact VARCHAR(150),
regional_office VARCHAR(150)
);

CREATE TABLE IF NOT EXISTS Projects (
project_id INT PRIMARY KEY AUTO_INCREMENT,
project_name VARCHAR(100) NOT NULL,
project_status ENUM('Planned', 'In-Progress', 'Completed') DEFAULT 'Planned',
budget VARCHAR(100),
winning_bidder INT, FOREIGN KEY (winning_bidder) REFERENCES Contractors(contractor_id) ON DELETE CASCADE,
project_hq VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Tenders (
tender_id INT PRIMARY KEY AUTO_INCREMENT,
contractor_id INT NOT NULL, FOREIGN KEY (contractor_id) REFERENCES Contractors(contractor_id) ON DELETE CASCADE,
project_id INT NOT NULL, FOREIGN KEY (project_id) REFERENCES Projects(project_id) ON DELETE CASCADE,
province_id INT NOT NULL, FOREIGN KEY (province_id) REFERENCES Provinces(province_id) ON DELETE CASCADE,
bid_status ENUM('Draft', 'Open', 'Closed', 'Evaluating', 'Awarded', 'Cancelled'),
bid_opening_date DATE,
bid_submission_deadline DATE,
bid_value VARCHAR(100)
);

INSERT INTO Contractors (company_name, phone_number, email_address, street_num, street_name, city) VALUES
('ABC construction', '(+1)123-4567', 'contactabccontruction@gmail.com', '555', 'Springfield Street', 'Brampton'),
('Elite construction', '(+1)457-4990', 'contactelitecontruction@gmail.com', '234', 'Maple Street', 'Calgary'),
('Summit construction', '(+1)346-2367', 'officesummitcontruction@gmail.com', '987', 'Spurse Street', 'Edmonton'),
('Apex Renovations', '(+1)890-5672', 'buildwithapexn@gmail.com', '555', 'Springfield Street', 'Brampton'),
('Mastercraft construction', '(+1)732-6233', 'projectsmastercrafts@gmail.com', '679', 'Magnolia Street', 'Markham'),
('Probuild Groups', '(+1)895-4107', 'probuildcontruction@gmail.com', '268', 'Hawthorne', 'Vaughan'),
('Maple Leaf Construction', '(+1)760-2234', 'contactmapleleafcontractors@gmail.com', '290', 'Balsam Street', 'Saskatoon'),
('Canadian Heritage Builders', '(+1)215-4568', 'build@canadianheritage.com', '291', 'Laurel Dr', 'Saskatoon'),
('Green Canada Builders', '(+1)294-8901', 'contactgreencanada@gmail.com', '789', 'Makreal Street', 'Markham'),
('Boreals Painting Co.', '(+1)894-4450', 'contactborealspaint@gmail.com', '540', 'Dogwood Street', 'Victoria'),
('Tundra Tile & Stone', '(+1)891-8506', 'tundratile@gmail.com', '678', 'Chestnut Ave', 'Regina'),
('Shield Contracting Limited', '(+1)227-6572', 'sheildcontractors@gmail.com', '298', 'Popular Ave', 'London'),
('St. Lawrence Structures', '(+1)445-8965', 'contactslcstructors@gmail.com', '231', 'Country Club Dr', 'Kingston'),
('Great Northern Construction', '(+1)120-3324', 'contactgreatnorthcontruction@gmail.com', '685', 'Locust Street', 'Vaughan'),
('Dominion Builders', '(+1)123-4569', 'dominionbuilders@gmail.com', '346', 'Juniper Street', 'Hamilton'),
('EcoNorth Renovations', '(+1)435-4501', 'contacteconorthrenovations@gmail.com', 'unit 260', 'Aspen Rd', 'London'),
('Drew Deck & Construction', '(+1)437-8509', 'drewdeckcanada@gmail.com', 'unit 236', 'Queen Street', 'Kingston'),
('Jordan Construction', '(+1)431-8556', 'contactjordancontruction@gmail.com', 'unit 458', 'Princess Street', 'Kingston'),
('Polar Doors & Windows', '(+1)341-2144', 'service@polar.com', '257', 'Merville Rd', 'Ottawa'),

('Bad construction', '(+1)555-5567', 'Badcontruction@gmail.com', '123', 'Green Street', 'Brampton'),
('Failed construction', '(+1)555-4557', 'failedccontruction@gmail.com', '456', 'Red Street', 'Belleville'),
('Sorry construction', '(+1)555-4555', 'sorrycontruction@gmail.com', '789', 'Blue Street', 'Hunstville'),
('Try again construction', '(+1)555-5565', 'tryagaincontruction@gmail.com', '111', 'Orange Street', 'Corbyville'),
('Next Time construction', '(+1)555-4555', 'Nexttimecontruction@gmail.com', '222', 'Purple Street', 'Picton'),
('Nope construction', '(+1)555-5557', 'Nopecontruction@gmail.com', '333', 'Yellow Street', 'Trenton');

INSERT INTO Projects (project_name, project_status, budget, winning_bidder, project_hq) VALUES
('North Coast Transmission Line', 'Planned', 6000000000, 1, 'Northwest British Columbia'),
('Northwest Critical Conservation Corridor', 'Planned', 6000000000, 6, 'Kitimat, British Columbia'),
('Ksi Lisims LNG', 'Planned', 10000000000, 12, 'Pearse Island, British Columbia'),
('Canada Nickel’s Crawford Project', 'Planned', 6800000000, 11, 'Timmins, Ontario'),
('Nouveau Monde Graphite Matawinie Mine', 'Planned', 421000000, 5, 'Saint-Michel-des-Saints, Québec'),
('Northcliff Resources’ Sisson Mine', 'Planned', 579000000, 12, 'Sisson Brook, New Brunswick'),
('Iqaluit Nukkiksautiit Hydro Project', 'Planned', 500000000, 6, 'Iqaluit, Nunavut'),
('Darlington New Nuclear Project', 'Planned', 20900000000, 15, 'Bowmanville, Ontario'),
('Contrecœur Terminal Container Project', 'Planned', 2300000000, 14, 'Contrecœur, Québec'),
('McIlvenna Bay Foran Copper Mine Project', 'In-Progress', 1100000000, 7, 'East-Central Saskatchewan'),
('Red Chris Mine expansion', 'In-Progress', 2600000000, 5, 'Northwest British Columbia'),
('Critical Minerals Strategy', 'In-Progress', 3800000000, 2, 'Copper Cliff, Ontario'),
('Wind West Atlantic Energy', 'In-Progress', 60000000000, 3, 'Halifax, Nova Scotia'),
('Pathways Plus', 'In-Progress', 16500000000, 19, 'Wetaskiwin, Alberta'),
('Arctic Economic and Security Corridor', 'In-Progress', 1000000000, 11, 'Northwest Territories'),
('Port of Churchill Plus', 'In-Progress', 262500000, 18, 'Churchill, Manitoba'),
('Alto High-Speed Rail', 'In-Progress', 90000000000, 16, 'Toronto, Ontario'),
('Trans Mountain Expansion Project', 'Completed', 34200000000, 9, 'Edmonton, Alberta'),
('National War Memorial', 'Completed', 5000000, 8, 'Ottawa, Ontario'),
('Burlington Canal Lift Bridge', 'Completed', 21000000, 17, 'Burlington, Ontario'),
('Carling Campus', 'Completed', 1500000000, 13, 'Kanata, Ontario'),
('Voltigeurs de Québec Armoury', 'Completed', 104000000, 15, 'Québec, Québec');

INSERT INTO Provinces (province_name, median_labor_cost, infrastructure_ministry_contact, regional_office) VALUES
('Alberta', 35.20, '780-415-0507', 'Alberta Infrastructure Infrastructure Building 6950 - 113 Street Edmonton, AB T6H 5V7' ),
('British Columbia', 36.65, '778-698-7672', 'Minister of Infrastructure PO Box 9021 Stn Prov Govt Victoria, BC V8W 9E2' ),
('Manitoba', 30.39, '204-945-3723', '203 Legislative Building 450 Broadway Winnipeg, MB R3C 0V8' ),
('New Brunswick', 30.31, '506-453-3939', 'Kings Place P. O. Box 6000 Fredericton, NB E3B 5H1' ),
('Newfoundland and Labrador', 32.48, '709-729-3391', 'Department of Transportation and Infrastructure P.O. Box 8700 St. John’s, NL A1B 4J6' ),
('Nova Scotia', 30.79, '902-424-2297', 'PO Box 186 Halifax, NS, B3J 2N2' ),
('Ontario', 36.44, '416-327-4412', '777 Bay Street, 5th floor Toronto, Ontario M5G 2C8' ),
('Prince Edward Island', 29.56, '902-368-4000', 'P.O. Box 2000 Charlottetown PE, C1A 7N8' ),
('Quebec', 33.84, '1-888-355-0511', 'Ministère des Transports et de la Mobilité durable 700, boulevard René-Lévesque Est, bureau A-02 Québec G1R 5H1'),
('Saskatchewan', 32.58, '306-787-8350', '503 – 1801 Hamilton Street, Regina SK S4P 4B4' ),
('Northwest Territories', NULL, '867-767-9000', 'Government of the Northwest Territories P.O. Box1320 Yellowknife, NT X1A 2L9' ),
('Nunavut', NULL, '867-975-6305', 'Government of Nunavut P.O. Box 1000, Station 550 Iqaluit, Nunavut X0A 0H0' ),
('Yukon', NULL, '867-667-9008', 'Government of Yukon Box 2703 Whitehorse, Yukon Y1A 2C6');

INSERT INTO Tenders (contractor_id, project_id, province_id, bid_status, bid_opening_date, bid_submission_deadline) VALUES
(1, 1, 2, 'Awarded', '2019-04-12', '2025-06-01'),
(6, 2, 2, 'Awarded', '2018-09-19', '2024-10-29'),
(12, 3, 2, 'Awarded', '2016-02-20', '2025-01-17'),
(11, 4, 7, 'Awarded', '2020-07-23', '2021-03-23'),
(5, 5, 9, 'Awarded', '2018-11-22', '2022-07-18'),
(12, 6, 4, 'Awarded', '2016-08-04', '2020-12-24'),
(6, 7, 12, 'Awarded', '2021-01-02', '2025-02-28'),
(15, 8, 7, 'Awarded', '2017-07-27', '2024-04-30'),
(14, 9, 9, 'Awarded', '2019-08-09', '2023-11-20'),
(7, 10, 10, 'Awarded', '2018-05-15', '2020-10-21'),
(5, 11, 2, 'Awarded', '2019-03-26', '2024-09-16'),
(2, 12, 7, 'Awarded', '2018-09-21', '2022-06-08'),
(3, 13, 6, 'Awarded', '2022-12-11', '2025-04-19'),
(19, 14, 1, 'Awarded', '2019-07-10', '2023-03-26'),
(11, 15, 11, 'Awarded', '2015-02-17', '2019-03-17'),
(18, 16, 3, 'Awarded', '2016-12-04', '2019-06-05'),
(16, 17, 7, 'Awarded', '2020-02-08', '2025-05-20'),
(9, 18, 1, 'Awarded', '2012-09-30', '2016-12-13'),
(8, 19, 7, 'Awarded', '2014-08-07', '2018-02-21'),
(17, 20, 7, 'Awarded', '2011-02-25', '2017-07-09'),
(13, 21, 7, 'Awarded', '2018-06-18', '2021-12-05'),
(15, 22, 9, 'Awarded', '2017-03-02', '2020-10-04');

-- losing bids
INSERT INTO Tenders (contractor_id, project_id, province_id, bid_status, bid_opening_date, bid_submission_deadline, bid_value)VALUES
(20, 11, 2, 'Cancelled', '2019-03-26', '2024-09-16', '2.8 billion'),
(21, 12, 7, 'Closed', '2018-09-21', '2022-06-08', '4.2 billion'),
(22, 13, 6, 'Closed', '2022-12-11', '2025-04-19', '85 billion'),
(23, 14, 1, 'Cancelled', '2019-07-10', '2023-03-26', '25.2 billion'),
(24, 15, 11, 'Evaluating', '2015-02-17', '2019-03-17', '1.2 billion'),
(25, 16, 3, 'Cancelled', '2016-12-04', '2019-06-05', '365.2 million'),
(22, 17, 7, 'Evaluating', '2020-02-08', '2025-05-20', '98.3 million'),
(21, 18, 1, 'Closed', '2012-09-30', '2016-12-13', '44.3 billion');

--  Projects Located in Ontario
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

-- All In-Progress Projects
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

-- Count of Projects Assigned to Each Contractor
SELECT Contractors.company_name AS 'Company Name',
       COUNT(Projects.project_id) AS 'Total Projects'
FROM Contractors
LEFT JOIN Projects
       ON Contractors.contractor_id = Projects.winning_bidder
GROUP BY Contractors.contractor_id, Contractors.company_name
ORDER BY 2 DESC
LIMIT 15;

-- Update Project Status
SELECT *
FROM Projects
WHERE project_id = 12;

UPDATE Projects
SET project_status = 'Completed'
WHERE project_id = 12;

-- Total Budget of All Projects by Province
SELECT Provinces.province_name AS Province,
       FORMAT(SUM(Projects.budget), 2) AS 'Total Budget'
FROM Projects
INNER JOIN Tenders ON Projects.project_id = Tenders.project_id
INNER JOIN Provinces ON Tenders.province_id = Provinces.province_id
GROUP BY Provinces.province_name
ORDER BY Province ASC;

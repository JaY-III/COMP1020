CREATE DATABASE IF NOT EXISTS national_infrastructure;
USE national_infrastructure;

-- WE ARE HAPPY HERE :)  🌈
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
has_indigenous_land_overlap BOOLEAN,
requires_federal_environmental_review BOOLEAN,
environmental_regulation_grade ENUM('Low', 'Moderate', 'High'),
construction_season_start DATE,
construction_season_end DATE,
median_labor_cost_index INT,
median_material_cost_index INT,
province_infrastructure_ministry_contact VARCHAR(150),
province_regional_office VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Projects (
project_id INT PRIMARY KEY AUTO_INCREMENT,
project_name VARCHAR(100) NOT NULL,
project_management VARCHAR(100),
project_status ENUM('Planned', 'In-Progress', 'Completed') DEFAULT 'Planned',
budget DECIMAL(15,2),
winning_bidder INT, FOREIGN KEY (winning_bidder) REFERENCES Contractors(contractor_id) ON DELETE CASCADE,
project_hq VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Tenders (
tender_id INT PRIMARY KEY AUTO_INCREMENT,
tender_name VARCHAR(100) NOT NULL,
contractor_id INT NOT NULL, FOREIGN KEY (contractor_id) REFERENCES Contractors(contractor_id) ON DELETE CASCADE,
project_id INT NOT NULL, FOREIGN KEY (project_id) REFERENCES Projects(project_id) ON DELETE CASCADE,
province_id INT NOT NULL, FOREIGN KEY (province_id) REFERENCES Provinces(province_id) ON DELETE CASCADE,
bid_value INT NOT NULL,
bid_status ENUM('Draft', 'Open', 'Closed', 'Evaluating', 'Awarded', 'Cancelled'),
bid_opening_date DATE,
bid_submission_deadline DATE
);
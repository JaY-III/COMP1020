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
bid_value INT,
bid_status ENUM('Draft', 'Open', 'Closed', 'Evaluating', 'Awarded', 'Cancelled'),
bid_opening_date DATE,
bid_submission_deadline DATE,
bid_value VARCHAR(100)
);

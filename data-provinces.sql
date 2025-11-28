USE national_infrastructure;
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

SELECT * FROM Provinces;

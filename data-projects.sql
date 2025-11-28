USE national_infrastructure;

INSERT INTO Projects (project_name, project_management, project_status, budget, winning_bidder, project_hq) VALUES
('North Coast Transmission Line', '---mgmt', 'Planned', 6000000000, NULL, 'Northwest British Columbia'),
('Northwest Critical Conservation Corridor', '---mgmt', 'Planned', 6000000000, NULL, 'Kitimat, British Columbia'),
('Ksi Lisims LNG', '---mgmt', 'Planned', 10000000000, NULL, 'Pearse Island, British Columbia'),
('Canada Nickel’s Crawford Project', '---mgmt', 'Planned', 6800000000, NULL, 'Timmins, Ontario'),
('Nouveau Monde Graphite Matawinie Mine', '---mgmt', 'Planned', 421000000, NULL, 'Saint-Michel-des-Saints, Québec'),
('Northcliff Resources’ Sisson Mine', '---mgmt', 'Planned', 579000000, NULL, 'Sisson Brook, New Brunswick'),
('Iqaluit Nukkiksautiit Hydro Project', '---mgmt', 'Planned', 500000000, NULL, 'Iqaluit, Nunavut'),
('Darlington New Nuclear Project', '---mgmt', 'Planned', 20900000000, NULL, 'Bowmanville, Ontario'),
('Contrecœur Terminal Container Project', '---mgmt', 'Planned', 2300000000, NULL, 'Contrecœur, Québec'),
('McIlvenna Bay Foran Copper Mine Project', '---mgmt', 'In-Progress', 1100000000, NULL, 'East-Central Saskatchewan'),
('Red Chris Mine expansion', '---mgmt', 'In-Progress', 2600000000, NULL, 'Northwest British Columbia'),
('Critical Minerals Strategy', '---mgmt', 'In-Progress', 3800000000, NULL, 'Copper Cliff, Ontario'),
('Wind West Atlantic Energy', '---mgmt', 'In-Progress', 60000000000, NULL, 'Halifax, Nova Scotia'),
('Pathways Plus', '---mgmt', 'In-Progress', 16500000000, NULL, 'Wetaskiwin, Alberta'),
('Arctic Economic and Security Corridor', '---mgmt', 'In-Progress', 1000000000, NULL, 'Northwest Territories'),
('Port of Churchill Plus', '---mgmt', 'In-Progress', 262500000, NULL, 'Churchill, Manitoba'),
('Alto High-Speed Rail', '---mgmt', 'In-Progress', 90000000000, NULL, 'Toronto, Ontario'),
('Trans Mountain Expansion Project', '---mgmt', 'Completed', 34200000000, NULL, 'Edmonton, Alberta'),
('National War Memorial', '---mgmt', 'Completed', 5000000, NULL, 'Ottawa, Ontario'),
('Burlington Canal Lift Bridge', '---mgmt', 'Completed', 21000000, NULL, 'Burlington, Ontario'),
('Carling Campus', '---mgmt', 'Completed', 1500000000, NULL, 'Kanata, Ontario'),
('Voltigeurs de Québec Armoury', '---mgmt', 'Completed', 104000000, NULL, 'Québec, Québec');

SELECT * FROM Projects;

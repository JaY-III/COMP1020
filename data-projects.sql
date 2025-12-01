USE national_infrastructure;

INSERT INTO Projects (project_name, project_status, budget, winning_bidder, project_hq) VALUES
('North Coast Transmission Line', 'Planned', '$6 billion', 1, 'Northwest British Columbia'),
('Northwest Critical Conservation Corridor', 'Planned', '$6 billion', 6, 'Kitimat, British Columbia'),
('Ksi Lisims LNG', 'Planned', '$10 billion', 12, 'Pearse Island, British Columbia'),
('Canada Nickel’s Crawford Project', 'Planned', '$6.8 billion', 11, 'Timmins, Ontario'),
('Nouveau Monde Graphite Matawinie Mine', 'Planned', '$421 million', 5, 'Saint-Michel-des-Saints, Québec'),
('Northcliff Resources’ Sisson Mine', 'Planned', '$579 million', 12, 'Sisson Brook, New Brunswick'),
('Iqaluit Nukkiksautiit Hydro Project', 'Planned', '$500 million', 6, 'Iqaluit, Nunavut'),
('Darlington New Nuclear Project', 'Planned', '$20.9 billion', 15, 'Bowmanville, Ontario'),
('Contrecœur Terminal Container Project', 'Planned', '$2.3 billion', 14, 'Contrecœur, Québec'),
('McIlvenna Bay Foran Copper Mine Project', 'In-Progress', '$1.1 billion', 7, 'East-Central Saskatchewan'),
('Red Chris Mine expansion', 'In-Progress', '$2.6 billion', 5, 'Northwest British Columbia'),
('Critical Minerals Strategy', 'In-Progress', '$3.8 billion', 2, 'Copper Cliff, Ontario'),
('Wind West Atlantic Energy', 'In-Progress', '$60 billion', 3, 'Halifax, Nova Scotia'),
('Pathways Plus', 'In-Progress', '$16.5 billion', 19, 'Wetaskiwin, Alberta'),
('Arctic Economic and Security Corridor', 'In-Progress', '$1 billion', 11, 'Northwest Territories'),
('Port of Churchill Plus', 'In-Progress', '$262.5 million', 18, 'Churchill, Manitoba'),
('Alto High-Speed Rail', 'In-Progress', '$90 billion', 16, 'Toronto, Ontario'),
('Trans Mountain Expansion Project', 'Completed', '$34.2 billion', 9, 'Edmonton, Alberta'),
('National War Memorial', 'Completed', '$5 million', 8, 'Ottawa, Ontario'),
('Burlington Canal Lift Bridge', 'Completed', '$21 million', 17, 'Burlington, Ontario'),
('Carling Campus', 'Completed', '$1.5 billion', 13, 'Kanata, Ontario'),
('Voltigeurs de Québec Armoury', 'Completed', '$104 million', 15, 'Québec, Québec');

SELECT * FROM Projects;

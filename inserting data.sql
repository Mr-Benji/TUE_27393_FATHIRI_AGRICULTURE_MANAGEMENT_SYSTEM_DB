
INSERT INTO Farmer (name, contact) VALUES ('Alice N.', 'alice@example.com');
INSERT INTO Farmer (name, contact) VALUES ('Bob M.',   'bob@example.com');
INSERT INTO Farmer (name, contact) VALUES ('Benjamin B.',   'benjamin@example.com');
INSERT INTO Farmer (name, contact) VALUES ('Blaise K.',   'blaise@example.com');

INSERT INTO Cooperative (name, location) VALUES ('DUTERIMBERE', 'BUGESERA');
INSERT INTO Cooperative (name, location) VALUES ('INDANGAMIRWA', 'MUSANZE');
INSERT INTO Cooperative (name, location) VALUES ('KORA WIGIRE', 'BURERA');

INSERT INTO Asset (farmer_id, type, subtype) VALUES (1, 'CROP',      'Maize Hybrid');
INSERT INTO Asset (farmer_id, type, subtype) VALUES (1, 'LIVESTOCK', 'Goat');
INSERT INTO Asset (farmer_id, type, subtype) VALUES (2, 'CROP',      'Cassava');
INSERT INTO Asset (farmer_id, type, subtype) VALUES (1, 'LIVESTOCK', 'Chicken');
INSERT INTO Asset (farmer_id, type, subtype) VALUES (1, 'LIVESTOCK', 'Cow');
INSERT INTO Asset (farmer_id, type, subtype) VALUES (1, 'LIVESTOCK', 'Pig');
INSERT INTO Asset (farmer_id, type, subtype) VALUES (2, 'CROP',      'Sweet Potatoes');
INSERT INTO Asset (farmer_id, type, subtype) VALUES (2, 'CROP',      'Vegetables');
INSERT INTO Asset (farmer_id, type, subtype) VALUES (2, 'CROP',      'Tomatoes');
INSERT INTO Asset (farmer_id, type, subtype) VALUES (1, 'LIVESTOCK', 'Sheep');
INSERT INTO Asset (farmer_id, type, subtype) VALUES (1, 'LIVESTOCK', 'Rabbit');

INSERT INTO Season (asset_id, start_date, expected_yield)
  VALUES (1, DATE '2025-03-01', 1000);
INSERT INTO Season (asset_id, start_date, expected_yield)
  VALUES (2, DATE '2025-02-15',    50);
INSERT INTO Season (asset_id, start_date, expected_yield)
  VALUES (3, DATE '2025-04-01',  800);
  


INSERT INTO Activity (season_id, activity_type, amount, activity_date)
  VALUES (1, 'Planting',     1000, DATE '2025-03-02');
INSERT INTO Activity (season_id, activity_type, amount, activity_date)
  VALUES (1, 'Fertilization',  50, DATE '2025-03-10');
INSERT INTO Activity (season_id, activity_type, amount, activity_date)
  VALUES (1, 'Pest Control',   10, DATE '2025-04-01');
  
  
INSERT INTO Activity (season_id, activity_type, amount, activity_date)
  VALUES (1, 'Vaccination',   10, DATE '2025-04-01'); 
  
  
  INSERT INTO Activity (season_id, activity_type, amount, activity_date)
  VALUES (1, 'Feeding',   10, DATE '2025-04-01'); 
  
  INSERT INTO Activity (season_id, activity_type, amount, activity_date)
  VALUES (1, 'Disease Control',   10, DATE '2025-04-01');  
  
   INSERT INTO Activity (season_id, activity_type, amount, activity_date)
  VALUES (1, 'Health Check',   10, DATE '2025-04-01');  
  
  
  
  

INSERT INTO Harvest (season_id, actual_yield, harvest_date)
  VALUES (1, 950, DATE '2025-06-15');
INSERT INTO Harvest (season_id, actual_yield, harvest_date)
  VALUES (2,  45, DATE '2025-05-20'); 
  
INSERT INTO Report (season_id, coop_id, report_text, report_date)
  VALUES (1, 1, 'Reduce fertilizer in next cycle; watch for late pests.', DATE '2025-06-20');
INSERT INTO Report (season_id, coop_id, report_text, report_date)
  VALUES (2, 2, 'Increase feed frequency; schedule health checks monthly.', DATE '2025-05-25');


  commit
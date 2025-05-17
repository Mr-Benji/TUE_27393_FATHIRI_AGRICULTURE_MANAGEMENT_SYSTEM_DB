
INSERT INTO Farmer (name, contact)
VALUES ('Charlie P.', 'charlie@gmail.com');


UPDATE Asset
SET subtype = 'Maize Local'
WHERE asset_id = 1;


DELETE FROM Report
WHERE report_id = 2;


CREATE TABLE TestTable (
  id           NUMBER PRIMARY KEY,
  created_date DATE DEFAULT SYSDATE
);

ALTER TABLE TestTable
ADD (description VARCHAR2(200));


DROP TABLE TestTable;

commit;
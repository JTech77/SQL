-- Show Existing Database
SHOW DATABASES;

--Creating a table and defining table structure 

CREATE TABLE Blockchains(
  Chain_ID VARCHAR (10),
  Blockchain_Name VARCHAR (30),
  Launch_Date VARCHAR (30),
  Number_Of_Users DECIMAL (40),
  PRIMARY KEY (Blockchain_Name)
);
EXPLAIN Blockchains

--Deleting preexisiting Table

DROP TABLE Blockchains

--Creating New Table for Blockchains

CREATE TABLE Blockchains(
  Chain_ID INT (3),
  Blockchain_Name VARCHAR (30),
  Launch_Date VARCHAR (30),
  Number_Of_Users INT (40),
  Transactions_Per_Second VARCHAR (40),
  PRIMARY KEY (Blockchain_Name)
);

EXPLAIN Blockchains

-- Insert values into table
INSERT INTO Blockchains
	(Chain_ID, Blockchain_Name, Launch_Date, Number_Of_Users, Transactions_Per_Second)
VALUES (1, 'Bitcoin', 'January 2009', 68000000, '7tps'),
		  (2, 'Ethereum', 'July 2015', 221260000, '15tps'),
      (3, 'Avalanche', 'September 2021', 2813610, '4500tps'),
      (4, 'Cosmos', 'March 2019', 595000, '10000tps'),
      (5, 'Cardano', 'September 2017', 1145479, '250tps'),
      (6, 'Polygon', 'October 2017', 100720280, '7000tps'),
      (7, 'Tron', 'July 2018', 45000000, '2000tps'),
      (8, 'Solana', 'March 2020', 3600000, '8453tps'),
      (9, 'NEAR Protocol', 'April 2020', 23185898, '2000tps'),
      (10, 'Harmony', 'June 2019', 656000, '2000tps');

--Show Table and Order by Chain_ID 1-10
      SELECT * FROM Blockchains ORDER BY Chain_ID ASC;


-- Create related table
CREATE TABLE BlockchainsUsers(
  UserID INT (3),
  FirstName VARCHAR (30),
  Country VARCHAR (20),
  Blockchain_Name VARCHAR (30),
  Times_Used INT (3),
  PRIMARY KEY (UserID)
);
EXPLAIN BlockchainsUsers

--Insert values into table
INSERT INTO BlockchainsUsers
	(UserID, FirstName, Country, Blockchain_Name, Times_Used)
VALUES (1, 'James', 'USA', 'Bitcoin', 21),
      (2, 'Sally', 'UK', 'Ethereum', 40),
      (3, 'Oliver', 'France', 'Avalanche', 50),
      (4, 'Manu', 'Italy', 'Cosmos', 10),
      (5, 'Jan', 'Czech Republic', 'Cardano', 5),
      (6, 'Osaro', 'Nigeria', 'Polygon', 2),
      (7, 'Muhammed', 'Dubai', 'Tron', 4),
      (8, 'Hiromi', 'Japan', 'Solana', 7),
      (9, 'Dalijiet', 'India', 'NEAR Protocol', 15),
      (10, 'Cristella', 'New Zealand', 'Harmony', 65);

--Show Table and Order by UserID 1-10
      SELECT * FROM BlockchainsUsers ORDER BY UserID ASC;

--Joining Tables
SELECT * FROM Blockchains
JOIN BlockchainsUsers
ON Blockchains.Chain_ID = BlockchainsUsers.UserID;

-- Update a record
UPDATE BlockchainsUsers
SET FirstName='Gary'
WHERE FirstName='Jan';

SELECT * FROM BlockchainsUsers

-- Delete a record
DELETE FROM BlockchainsUsers
WHERE FirstName="James";

SELECT * FROM BlockchainsUsers
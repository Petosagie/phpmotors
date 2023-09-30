

-- SQL statements
-- Tony Stark insert SQL statement
--
INSERT INTO clients (
    clientFirstName,
    clientLastName,
    clientEmail,
    clientPassword,
    comment)
VALUES (
    'Tony', 
    'Stark', 
    'tony@starkent.com', 
    'Iam1ronM@n', 
    '"I am the real Ironman"'
)


-- To Modify the Tony Stark record to change the clientLevel to 3
UPDATE 
    clients 
SET 
    clientLevel =3
WHERE 
    clientId = 1;

-- To Modify the "GM Hummer" record to read "spacious interior" rather than "small interior"

UPDATE
	inventory
SET    
	invDescription = replace(invDescription, 'small interior', 'spacious interior')
WHERE  
	invId = 12;

-- Delete the Jeep Wrangler from the database
--
DELETE 
FROM 
	inventory
WHERE 
	invId = 1;

-- Update all records in the Inventory table to add "/phpmotors" to the beginning
--  of the file path in the invImage and invThumbnail columns

UPDATE 
    inventory 
SET 
    invImage = CONCAT('/phpmotors', invImage), 
    invThumbnail = CONCAT('/phpmotors', invThumbnail);
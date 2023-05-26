
CREATE TABLE Category (
  category_id VARCHAR(100) NOT NULL PRIMARY KEY,
  category VARCHAR(100) NOT NULL
);


CREATE TABLE Subcategory (
  subcategory_id VARCHAR(100) NOT NULL PRIMARY KEY,
  subcategory VARCHAR(100) NOT NULL
);


CREATE TABLE Contacts (
  contact_id INTEGER NOT NULL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL
);


CREATE TABLE Campaign (
  cf_id INTEGER NOT NULL PRIMARY KEY,
  contact_id INTEGER NOT NULL,
  company_name VARCHAR(100) NOT NULL,
  description VARCHAR(100) NOT NULL,
  goal FLOAT NOT NULL,
  pledged FLOAT NOT NULL,
  outcome VARCHAR(100) NOT NULL,
  backers_count INTEGER NOT NULL,
  country VARCHAR(100) NOT NULL,
  currency VARCHAR(100) NOT NULL,
  launched_date DATE NOT NULL,
  end_date DATE NOT NULL,
  category_id VARCHAR(100) NOT NULL,
  subcategory_id VARCHAR(100) NOT NULL,
  FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
  FOREIGN KEY (category_id) REFERENCES Category(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);


SELECT * FROM Campaign;
SELECT * FROM Category;	
SELECT * FROM Subcategory;
SELECT * FROM Contacts;








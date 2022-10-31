CREATE TABLE IF NOT EXISTS cars (VIN VARCHAR(20), manufacturer VARCHAR(20), 
	model VARCHAR(20), years VARCHAR(20), color VARCHAR(20)
);


CREATE TABLE IF NOT EXISTS costumers (customerID VARCHAR(20), name VARCHAR(20),
  phoneNumber VARCHAR(20), email VARCHAR(20),
  address VARCHAR(20), city VARCHAR(20), state_province VARCHAR(20),
  country VARCHAR(20), postalCode VARCHAR(20)
);


CREATE TABLE IF NOT EXISTS salespersons (ID VARCHAR(20), Staff_ID VARCHAR(20),
  Name VARCHAR(20), Store VARCHAR(20)
);


CREATE TABLE IF NOT EXISTS invoice (ID VARCHAR(20),
  Invoice_Number VARCHAR(20), Date VARCHAR(20),
  Car VARCHAR(20), Customer VARCHAR(20), Salespersons VARCHAR(20)
);
 
  
INSERT INTO cars (VIN, manufacturer, model, years,color)
    VALUES('3K096I98581DHSNUP',	'Volkswagen','Tiguan',2019,'Blue'),
    ('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
    ('RKXVNNIHLVVZOUB4M','Ford', 'Fusion',2018,'White'),
    ('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
    ('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
    ('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');
INSERT INTO costumers(customerID,name,phoneNumber,address,city,state_province,country,postalCode)
	VALUES(10001,'Pablo Picasso',34636176382,'Paseo de la Chopera, 14','Madrid','Madrid','España',28045),
	(20001,'hedy lamarr',431514442250,'Weiglgasse 10','Viena','Viena','Austria',1150),
	(30001,'katherine johnson',12023580000,'300 E St SW','Washington DC','Washington','Estados Unidos',20546);
	
INSERT INTO salespersons (ID, Name,Store)
	VALUES(00001,'crucero petey','Madrid'),
	(00002,'ana estesia','Barcelona'),
	(00003,'Pablo Molive','Berlina'),
	(00004,'Gail Fuerzaviento','París'),
	(00005,'paige turner','mimia'),
	(00006,'Bob Frapples','Ciudad de México'),
	(00007,'walter melón','Amsterdam'),
	(00008,'shonda leer','Sao Paulo');
	
INSERT INTO invoice (ID,Invoice_Number,Date,Car,Customer,Salespersons)
	VALUES(0,852399038,22082018,0,1,3),
	(1,731166526,31122018,3,0,5),
	(2,271135104,22012019,2,2,7);

 
update costumers
set email = 'ppicasso@gmail.com'
where 'Pablo Picasso'=10001;
update costumers
set email = 'lamarr_hd@hollywood.com'
where 'hedy lamarr'=20001 ;
update costumers
set email = 'hola@nasa.gov'
where 'katherine johnson'=30001;
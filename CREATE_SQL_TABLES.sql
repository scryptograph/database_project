

CREATE TABLE Staff(
	staffNumber	int(10) NOT NULL,
	staffName	varchar(255),
	email		varchar(255),
	staffAddress varchar(255),
	staffDOB	date,
	gender		varchar(2),
	position	varchar(255),
	location	varchar(255),
	staffPhoneNumber	int(10),
	PRIMARY KEY (staffNumber));

CREATE TABLE Advisor(
	advisorName		varchar(255) NOT NULL,
	position		varchar(255),
	department 		varchar(255),
	telephoneNumber int(10),
	email 			varchar(255),
	roomNumber 		int(10),
	staffNumber 	int(10),
	FOREIGN KEY (staffNumber) REFERENCES Staff(staffNumber),
	PRIMARY KEY (advisorName));

CREATE TABLE Hall(
	hallNumber int(10) NOT NULL,
	hallName	varchar(255),
	hallAddress	varchar(255),
	staffNumber int(10),
	FOREIGN KEY (staffNumber) REFERENCES Staff(staffNumber),
	PRIMARY KEY (hallNumber));

CREATE TABLE Flat(
	flatNumber	int(10) NOT NULL,
	flatAddress	varchar(255),
	noOfRooms	int(10),
	PRIMARY KEY (flatNumber));

CREATE TABLE Inspection(
	inspetionNumber	int(10) NOT NULL,
	inspDate		date,
	passInspection	varchar(255),
	comments		varchar(255),
	flatNumber		int(10),
	FOREIGN KEY (flatNumber) REFERENCES Flat(flatNumber),
	PRIMARY KEY (inspetionNumber));

CREATE TABLE Room(
	roomNumber	int(10),
	placeNumber	int(10) NOT NULL,
	roomRate	float(10),
	PRIMARY KEY (placeNumber)
	hallNumber 	int(10),
	flatNumber 	int(10),
	FOREIGN KEY (hallNumber) REFERENCES Hall(hallNumber),
	FOREIGN KEY (flatNumber) REFERENCES Flat(flatNumber));

CREATE TABLE Student(
	bannerNumber	int(10) NOT NULL,
	studentName		varchar(255),
	homeAddress		varchar(255),
	phoneNumber 	int(10),
	email			varchar(255),
	dob 			date,
	gender			varchar(2),
	nationality		varchar(255),
	studentCategory	varchar(255),
	specialNeeds	varchar(255),
	currentStatus	varchar(255),
	major			varchar(255),
	minor			varchar(255),
	comments		varchar(255),
	PRIMARY KEY (bannerNumber),
	advisorName		varchar(255),
	FOREIGN KEY (advisorName) REFERENCES Adviser(advisorName));


CREATE TABLE Lease(
	leaseNumber		int(10) NOT NULL,
	duration		int(10),
	fullName		varchar(255),
	roomPlaceNumber	int(10),
	address 		varchar(255),
	enterDate		date,
	exitDate		date,
	bannerNumber 	int(10),
	placeNumber 	int(10),
	FOREIGN KEY (bannerNumber) REFERENCES Student(bannerNumber),
	FOREIGN KEY (placeNumber) REFERENCES Room(placeNumber),
	PRIMARY KEY (leaseNumber));


CREATE TABLE Invoice(
	invoiceNumber	int(10) NOT NULL,
	leasePeriod		varchar(255),
	paymentDue		float(10),
	studentFullName	varchar(255),
	bannerNumber	int(10),
	placeNumber 	int(10),
	roomNumber 		int(10),
	semester		varchar(255),
	address 		varchar(255),
	paymentMethod	varchar(255),
	dateOfPayment	date,
	dateReminder1	date,
	dateReminder2	date,
	leaseNumber		int,
	FOREIGN KEY (leaseNumber) REFERENCES Lease(leaseNumber),
	PRIMARY KEY (invoiceNumber));

CREATE TABLE Course(
	courseNumber 	int(10) NOT NULL,
	courseTitle		varchar(255),
	courseYear		int(4),
	instructorName	varchar(255),
	instructorTelephone	int(10),
	instructorEmail	varchar(255),
	roomNumber 		int(10),
	departmentName	varchar(255),
	buildingName	varchar(255),
	courseSemester	varchar(255),
	PRIMARY KEY (courseNumber));



CREATE TABLE NextOfKin(
	familyNumber 	int NOT NULL,
	PRIMARY KEY (familyNumber),
	familyName		varchar(255),
	relationship	varchar(255),
	familyAddress	varchar(255),
	familyTelephone	int(10),
	bannerNumber  	int(10),
	FOREIGN KEY (bannerNumber) REFERENCES Student(bannerNumber));


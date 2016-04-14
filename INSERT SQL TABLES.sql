INSERT INTO `staff` (`staffNumber`, `staffName`, `email`, `staffAddress`, `staffDOB`, `gender`, `position`, `location`, `staffPhoneNumber`) VALUES ('106', 'John Clog', 'john.clog@crappyhypotheticaluniversity.com', '321 Baker St. ', '2015-11-04', 'M', 'Assistant Dean', 'Boston 101', '5596457'), ('105', 'Abraham Ahmed Silva', 'abraham.ahmed.silva@omgwtfbbq.com', '115 St. and Quaker', '2015-11-23', 'M', 'Student Advisor', '211 Glade Bldg', '4756632');

INSERT INTO `adviser` (`advisorName`, `position`, `department`, `telephoneNumber`, `email`, `roomNumber`, `staffNumber`) VALUES ('John Clog', 'Assistant Dean', 'Engineering', '5596457', 'john.clog@crappyhypotheticaluniversity.com', '101', '106'), ('Abraham Ahmed Silva', 'Student Advisor', 'Arts and Crafts', '4756632', 'abraham.ahmed.silva@omgwtfbbq.com', '211', '105');

INSERT INTO `student` (`bannerNumber`, `studentName`, `homeAddress`, `phoneNumber`, `email`, `dob`, `gender`, `nationality`, `studentCategory`, `specialNeeds`, `currentStatus`, `major`, `minor`, `comments`, `advisorName`) VALUES ('104362', 'Rony Tortilla', '617 Frankford Ave. ', '65422312', 'rony.tortilla@aol.com', '2015-11-19', 'M', 'Murican', 'Freshman', 'Wheelchair', 'Full Time', 'CMPE', 'MATH', 'Fat', 'Abraham Ahmed Silva');

INSERT INTO `staff` (`staffNumber`, `staffName`, `email`, `staffAddress`, `staffDOB`, `gender`, `position`, `location`, `staffPhoneNumber`) VALUES ('101', 'James Carter', 'jc@its4inthemorning.com', '312 Brentwood Ave.', '2015-11-04', 'M', 'Database Programmer', 'Drane 201', '6548121'), ('102', 'Pauli Lastname', 'pauli.lastname@boss.com', '8456 Fully St. ', '2015-11-30', 'M', 'Janitor', 'Janitor Building', '8465651');

INSERT INTO `hall` (`hallNumber`, `hallName`, `hallAddress`, `staffNumber`) VALUES ('1', 'Bledsoe', '125 and IDK Ave.', '102');

INSERT INTO `flat` (`flatNumber`, `flatAddress`, `noOfRooms`) VALUES ('100', '547 What Ave. ', '4'), ('101', '547 What Ave.', '4'), ('102', '411 What Now Rd. ', '2');

INSERT INTO `inspection` (`inspetionNumber`, `inspDate`, `passInspection`, `comments`, `flatNumber`) VALUES ('100', '2015-11-04', 'Pass', 'Dead Rats everywhere', '100');

INSERT INTO `room` (`roomNumber`, `placeNumber`, `roomRate`, `hallNumber`, `flatNumber`) VALUES ('201', '201', '140.5', '1', NULL), ('202', '202', '110', NULL, '102');

INSERT INTO `student` (`bannerNumber`, `studentName`, `homeAddress`, `phoneNumber`, `email`, `dob`, `gender`, `nationality`, `studentCategory`, `specialNeeds`, `currentStatus`, `major`, `minor`, `comments`, `advisorName`) VALUES ('1012', 'Patrick', '321 Why Does It Matter Rd. ', '3216549', 'patrick.star@fakespongebob.onion', '2015-11-04', 'M', 'Oceania', 'Freshman', NULL, 'Part Time', 'Arts ', NULL, NULL, 'John Clog');

INSERT INTO `student` (`bannerNumber`, `studentName`, `homeAddress`, `phoneNumber`, `email`, `dob`, `gender`, `nationality`, `studentCategory`, `specialNeeds`, `currentStatus`, `major`, `minor`, `comments`, `advisorName`) VALUES ('1013', 'Jacked The Ripped', 'PB&J Ave. and 69th St. ', '911', 'jacked@3d.com', '2001-10-10', 'F', NULL, 'Senior', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `student` (`bannerNumber`, `studentName`, `homeAddress`, `phoneNumber`, `email`, `dob`, `gender`, `nationality`, `studentCategory`, `specialNeeds`, `currentStatus`, `major`, `minor`, `comments`, `advisorName`) VALUES ('1014', 'Pickachu', 'Pokeball #2 ', '911', NULL, '2001-10-10', 'F', NULL, 'Graduate', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `inspection` (`inspetionNumber`, `inspDate`, `passInspection`, `comments`, `flatNumber`) VALUES ('102', '2015-10-10', 'No', 'Wall Missing', '102');

INSERT INTO `inspection` (`inspetionNumber`, `inspDate`, `passInspection`, `comments`, `flatNumber`) VALUES ('103', '2015-10-10', 'No', 'Illegal Substance Found', '102')

# database_project
MySQL Relational Database Project 

README 

Please follow the following steps to set up on Windows Machine. 

XAMPP Instructions
	
	1. Go to https://www.apachefriends.org/download.html and click “Download (32 bit)”.

	2. Go through the setup installer to finish installing XAMPP.

	3. Open up the XAMPP Control Panel in administrative mode.

	4. Click on the red x’s next to “Apache” and “MySQL” in order to download them. 

	OPTIONAL - For my setup I had to change the “Listen” port in the Apache config file. 

	Here are the steps for doing so.

	a. Click on “Config” on the Apache line next to “Admin”.

	b. Select “Apache (httpd.conf)”.

	c. Do a ctrl f to open the find interface and type in “80” (without quotations).

	d. Change “Listen 80” to “Listen 8080”.

	e. Save and close the file.

	5. Click the “Start” button for both Apache and MySQL.

How to Run the Website

1. All source code is located in FINALBOSS

2. Make sure all website files are in the following directory - C:\xampp\htdocs

The Directory will look as follows

	-htdocs

		-FINALBOSS

		-index.php

		-README

		-CREATE_TABLE.sql

		-INSERT_TABLE.sql

		- ...

		- ...

3. Click on Admin on MySQL in the XAMPP Control Panel

4. Click on databases tab, and create a new database called admission_office

5. Click on the SQL tab, and run CREATE_SQL_TABLES then INSERT_SQL_TABLES located in FINALBOSS directory.

6. Type in " localhost:8080/FINALBOSS/index.php" into any browser to access the webpage

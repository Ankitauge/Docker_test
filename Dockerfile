1. Your logic/steps :
	• create a dev.sql file that contain creation of database pucsdStudents and inside that
	  database I created a table named studentData. And inserted data in that table.
	• Then I run this file on MySQL and end up with successfull operations.
	• Then I pulled a MySQL image from the docker hub
	• After that I created a Dockerfile, Inside the Dockerfile I added dev.sql to the docker-
	  entrypoint so that all the things in dev.sql will execute successfully.
	• Now in order to build my customized mysql image I build a image and all the lines in my
	  Dockerfile are executed line-by-line.
	• Now it’s time to check whether your data is successfully fetched in the image or not so that
	  for that I ran that image.
	• After that I executed that image in bash. And given the username and password as
	  mentioned in the Dockerfile and it ran sucessfully for the given database.


2. Explanation of Dockerfile :
	1. I’m importing all things from MySQL in the first line.
	2. Env. varible to the root password is set .
	3. Then I create a envirnment variable but this this tie it’s for new database.
	4. After that I created a new user as pucsd
	5. then set the password for the new user as pucsd.
	6. The at the begining of the database I have to add my dev.sql file so that I added that file in
	   the directory /docker-entrypoint-initdb.d
	7. At the end I have given a port number on which this operations will execute i.e. 3306.

   


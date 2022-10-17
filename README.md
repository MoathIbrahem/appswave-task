# appswave-task

This app is responsible for collecting the users contact details. 

# Prerequisites:
- Maven 3.8.6
- GIT
- JDK 18
- MySQL  8.0.31

# Steps to install and run the applicaiton on local machine:

- On your MySQL Workbench, create connection with the default port 3306.

- Run below SQL Query to create database schema : 

```
CREATE DATABASE `contact_db1` DEFAULT CHARACTER SET utf8mb3 DEFAULT ENCRYPTION='N';
```

- Run the below SQL Query to create contact details table : 
```
CREATE TABLE contact_info (id INT AUTO_INCREMENT PRIMARY KEY,
						   con_full_name VARCHAR(70) NOT NULL, 
                           con_phone_number VARCHAR(50) NOT NULL,
                           con_email VARCHAR(50) NOT NULL,
                           con_address VARCHAR(250) NOT NULL,
                           con_subject VARCHAR(50) NOT NULL,
                           con_inquiry_type VARCHAR(50) NOT NULL,
                           con_contact VARCHAR(50) NOT NULL,
                           con_more_information VARCHAR(250) NOT NULL,
                           con_region VARCHAR(10) NOT NULL);
```

- Make sure that the database configurations is set correctly in "/src/main/resources/config.properties".

- Clone the app with the following command :
```
git clone https://github.com/MoathIbrahem/appswave-task.git
```

- Build the project with the following command :
```
mvn clean package
```

Copy the generated appswave-task-contact-us.war to the Tomcat webapps folder

Start Tomcat by running bin\startup.bat

Tomcat will automatically deploy the war

Open http://localhost:8080/appswave-task-contact-us/ContactUs in your browser
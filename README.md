# SeniorDesign-CorpWellness

HOW TO SETUP AND VIEW WEBPAGE:

    1. REQUIREMENTS & SETUP:

    python 3.12.2 , from python.org. Not MSYS or linux fashioned python install.

    MySQL installed in full, with a DB host, username, and password ready to be configured

Steps for MySQL:

Install MySQL Server and Configure Database
	
MySQL Setup: Ensure that MySQL Server is properly installed and running. If not, download and install MySQL from the MySQL official site.

Database Creation: Before running the application, you need to create the database and initialize its schema. All the necessary build scripts for setting up the database, populating it with initial data, and executing queries are located in the Build_Scripts folder within the project directory.

Steps to Set Up the Database:
Access the Build_Scripts Folder: 
- Navigate to the Build_Scripts folder in your project directory. It contains SQL files for creating the database, tables, and inserting data.

Run the SQL Scripts:
Log in to MySQL:
mysql -u <DB_USER> -p
Execute the database scripts

Verify the Database Setup:

Check that the database and tables have been created:
SHOW DATABASES;
USE employee_wellness;
SHOW TABLES;
Test Queries:


    2. Initialize VENV: 

    I recommend setting up a virtual environment, but its not necessary if you know for a fact that you also have python 3.12.2


        a.     SHIFT + CTRL + P -->  
               "Python: Select Intrepreter" --> 
	           "Python 3.12.2 ('venv':venv) .\venv\Scripts\python.exe      Recommended" 

	            ----- (Recommended or Workspace works) -----

        b.   Now when you hover over 'pwsh' in the top right of the terminal, you will see "Show Environment Contributions"

            The contents should include 

            """## Extension: ms-python.python

                  Activated environment for `.\.venv\Scripts\python.exe`"""


    3. Create local config file

        Create a 'config.py' file within the "Employee_Wellness_App" folder. It should look like:

    -------------------------------------------------------------------
        class Config:
            SECRET_KEY = ''                   # Use Secure key
            DB_HOST = ''                      # DB host name
            DB_USER = ''                      # Your username
            DB_PASSWORD = ''                  # Your password
            DB_NAME = 'employee_wellness'     # DB Name
    -------------------------------------------------------------------

    4.  cd into the "Web_Build" folder, then run 

        "pip install -r requirements.txt" 

    5. Run the 'run.py' file and follow the link provided in the cmd propmt.


    6. Once the application is running, follow the instructions in the REPORT.pdf. 

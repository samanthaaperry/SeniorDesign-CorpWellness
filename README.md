# SeniorDesign-CorpWellness

HOW TO SETUP AND VIEW WEBPAGE:

    1. REQUIREMENTS & SETUP:

    python 3.12.2 , from python.org. Not MSYS or linux fashioned python install.

    MySQL installed in full, with a DB host, username, and password ready to be configured


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

    5. Run the 'run.py' file in the 'Employee_Wellness_App' folder
       Next follow the link provided in the cmd propmt

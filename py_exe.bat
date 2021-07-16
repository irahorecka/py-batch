@ECHO OFF
:: Declare Python file to execute - hard-coded to enable ease of execution by non-CMD-savy operators.
SET "py_file=joke.py" 

ECHO ===========================================================
ECHO Configuring Python environment in %~dp0
ECHO ===========================================================
IF EXIST venv\ (
	ECHO Python environment already exists.
) ELSE (
	ECHO Creating Python environment...
	virtualenv venv
)
call venv\Scripts\activate
ECHO Installing requirements...
pip install -r requirements.txt
ECHO ===========================================================
ECHO Environment setup complete. Executing %py_file%...
ECHO ===========================================================
ECHO.
py %py_file%
ECHO.
PAUSE

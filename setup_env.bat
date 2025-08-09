@echo off
REM Script to set up Python environment using uv on Windows

REM Check if uv is installed
pip show uv >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo uv is not installed. Installing uv...
    pip install uv
)

REM Create virtual environment with Python 3.10
echo Creating virtual environment with Python 3.10...
uv venv --python=3.10

echo.
echo To activate the virtual environment, run:
echo .venv\Scripts\activate

echo.
echo After activating, install dependencies with:
echo uv pip install -r requirements.txt

echo.
echo Then run the application with:
echo streamlit run app.py
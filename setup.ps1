# DLS26 Fan Website - PowerShell Setup Script
# Windows automation and setup

Write-Host "=== DLS26 Project Setup (Windows) ===" -ForegroundColor Green

# Create virtual environment
Write-Host "Setting up Python virtual environment..." -ForegroundColor Cyan
python -m venv venv
& ".\venv\Scripts\Activate.ps1"

# Install dependencies
Write-Host "Installing Python dependencies..." -ForegroundColor Cyan
pip install -r requirements.txt

# Create directories
Write-Host "Creating project directories..." -ForegroundColor Cyan
@("data", "logs", "src", "public") | ForEach-Object {
    if (-not (Test-Path $_)) {
        New-Item -ItemType Directory -Name $_ | Out-Null
    }
}

# Initialize database
Write-Host "Initializing database..." -ForegroundColor Cyan
python main.py

Write-Host "=== Setup Complete ===" -ForegroundColor Green

# Function to run the app
function Start-DLS26App {
    Write-Host "Starting DLS26 application..." -ForegroundColor Yellow
    & ".\venv\Scripts\Activate.ps1"
    python main.py
}

# Function to run tests
function Invoke-DLS26Tests {
    Write-Host "Running tests..." -ForegroundColor Yellow
    pytest tests/
}

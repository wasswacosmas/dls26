#!/bin/bash
# DLS26 Fan Website - Bash Automation Scripts

# Script to setup DLS26 project environment

echo "=== DLS26 Project Setup ==="

# Create virtual environment for Python
echo "Setting up Python virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

# Create necessary directories
echo "Creating project directories..."
mkdir -p data logs src public

# Initialize database
echo "Initializing database..."
python3 main.py

# Display setup completion
echo "=== Setup Complete ==="
echo "Virtual environment: venv"
echo "Python packages installed from requirements.txt"
echo "Project directories created"

# Function to run the application
run_app() {
    echo "Starting DLS26 application..."
    source venv/bin/activate
    python3 main.py
}

# Function to run tests
run_tests() {
    echo "Running tests..."
    pytest tests/
}

# Export functions
export -f run_app
export -f run_tests

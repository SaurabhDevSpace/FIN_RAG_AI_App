#!/bin/bash

# Script to set up Python environment using uv

# Check if uv is installed
if ! command -v uv &> /dev/null; then
    echo "uv is not installed. Installing uv..."
    pip install uv
fi

# Create virtual environment with Python 3.10
echo "Creating virtual environment with Python 3.10..."
uv venv --python=3.10

# Activate virtual environment
echo "To activate the virtual environment, run:"
echo "source .venv/bin/activate  # On Unix/macOS"
echo ".venv\Scripts\activate  # On Windows"

echo "\nAfter activating, install dependencies with:"
echo "uv pip install -r requirements.txt"

echo "\nThen run the application with:"
echo "streamlit run app.py"
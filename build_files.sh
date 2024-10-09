#!/bin/bash

# Stop execution if any command fails
set -e

echo "Starting build process..."

# Activate the virtual environment (if applicable)
echo "Activating virtual environment..."
source path/to/your/virtualenv/bin/activate

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Run database migrations
echo "Running migrations..."
python manage.py migrate

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput

# Run tests (optional, if you want to ensure tests pass before deployment)
# echo "Running tests..."
# python manage.py test

# Deactivate the virtual environment
echo "Deactivating virtual environment..."
deactivate

echo "Build process completed!"
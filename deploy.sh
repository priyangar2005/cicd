#!/bin/bash

# Stop any running Flask apps
pkill -f app.py

# Navigate to the application directory
cd /home/ec2-user/cicd

# Install dependencies
pip3 install -r requirements.txt

# Run the application in the background
nohup python3 app.py > app.log 2>&1 &

#!/bin/dash
# Save the command pwd in the environment variable
pwd="pwd"
eval "$pwd"
VAR_PWD=$(eval "$pwd")
echo "$VAR_PWD" 
# Create folders for data
mkdir -p data-Jenkins
mkdir -p data-Nexus
mkdir -p data-Sonarqube/conf
mkdir -p data-Sonarqube/data
mkdir -p data-Sonarqube/logs
mkdir -p data-Sonarqube/extensions
#Create enviroment file
echo "DEVOPS_HOME="$VAR_PWD"" > .env
# Permissions
echo -e "ubuntu" | chmod 777 data-Nexus
# Build docker-compose
echo -e "ubuntu" | sudo docker-compose up --build
echo "-----------------------------END-----------------------------"

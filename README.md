# DevOps for QA Automation Bootcamp
This repository cotains sh scripts to manage docker containers

## What is each script used for
### command-scrip
* Creates and runs the next containers: sonardb, sonar, jenkins, nexus
* Creates the next volumes: postgresql postgresql_data sonarqube_data sonarqube_extensions sonarqube_logs jenkins_home nexus_data
* Create the next network: devops-net (bridge)

### rm-instances-scrip
* Removes the next containers: sonardb, sonar, jenkins, nexus
* Removes the next volumes: postgresql postgresql_data sonarqube_data sonarqube_extensions sonarqube_logs jenkins_home nexus_data
* Removes the next network: devops-net


## How to run the scrips
### Environment requirenments
* Docker CLI
### Steps
1. Using a bash terminal, clone this repository
2. Go to the main folder
3. execute `./script-name.sh`

Created by **Daniel Gómez Betancur**

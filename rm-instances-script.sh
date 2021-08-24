sudo docker rm -f sonardb sonarqube jenkins nexus
sudo docker volume rm postgresql postgresql_data sonarqube_data sonarqube_extensions sonarqube_logs jenkins_home nexus_data
sudo docker network rm devops-net

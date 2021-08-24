sudo docker network create devops-net
sudo docker volume create postgresql
sudo docker volume create postgresql_data
sudo docker run -d --name sonardb --network devops-net --restart always -e POSTGRES_USER=sonar -e POSTGRES_PASSWORD=sonar -v postgresql:/var/lib/postgresql -v postgresql_data:/var/lib/postgresql/data postgres:12.1-alpine
sudo docker volume create sonarqube_data
sudo docker volume create sonarqube_extensions
sudo sysctl -w vm.max_map_count=524288
sudo sysctl -w fs.file-max=131072
ulimit -n 131072
ulimit -u 8192
sudo docker volume create sonarqube_logs
sudo docker run -d --name sonarqube --network devops-net -p 9000:9000 -e SONARQUBE_JDBC_URL=jdbc:postgresql://sonardb:5432/sonar -e SONAR_JDBC_USERNAME=sonar -e SONAR_JDBC_PASSWORD=sonar -v sonarqube_data:/opt/sonarqube/data -v sonarqube_extensions:/opt/sonarqube/extensions -v sonarqube_logs:/opt/sonarqube/logs sonarqube:8.9.0-community
sudo docker volume create jenkins_home
sudo docker run -d --name jenkins --network devops-net -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins/jenkins
sudo docker volume create nexus_data
sudo docker run -d --name nexus --network devops-net -v nexus_data:/nexus-data -p 8081:8081 sonatype/nexus3


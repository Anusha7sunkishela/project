pipeline {
    agent any

    stages {
        stage('Validate') {
            steps {
                echo 'Building..'
                sh 'mvn compile'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'mvn test'
            }
        }
        stage('Sonar analysis') {
            steps {

              echo 'Sonar analysis....'
              sh 'mvn sonar:sonar \
  -Dsonar.host.url=http://54.197.15.28:9000 \
 -Dsonar.login=9bba05bfe5803e4141ba9e52e0e46f08dc9f188e'
            }
        }
         stage('Nexus') {
            steps {
                echo 'Nexus new1..'
                
		sh 'mvn package'
		
                
	   }
        }
          stage('Deploy') {
            steps {
                echo 'Deploy..'
                sh 'wget --user admin --password admin123 http://54.197.15.28:8081/nexus/service/local/repositories/releases/content/com/web/cal/WebAppCal/1.3.7/WebAppCal-1.3.7.war'
 sh 'sudo cp WebAppCal-1.3.7.war /home/centos/apache-tomcat-7.0.94/webapps'
            }
        }

    }
}

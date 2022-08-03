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
  -Dsonar.host.url=http://3.89.119.29:9000 \
 -Dsonar.login=88660653ece851c86471b5a0c3cd491255e4a1db'
            }
        }
         stage('Nexus') {
            steps {
                echo 'Nexus new1..'
                
		sh 'mvn deploy'
		
                
	   }
        }
          stage('Deploy') {
            steps {
                echo 'Deploy..'
                sh 'wget --user admin --password admin123 http://3.89.119.29:8081/nexus/service/local/repositories/releases/content/com/web/cal/WebAppCal/1.3.8/WebAppCal-1.3.8.war'
 sh 'sudo cp WebAppCal-1.3.8.war /home/centos/apache-tomcat-7.0.94/webapps'
            }
        }

    }
}

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



           stage('Docker Build') {
             steps {
                echo 'Docker Build..'
                sh 'docker build -t Anu/mydockerimg .'

            }
        }
		
           stage('Docker Run') {
             steps {
                echo 'Docker RUN...'
                sh 'docker run -dt --name myimg -p 8080:8090 Anu/mydockerimg'

            }
        }




    }
}

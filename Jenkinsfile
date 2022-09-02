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
  -Dsonar.host.url=http://3.91.150.24:9000 \
 -Dsonar.login=88660653ece851c86471b5a0c3cd491255e4a1db'
            }
        }

       stage('Package') {
            steps {
                echo 'converting src code into war file..'
                sh 'mvn clean package'
            }
        }




         stage('Nexus') {
            steps {
                echo 'Nexus new1..'
                
	          sh  'mvn deploy'
		
                
	   }
        }



           stage('Docker Build') {
             steps {
                echo 'Docker Build..'
                sh 'docker build -t anu/mydockerimg .'

            }
        }
		
           stage('Docker Run') {
             steps {
                echo 'Docker RUN...'
                sh 'docker run -dt --name myimg -p 8090:8080 anu/mydockerimg'

            }
        }




    }
}

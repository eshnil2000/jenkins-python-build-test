pipeline {
    agent none 
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'python36-alpine-base-jenkins-plugins' 
                }
            }
            steps {
                sh 'python --version' 
            }
        }
    }
}



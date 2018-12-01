pipeline {
    agent none 
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'python:3.6-alpine' 
                }
            }
            steps {
                sh 'python --version' 
                sh 'pip install -r requirements.txt'
                sh 'python test/test_flaskapi.py'
            }
        }
    }
}



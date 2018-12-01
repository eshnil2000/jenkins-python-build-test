pipeline {
    agent none 
    stages {
        stage('Test') { 
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
        stage('Deploy') { 
            agent {
                docker {
                    image 'python:3.6-alpine' 
                }
            }
            steps {
                sh 'pip install -r requirements.txt'
                sh 'set -x'
                sh 'python flaskapi.py &'
                sh 'sleep 1'
                sh 'echo $! > .pidfile'
                sh 'set +x'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh 'set -x'
                sh 'kill $(cat .pidfile)'
            }
        }        
    }
}



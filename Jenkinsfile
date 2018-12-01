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
                    args '-p 5000:5000'
                }
            }
            steps {
                sh 'pip install -r requirements.txt'
<<<<<<< HEAD
                sh './jenkins/scripts/deliver.sh'
>>>>>>> eba305ef6fc628209c54826fa7822ad2fd6ddbc1
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/kill.sh'
            }
        }        
    }
}



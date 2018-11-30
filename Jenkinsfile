pipeline {
    agent none
    stages {
        stage('Build') {
            steps {
                docker build -t flask_app .

            }
        }
   }
}

pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'chmod +x script.sh'
                sh './script.sh'
            }
        }
    }
}

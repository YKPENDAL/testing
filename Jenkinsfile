pipeline {
    agent any

    environment {
        SUDO_USERNAME = 'Yash'
        SUDO_PASSWORD = 'yash@12345'
    }

    stages {
        stage('Test') {
            steps {
                sh 'chmod +x script.sh'
                sh './script.sh'
            }
        }
    }
}

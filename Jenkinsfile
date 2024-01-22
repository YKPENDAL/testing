pipeline {
    agent any

    environment {
        SUDO_USERNAME = 'Yash'
        SUDO_PASSWORD = 'yash@12345'
    }

    stages {
        stage('Install Dependencies') {
            steps {
                sh 'chmod +x bash.sh'
                sh './bash.sh'
            }
        }
    }
}

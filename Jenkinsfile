pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                // If there are any build steps, add them here
            }
        }
        stage('Deploy') {
            steps {
                sh 'sudo apt-get update && sudo apt-get install -y mysql-server'
                sh 'sudo systemctl start mysql'
                sh 'sudo systemctl enable mysql'
                sh 'sudo systemctl status mysql'
            }
        }
    }
}

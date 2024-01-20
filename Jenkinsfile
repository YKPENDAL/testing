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
                script {
                    // Run the Nginx setup script
                    sh 'chmod +x testup.sh'
                    sh 'testup.sh'
                }
            }
        }
    }
}
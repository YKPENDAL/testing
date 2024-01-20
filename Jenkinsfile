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
                echo 'Build steps go here'
            }
        }
        stage('Deploy') {
            steps {
                // Run the Nginx setup script
                //sh 'chmod +x testup.sh'
                sh 'testup.sh'
            }
        }
    }
}

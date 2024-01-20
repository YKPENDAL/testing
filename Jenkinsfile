pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Checkout the repository
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/YKPENDAL/testing.git']]])
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
                sh 'chmod +x /home/ubuntu/script.sh'
                sh '/home/ubuntu/script.sh'
            }
        }
    }
}

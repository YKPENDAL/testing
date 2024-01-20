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
                    sh 'sudo apt-get install -y openjdk-11-jdk'
                    sh 'java -version'
                }
            }
        }
    }
}

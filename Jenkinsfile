pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your code from version control (e.g., Git)
                script {
                    git 'https://github.com/YKPENDAL/testing.git'
                }
            }
        }

        stage('Build') {
            steps {
                // Add build steps if needed
                script {
                    echo 'Building...'
                    // Add your build commands here
                }
            }
        }

        stage('Setup Nginx') {
            steps {
                script {
                    // Run the Nginx setup script
                    sh 'chmod +x nginx_setup.sh'
                    sh './nginx_setup.sh'
                }
            }
        }
    }

    post {
        always {
            // Clean up or additional steps if needed
            script {
                echo 'Post-processing...'
                // Add any post-processing steps here
            }
        }
    }
}

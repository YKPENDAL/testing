pipeline {
    agent any

    environment {
        SUDO_PASSWORD = 'yash@12345'
        WORKSPACE_DIR = '/var/lib/jenkins/workspace/Jenkinsfilewithtest'
    }

    stages {
        stage('Install Dependencies') {
            steps {
                script {
                    sh "chmod +x ${WORKSPACE_DIR}/script.sh"
                    sh "cd ${WORKSPACE_DIR} && ./script.sh"
                }
            }
        }
    }
}

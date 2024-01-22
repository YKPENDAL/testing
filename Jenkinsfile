pipeline {
    agent any

    //environment {
        //SUDO_PASSWORD = 'yash@12345'
      //  WORKSPACE_DIR = '/var/lib/jenkins/workspace/Jenkinsfilewithtest'
    //}

    stages {
        stage('Test') {
            steps {
                script {
                    sh "chmod +x script.sh"
                    sh "./script.sh"
                }
            }
        }
    }
}

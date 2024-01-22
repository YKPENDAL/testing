pipeline {
    agent any

    environment {
       EC2_INSTANCE_IP=$HOST_DNS
       KEY_PATH=$EC2_SSH_KEY
       REMOTE_USER=$USERNAME
       //DESTINATION_PATH="/path/to/destination/"
       //BASH_SCRIPT_PATH="/path/to/your/bash.sh"
    }

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

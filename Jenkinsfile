pipeline {
    agent any

    environment {
       EC2_INSTANCE_HOST = "${{ secrets.HOST_DNS }}"
       KEY_PATH = "${{ secrets.EC2_SSH_KEY }}"
       REMOTE_USER = "${{ secrets.USERNAME }}"
       //DESTINATION_PATH="/path/to/destination/"
       //BASH_SCRIPT_PATH="/path/to/your/bash.sh"
    }

    stages {
        stage('Test') {
            steps {
                script {
                    echo "EC2_INSTANCE_HOST: $EC2_INSTANCE_IP"
                    echo "KEY_PATH: $KEY_PATH"
                    echo "REMOTE_USER: $REMOTE_USER"
                    sh "chmod +x script.sh"
                    sh "./script.sh"
                }
            }
        }
    }
}

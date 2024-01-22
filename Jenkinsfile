pipeline {
    agent any

    stages {
        stage('env') {
            steps {
                EC2_INSTANCE_HOST = "${{ secrets.HOST_DNS }}"
        	    KEY_PATH = "${{ secrets.EC2_SSH_KEY }}"
        	    REMOTE_USER = "${{ secrets.USERNAME }}"
            }
        }
    
    
    
        stage('Test') {
            steps {
                script {
                    echo "EC2_INSTANCE_HOST: $EC2_INSTANCE_HOST"
                    echo "KEY_PATH: $KEY_PATH"
                    echo "REMOTE_USER: $REMOTE_USER"
                    sh "chmod +x script.sh"
                    sh "./script.sh"
                }
            }
        }
    }
}

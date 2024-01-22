#!/bin/bash



# Your GitHub Secrets
EC2_INSTANCE_IP=$HOST_DNS
KEY_PATH=$EC2_SSH_KEY
REMOTE_USER=$USERNAME
DESTINATION_PATH="/path/to/destination/"
BASH_SCRIPT_PATH="/path/to/your/bash.sh"

# Connect to the EC2 instance using SSH and upload the bash script
ssh -i "$KEY_PATH" "$HOST_NAME"@"$EC2_INSTANCE_IP" << EOF
    # Create the destination directory if it doesn't exist
    mkdir -p "$DESTINATION_PATH"
    
    # Upload the bash script
    scp -i "$KEY_PATH" "$BASH_SCRIPT_PATH" ubuntu@"$EC2_INSTANCE_IP":"$DESTINATION_PATH"
EOF




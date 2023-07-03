#!/bin/bash

# Define the number of users to create
NUM_USERS=10

# Loop through the desired number of users
for i in $(seq 1 $NUM_USERS)
do
    # Generate a random password
    PASSWORD=$(date +%s | sha256sum | base64 | head -c 12)

    # Create the user with the username 'userX' (X represents the number)
    USERNAME="terraform-test${i}"
    sudo useradd -m -s /bin/bash ${USERNAME}


    # Set the generated password for the user
    echo "${USERNAME}:${PASSWORD}" | sudo chpasswd

    # Display the created user and password
    echo "User: ${USERNAME}"
    echo "Password: ${PASSWORD}"
    echo "------------------------------------"
    sleep 2
done


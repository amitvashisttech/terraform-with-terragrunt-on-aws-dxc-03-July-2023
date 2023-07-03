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
    sudo userdel -f ${USERNAME}

    # Display the created user and password
    echo "User: ${USERNAME}"
    echo "------------------------------------"
done


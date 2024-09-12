#!/bin/bash

# Script to create new users, establish password, and note users true name



# Enter new users USERNAME

read -p 'Enter the Username for the new user: ' USER_NAME


# Enter the true name of the new user


read -p 'Ener the true name of the new user: ' COMMENT


# Enter the password of the new user


read -p 'Enter a temporary passord for the new user: ' PASSWORD


# Create the new user

useradd -c "${COMMENT}" -m "${USER_NAME}"


# Create password for the new user

echo ${PASSWORD} | passwd --stdin ${USER_NAME}


# Force new password to be created upon first login

passwd -e ${USER_NAME}



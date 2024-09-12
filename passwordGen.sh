#!/bin/bash

# This script generates a list of random passwords

# A random number as a password.
PASSWORD="${RANDOM}"
echo "${PASSWORD}"


# Three random numbers together.
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"

echo "${PASSWORD}"


# use the current date/time as the basis for the password
PASSWORD=$(date +%s)
echo "${PASSWORD}"

# Use nanosecond to act as a randomization.
PASSWORD=$(date +%s%N)
echo ${PASSWORD}



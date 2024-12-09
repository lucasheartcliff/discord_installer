#!/bin/bash

# Function to check internet connection
if ! ping -c 1 google.com &>/dev/null; then
	echo "There is no internet connection"
	exit 1
fi

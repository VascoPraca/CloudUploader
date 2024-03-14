#!/bin/bash
#first step is setup & authentication
az login
#check if authentication is successfull
if az account show &>/dev/null; then
    echo "Azure authentication successful."
else
    echo "Azure authentication failed. Please check your credentials."
    exit 1
fi

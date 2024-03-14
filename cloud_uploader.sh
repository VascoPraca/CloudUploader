#!/bin/bash
#function to display how to use the script
usage() {
    echo "Usage: $0"
    echo "This script will prompt you for the necessary information to upload a file to Azure Blob Storage."
    echo ""
    exit 1
}

#setup & authentication
az login
#check if authentication is successfull
if az account show &>/dev/null; then
    echo "Azure authentication successful."
else
    echo "Azure authentication failed. Please check your credentials."
    exit 1
fi

#prompt user for Azure Blob Storage container name
read -p "Enter Azure Blob Storage container name: " container_name

#check if container name is provided
if [ -z "$container_name" ]; then
    echo "Error: Azure Blob Storage container name not provided"
    usage
fi

#prompt the user for the filename or path
read -p "Enter the path to the file you want to upload: " filename_or_path

#check if filename or path is provided
if [ -z "$filename_or_path" ]; then
    echo "Error: Filename or path not provided"
    usage
fi

#prompt the user for the connection string
read -p "Enter the connection string for your Azure Storage account: " connection_string

#check if connection string is provided
if [ -z "$connection_string" ]; then
    echo "Error: Azure Storage account connection string not provided"
    usage
fi

#upload the file to Azure Blob Storage
az storage blob upload --container-name "$container_name" --file "$filename_or_path" --name "$(basename "$filename_or_path")" --connection-string "$connection_string"

echo "File uploaded successfully to Azure Blob Storage."

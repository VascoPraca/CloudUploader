# CloudUploader
A bash-based CLI tool that allows users to quickly upload files to a specified cloud storage solution.

## How to use?
give executing permission to the file with chmod:
```bash
chmod +x cloud_uploader.sh
```
After that you can run the file (don't forget you need to be in the file directory)
```bash
./cloud_uploader.sh
```
Once running you it will verify your Azure login and Authenticate you. When that is done you will start getting prompted for information such as

-----------------------------------------------------------------
Enter Azure Blob Storage container name:

Enter the path to the file you want to upload:

Enter the connection string for your Azure Storage account:

-----------------------------------------------------------------
If everything is correct the file should be uploaded sucessfully to the intended storage.



### To do:
    - Allow multiple file uploads at once.
    - Add a progress bar or percentage upload completion using tools like pv.
    - Provide an option to generate and display a shareable link post-upload.
    - Enable file synchronization -- if the file already exists in the cloud, prompt the user to overwrite, skip, or rename.
    - Integrate encryption for added security before the upload.
    - Package the script for easy distribution and installation.

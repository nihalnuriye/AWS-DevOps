#!/bin/bash

# Check if we are root privilage or not
if [[ $UID -ne 0 ]]
then
    echo "Please run this script as root or superuser privileges."
    exit 1
fi
# Define the backup directory
BACKUP_FOLDER=("/home/ec2-user/data")
# Where do we backup to
DEST="/mnt/backup"
# Check if this folder is created before, if not create it.
if [[ ! -d $DEST ]]
then
    mkdir $DEST
fi
# Get the hostname of the instance
HOSTNAME=$(hostname -s)
# Get the current date and time
DATE=$(date +%F-%H-%M)
# Print start status message.
echo "Your back up will start soon."
# Iterate through the directories to be backed up
for DIR in ${BACKUP_FOLDER[@]}
do
    # Create the filename for the backup
    FILENAME="$DEST/$HOSTNAME-$DATE-$(basename $DIR).tgz"
    # Create the backup using tar
    tar -zvcf $FILENAME $DIR # tar -zvcf /mnt/backup/ip-172-31-29-45-2024-01-18-13-19-data.tgz /home/ec2-user/data
                             # tar -zvcf /mnt/backup/ip-172-31-29-45-2024-01-18-13-19-etc.tgz /etc
    # Print the backed up file name
    echo "Backed up file: $FILENAME"
done
# Or if you have only one directory that you know.
# tar -zvcf $DEST/$HOSTNAME-$DATE-$(basename $BACKUP_FOLDER).tgz $BACKUP_FOLDER
# Run "sed -i -e 's/\r$//' scriptname.sh" command before running script.

# Print end status message.

# Do not forget to install cronie to 2023 AMI
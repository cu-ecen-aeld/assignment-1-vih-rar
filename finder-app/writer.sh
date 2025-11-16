#!/bin/sh
# Writer script for assignment 1
# Author: Vihar Vasavada

# Accepts the following arguments: the first argument is a full path to a file (including filename) on the filesystem, referred to below as writefile; the second argument is a text string which will be written within this file, referred to below as writestr

# Exits with value 1 error and print statements if any of the arguments above were not specified

# Creates a new file with name and path writefile with content writestr, overwriting any existing file and creating the path if it doesn’t exist. Exits with value 1 and error print statement if the file could not be created.

if [ $# -ne 2 ]
then
    echo "Usage: ./finder.sh <full_path_to_file> <text_string>"
    exit 1
fi

FILE_PATH=$1
TEXT=$2

mkdir -p "$(dirname "$FILE_PATH")"
if [ $? -ne 0 ]
then
    echo "Error creating directory"
    exit 1
fi

echo $TEXT > $FILE_PATH

if [ $? -ne 0 ]
then
    echo "Error writing to file"
    exit 1
fi
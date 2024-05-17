#!/bin/bash

# Specify a directory to look in, such as the current directory
DIRECTORY="./"

# Iterate through each .qmd file in the directory
for file in "$DIRECTORY"*.qmd; do
    # Check if the file exists
    if [ -f "$file" ]; then
        # Execute the quarto convert command on the file
        quarto convert $file
    fi
done

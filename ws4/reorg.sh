#!/bin/bash

# Get the current timestamp
timestamp=$(date "+%F-%T")

# Defining the input file
INPUT_FILE="2019-01-h1.csv"

# Defining the vendor ID to process
vendors=("1.0" "2.0" "4.0")

# Looping through each vendor ID to create the CSV files
for vendor in "${vendors[@]}"; do
    # Creating output filename using the timestamp and vendor id
    output_file="${timestamp}-${vendor}.csv"
    
    # Extracting rows where the line starts with the vendor id
    grep "^${vendor}," "$INPUT_FILE" > "$output_file"
    
    # Append the CSV filename to .gitignore so it is not  pushed to Git
    echo "$output_file" >> .gitignore
done

# Create ws4.txt to store the results
> ws4.txt

# Generating a CSV file and getting the wc output and append it to ws4.txt
for vendor in "${vendors[@]}"; do
    output_file="${timestamp}-${vendor}.csv"
    wc "$output_file" >> ws4.txt
done

# Appending the contents of .gitignore to ws4.txt
echo "Contents of .gitignore:" >> ws4.txt
cat .gitignore >> ws4.txt


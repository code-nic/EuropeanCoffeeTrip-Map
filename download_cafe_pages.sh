#!/bin/bash

# Input file containing URLs
input_file="./.resources/cafe_urls.txt"

# Directory where the files will be saved (can be adjusted)
output_dir="./.resources/cafe_htmls/"

# Create the output directory if it doesn't exist
mkdir -p "$output_dir"

# Get the total number of URLs in the file
total_urls=$(wc -l < "$input_file")
current_url=0

# Loop through each URL in the input file
while IFS= read -r url; do
    # Skip empty lines
    if [ -z "$url" ]; then
        continue
    fi

    # Increment the current URL counter
    ((current_url++))

    # Print progress
    echo "Processing $current_url of $total_urls: $url"

    # Generate a safe filename based on the URL (remove 'http://', 'https://', and '/')
    filename=$(echo "$url" | sed -e 's|https\?://||' -e 's|/|_|g')

    # Define the output file path
    output_file="$output_dir/$filename.html"

    # Download the webpage and save it to the file
    curl -sSl "$url" -o "$output_file"

    # Print status message
    echo "Downloaded $url to $output_file"
done < "$input_file"

#!/bin/bash
# Download the (default English) properties files from IQSS
# into a 'tmp' directory, allowing us to use them for comparison with our own files.

TMP_DIR="tmp/en_US" 
mkdir -p "$TMP_DIR"

# the tag
DV_TAG="v6.6"

# Set the base URL for the properties files
BASE_URL="https://api.github.com/repos/IQSS/dataverse/contents/src/main/java/propertyFiles"

echo "Downloading properties files from IQSS for tag $DV_TAG..."
wget -q -O - "$BASE_URL?ref=$DV_TAG" \
  | grep '"download_url"' \
  | sed 's/.*"download_url": "\(.*\)".*/\1/' \
  | wget -P "$TMP_DIR" -i -

echo "Download complete."

echo "Renaming the files to match the naming convention for English..."
cd "$TMP_DIR"
for file in *.properties; do
    echo "Renaming $file to ${file%.properties}_en.properties"
    # add _en before the .properties extension
    mv "$file" "${file%.properties}_en.properties"
done
echo "Renaming complete. Files are in $TMP_DIR"
echo ""
echo "-- Next Steps --"
echo " Compare these files with the ones in the main directory"
echo " and update the translations as needed." 
echo ""

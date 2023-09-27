#!/bin/sh

# Parse command-line arguments
while [ $# -gt 0 ]; do
    case "$1" in
        --data_path)
            DATA_PATH="$2"
            echo "Data folder: $DATA_PATH"
            shift 2
            ;;
        *)
            echo "Unknown argument: $1, please use --data to specify the data folder.(e.g. --data "/path/*")"
            exit 1
            ;;
    esac
done

# Check if the data path is set
if [ -z "$DATA_PATH" ]; then
    echo "No data folder specified, please use --data to specify the data folder"
    exit 1
fi

# This script is used to test the .env file, read line not starting with # or empty line
while read line; do
    if echo "$line" | grep -qE '^\s*#|^\s*$'; then
        continue
    fi
    name=$(echo "$line" | cut -d= -f1)
    value=$(echo "$line" | cut -d= -f2- | tr -d "'")
    export "$name"="$value"
    echo "export $name = $value"
done < .env

echo 'Run "prepdocs.py", and start to upload index to Azure Portal'
# python prepdocs.py '../md/*' --searchservice "$AZURE_SEARCH_SERVICE" --index "$AZURE_SEARCH_INDEX" --tenantid "$TENANT_ID" --searchkey "$AZURE_KEY_CREDENTIAL" --skipblobs --remove_image -v
python prepdocs.py "$DATA_PATH" --searchservice "$AZURE_SEARCH_SERVICE" --index "$AZURE_SEARCH_INDEX" --tenantid "$TENANT_ID" --searchkey "$AZURE_KEY_CREDENTIAL" --storageaccount "$AZURE_STORAGE_ACCOUNT" --container "$AZURE_STORAGE_CONTAINER" --storagekey "$AZURE_STORAGE_KEY" --tenantid "$TTENANT_ID" -v --remove_image --remove_href
echo 'Done'
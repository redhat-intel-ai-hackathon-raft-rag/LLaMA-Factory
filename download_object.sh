PRESIGNED_URL_FOR_BUCKET=https://objectstorage.ap-osaka-1.oraclecloud.com/p/oBZ7aGYm4ucCE2NhErN8Fh0PeoveMcl2hgUbrXl1IQp8_A4cKVCOArPIL2_OY6gI/n/axe0pnb37jb1/b/bucket-20241015-0858/o/dataset.tar.gz
curl -X GET -o dataset.tar.gz $PRESIGNED_URL_FOR_BUCKET &&
tar -xzf dataset.tar.gz && rm dataset.tar.gz &&
mkdir -p dataset/raw_dataset/scraper dataset/generated_dataset &&
{
    echo "["  # Start the JSON array
    raft_files=$(find dataset_temp/generated_dataset -name "*.json" | grep raft)
    first=true  # Flag to manage commas

    for file in $raft_files; do
        if [ ! -s "$file" ]; then
            echo "Warning: $file is empty or does not exist."
            continue  # Skip empty files
        fi

        # Extract JSON array elements
        if [ "$first" = true ]; then
            first=false  # After the first file, set the flag to false
        else
            echo ","  # Add a comma before subsequent files
        fi

        # Use jq to extract each element of the array
        jq -c '.[]' "$file" || echo "Error processing $file"
    done

    echo "]"  # End the JSON array
} > data/raft.json

rm -rf dataset_temp
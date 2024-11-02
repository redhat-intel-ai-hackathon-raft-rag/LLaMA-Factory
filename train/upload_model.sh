export $(egrep -v '^#' .env | xargs)
UPDATE_PATH="${PRESIGNED_URL_FOR_BUCKET_FOR_UPLOAD}finetuned_model.tar.gz"
echo $UPDATE_PATH
curl -X PUT --data-binary "@finetuned_model.tar.gz" -H "Content-Type: application/octet-stream" "$UPDATE_PATH"

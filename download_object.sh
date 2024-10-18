PRESIGNED_URL_FOR_BUCKET=https://objectstorage.ap-osaka-1.oraclecloud.com/p/oBZ7aGYm4ucCE2NhErN8Fh0PeoveMcl2hgUbrXl1IQp8_A4cKVCOArPIL2_OY6gI/n/axe0pnb37jb1/b/bucket-20241015-0858/o/dataset.tar.gz
curl -X GET -o dataset.tar.gz $PRESIGNED_URL_FOR_BUCKET &&
tar -xzf dataset.tar.gz && rm dataset.tar.gz &&
mkdir -p dataset/raw_dataset/scraper dataset/generated_dataset &&
pip install -r requirement.txt &&
python combine_jsonarray.py &&
rm -rf dataset_temp
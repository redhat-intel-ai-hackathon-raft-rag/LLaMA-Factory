PRESIGNED_URL_FOR_BUCKET=https://objectstorage.ap-osaka-1.oraclecloud.com/p/WKqZydY3o7G0jJ73v4E_VjJEhkzWO2XIuzA99VvwdKRi5jM1jAf6Ulgl22Vdxby9/n/axe0pnb37jb1/b/bucket-20241015-0858/o/train_dataset_book.tar.gz
curl -X GET -o train_dataset_book.tar.gz $PRESIGNED_URL_FOR_BUCKET

PRESIGNED_URL_FOR_BUCKET=https://objectstorage.ap-osaka-1.oraclecloud.com/p/WKqZydY3o7G0jJ73v4E_VjJEhkzWO2XIuzA99VvwdKRi5jM1jAf6Ulgl22Vdxby9/n/axe0pnb37jb1/b/bucket-20241015-0858/o/train_dataset_web.tar.gz
curl -X GET -o train_dataset_web.tar.gz $PRESIGNED_URL_FOR_BUCKET 
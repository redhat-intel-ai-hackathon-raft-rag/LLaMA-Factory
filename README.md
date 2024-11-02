./train/download_train_dataset.sh &&
./train/train_dataset_prepare.sh &&
./train.sh &&
./tarball_model &&
./upload_model

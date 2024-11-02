tar -xzf train_dataset_web.tar.*z
tar -xzf train_dataset_book.tar.*z

cat train_dataset*.jsonl | jq -s '.' > data/raft.json
rm -r train_dataset*.jsonl

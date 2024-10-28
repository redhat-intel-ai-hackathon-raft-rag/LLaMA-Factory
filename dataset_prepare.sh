tar -xzf combined_web.tar.*z
tar -xzf combined_book.tar.*z

cat combined*.jsonl | jq -s '.' > data/raft.json
rm -r combined*.jsonl

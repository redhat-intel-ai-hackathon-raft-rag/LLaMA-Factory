pip install -e ".[torch,metrics]" &&
llamafactory-cli train examples/train_lora/qwen2.5_lora_sft.yaml
llamafactory-cli export examples/merge_lora/qwen2.5_lora_sft.yaml 

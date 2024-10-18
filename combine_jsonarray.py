import json
import os


if __name__ == "__main__":
    directory = 'dataset_temp/generated_dataset'
    json_files = []
    raft_json_data_list = []
    for filename in os.listdir(directory):
        if filename.endswith('.json'):
            json_files.append(filename)
    for json_file in json_files:
        with open(f'{directory}/{json_file}', "r") as f:
            try:
                data: list = json.load(f)
                raft_json_data_list.extend(data)
            except:
                print({json_file})
                continue
    with open("data/raft.json", "w") as f:
        json.dump(raft_json_data_list, f, indent=4)    
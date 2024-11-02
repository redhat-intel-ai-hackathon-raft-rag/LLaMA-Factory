# read .env file
export $(egrep -v '^#' .env | xargs)
model_folder=models
model_file=finetuned_model.tar.gz
tar -czf $model_file $model_folder

#!/bin/bash
JOBDIR="./click-data"
CONFIGS_DIR="./configs/training_configs"
INPUT_DIR="./training/results"

for i in $(ls $CONFIGS_DIR | grep .json); do
    ID="${i%.*}"
    CONFIG_FILE="$CONFIGS_DIR/$i"
    INPUT_FILE="$INPUT_DIR/$ID/model.pkl"
    echo "Running $CONFIG_FILE"
    python allrank/rank_and_click.py --input-model-path $INPUT_FILE --roles train,test --config-file-name $CONFIG_FILE --run-id $ID --job-dir $JOBDIR
done

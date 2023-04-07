#!/bin/bash
JOBDIR="/content/gdrive/MyDrive/info-retriev/click-training"
CONFIGS_DIR="/content/information_retrieval/configs/click_mq2008"

for i in $(ls $CONFIGS_DIR | grep .json); do
    CONFIG_FILE="$CONFIGS_DIR/$i"
    ID="${i%.*}"

    echo "Running $CONFIG_FILE"
    python allrank/main.py --config-file-name $CONFIG_FILE --run-id $ID --job-dir $JOBDIR
done
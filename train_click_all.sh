#!/bin/bash
JOBDIR="./training-click"
CONFIGS_DIR="./configs/click_mq2008" # or click_web10k for the web10k dataset

for i in $(ls $CONFIGS_DIR | grep .json); do
    CONFIG_FILE="$CONFIGS_DIR/$i"
    ID="${i%.*}"
    echo "Running $CONFIG_FILE"
    python allrank/main.py --config-file-name $CONFIG_FILE --run-id $ID --job-dir $JOBDIR
done

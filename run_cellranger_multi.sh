#!/bin/bash

sourrce cellranger_version.sh

ID=RUNID
CONFIG_CSV=config.csv

JOBMODE=${JOBMODE:-local}
LOCAL_CORES=${LOCALCORES:-8}
LOCAL_MEM=${LOCALMEM:-64}

cellranger multi --id=$ID \
    --csv=$CONFIG_CSV \
    --jobmode=$JOBMODE \
    --localcores=$LOCAL_CORES \
    --localmem=$LOCAL_MEM

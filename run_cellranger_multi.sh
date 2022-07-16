#!/bin/bash

source cellranger_version.sh

ID=RUNID
CONFIG_CSV=config.csv

JOBMODE=${JOBMODE:-local}
LOCAL_CORES=${LOCALCORES:-8}
LOCAL_MEM=${LOCALMEM:-64}
DRYRUN=${DRYRUN:-true}

if [ "$DRYRUN" = true ]; then DRY_RUN="--dry"; else DRY_RUN=""; fi

cellranger multi --id=$ID \
    --csv=$CONFIG_CSV \
    --jobmode=$JOBMODE \
    --localcores=$LOCAL_CORES \
    --localmem=$LOCAL_MEM $DRY_RUN

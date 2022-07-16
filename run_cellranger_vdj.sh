#!/bin/bash

source cellranger_version.sh

ID=RUNID
PREFIX=SIGAH5
VDJ_REF=/reference-genomes/refdata-cellranger-vdj-GRCm38-alts-ensembl-7.0.0

FASTQ_PATH=${FASTQPATH:-'./'}
LOCAL_CORES=${LOCALCORES:-8}
LOCAL_MEM=${LOCALMEM:-64}
DRYRUN=${DRYRUN:-true}

if [ "$DRYRUN" = true ]; then DRY_RUN="--dry"; else DRY_RUN=""; fi

cellranger vdj --id=$ID \
    --reference=$VDJ_REF \
    --fastqs=$FASTQ_PATH \
    --sample=$PREFIX \
    --localcores=$LOCAL_CORES \
    --localmem=$LOCAL_MEM $DRY_RUN



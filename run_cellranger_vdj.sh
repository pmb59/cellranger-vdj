#!/bin/bash

export PATH=/opt/cellranger-7.0.0:$PATH

ID=RUNID
PREFIX=SIGAH5
VDJ_REF=/reference-genomes/refdata-cellranger-vdj-GRCm38-alts-ensembl-7.0.0

FASTQ_PATH=${FASTQPATH:-'./'}
LOCAL_CORES=${LOCALCORES:-8}
LOCAL_MEM=${LOCALMEM:-64}

cellranger vdj --id=$ID \
                 --reference=$VDJ_REF \
                 --fastqs=$FASTQ_PATH \
                 --sample=$PREFIX \
                 --localcores=$LOCAL_CORES \
                 --localmem=$LOCAL_MEM
                 
 

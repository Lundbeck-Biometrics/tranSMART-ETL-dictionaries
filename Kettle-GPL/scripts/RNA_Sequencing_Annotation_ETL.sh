#! /bin/bash
./data-integration/kitchen.sh \
-norep=Y \
-file=Kettle-ETL/Req11_RNASEQ_ANNOTATION/load_rnaseq_annotation.kjb \
-log=load_RNA_sequencing_annotation.log \
-param:DATA_LOCATION=exam \
-param:SORT_DIR=/tmp \
-param:DATA_FILE=rna_seq_annotation_sample.txt 
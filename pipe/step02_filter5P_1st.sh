readID=$1
threadN=$2
FILTER='./script/mapping_pipeline/filter_five_end.pl'

samtools view -h ${readID}_1.bam | perl ${FILTER} | samtools view -Sb - > ${readID}.5P_1.bam
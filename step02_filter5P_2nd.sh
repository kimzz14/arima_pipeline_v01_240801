readID=SRR19088062
FILTER='./script/mapping_pipeline/filter_five_end.pl'

samtools view -h ${readID}_2.bam | perl ${FILTER} | samtools view -Sb - > ${readID}.5P_2.bam
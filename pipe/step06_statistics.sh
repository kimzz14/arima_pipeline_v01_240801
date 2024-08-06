readID=$1
threadN=$2
MIN_MAPQ=10
STATS='./script/mapping_pipeline/get_stats.pl'

samtools index ${readID}.5P.aboveQ${MIN_MAPQ}.sorted.RG.dedupped.bam
perl $STATS ${readID}.5P.aboveQ${MIN_MAPQ}.sorted.RG.dedupped.bam > ${readID}.5P.aboveQ${MIN_MAPQ}.sorted.RG.dedupped.bam.stats
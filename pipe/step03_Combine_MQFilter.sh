#echo "### Step 3A: Pair reads & mapping quality filter"
readID=$1
threadN=$2
MIN_MAPQ=30
COMBINER='./script/mapping_pipeline/two_read_bam_combiner.pl'

perl $COMBINER ${readID}.5P_1.bam ${readID}.5P_2.bam samtools ${MIN_MAPQ} \
    | samtools view -bS -t bwadb/ref.fa.fai - \
    1> ${readID}.5P.aboveQ${MIN_MAPQ}.bam \
    2> ${readID}.5P.aboveQ${MIN_MAPQ}.bam.log

samtools sort -@ ${threadN} -o ${readID}.5P.aboveQ${MIN_MAPQ}.sorted.bam ${readID}.5P.aboveQ${MIN_MAPQ}.bam
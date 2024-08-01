readID=$1
threadN=$2
MIN_MAPQ=30

gatk --java-options "-Djava.io.tmpdir=./tmp" MarkDuplicates \
    --INPUT                 ${readID}.5P.aboveQ${MIN_MAPQ}.sorted.RG.bam \
    --OUTPUT                ${readID}.5P.aboveQ${MIN_MAPQ}.sorted.RG.dedupped.bam \
    --METRICS_FILE          ${readID}.5P.aboveQ${MIN_MAPQ}.sorted.RG.dedupped.metrics \
    --REMOVE_DUPLICATES     TRUE \
    --ASSUME_SORTED         TRUE \
    --VALIDATION_STRINGENCY LENIENT \
    1> ${readID}.5P.aboveQ${MIN_MAPQ}.sorted.RG.dedupped.bam.log \
    2> ${readID}.5P.aboveQ${MIN_MAPQ}.sorted.RG.dedupped.bam.err

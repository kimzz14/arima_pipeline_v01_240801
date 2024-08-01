readID=SRR19088062
MIN_MAPQ=30

gatk --java-options "-Djava.io.tmpdir=./tmp" AddOrReplaceReadGroups \
    --INPUT  ${readID}.5P.aboveQ${MIN_MAPQ}.sorted.bam \
    --OUTPUT ${readID}.5P.aboveQ${MIN_MAPQ}.sorted.RG.bam \
    --RGID   ${readID} \
    --RGLB   ${readID} \
    --RGSM   ${readID} \
    --RGPL   ILLUMINA \
    --RGPU   none \
    1> ${readID}.5P.aboveQ${MIN_MAPQ}.sorted.RG.bam.log \
    2> ${readID}.5P.aboveQ${MIN_MAPQ}.sorted.RG.bam.err
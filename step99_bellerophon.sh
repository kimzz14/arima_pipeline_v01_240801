readID=SRR19088062
threadN=24
MIN_MAPQ=30

bellerophon \
    -f ${readID}_1.bam \
    -r ${readID}_2.bam \
    -o ${readID}.5P.bam \
    -q ${MIN_MAPQ} \
    -t ${threadN} \
    1> step99_bellerophon.log \
    2> step99_bellerophon.err
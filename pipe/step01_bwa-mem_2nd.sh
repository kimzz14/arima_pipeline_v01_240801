readID=$1
threadN=$2
readDir=/archive/kimzz14/SRA_RAW/INSDC/Nibea_coibor/PRJNA827677

#original
#bwa mem -t ${threadN} bwadb/ref.fa ${readDir}/${readID}_2.fastq.gz 2> ${readID}_2.bwa_mem.log | samtools view -@ ${threadN} -Sb - > ${readID}_2.bam

#edit
bwa mem -5SP -T0 -t ${threadN} bwadb/ref.fa ${readDir}/${readID}_2.fastq.gz 2> ${readID}_2.bwa_mem.log | samtools view -@ ${threadN} -Sb - > ${readID}_2.bam
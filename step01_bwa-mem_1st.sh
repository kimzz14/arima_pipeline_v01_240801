readID=SRR19088062
readDir=/archive/kimzz14/SRA_RAW/INSDC/Nibea_coibor/PRJNA827677
threadN=24

#original
#bwa mem -t ${threadN} bwadb/ref.fa ${readDir}/${readID}_1.fastq.gz 2> ${readID}_1.bwa_mem.log | samtools view -@ ${threadN} -Sb - > ${readID}_1.bam

#edit
bwa mem -5SP -T0 -t ${threadN} bwadb/ref.fa ${readDir}/${readID}_1.fastq.gz 2> ${readID}_1.bwa_mem.log | samtools view -@ ${threadN} -Sb - > ${readID}_1.bam

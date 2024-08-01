readID=$1
threadN=$2

#sh ./pipe/step01_bwa-mem_1st.sh ${readID} ${threadN}
#sh ./pipe/step01_bwa-mem_2nd.sh ${readID} ${threadN}
sh ./pipe/step02_filter5P_1st.sh ${readID} ${threadN}
sh ./pipe/step02_filter5P_2nd.sh ${readID} ${threadN}
sh ./pipe/step03_Combine_MQFilter.sh ${readID} ${threadN}
sh ./pipe/step04_AddOrReplaceReadGroups.sh ${readID} ${threadN}
sh ./pipe/step05_MarkDuplicates.sh ${readID} ${threadN}
sh ./pipe/step06_statistics.sh ${readID} ${threadN}
sh ./pipe/step99_bellerophon.sh ${readID} ${threadN}
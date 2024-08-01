WorkingDir=

##################################################################################
CurrentDir=$(readlink -f .)
if [ $CurrentDir = $WorkingDir ]
then
	echo "Same"
	source activate arima_pipeline_v01_240801
else
	echo "Diff"
fi
##################################################################################
#conda create -n arima_pipeline_v01_240801

#source activate arima_pipeline_v01_240801

#conda install gatk4
#bioconda/noarch::gatk4-4.5.0.0-py36hdfd78af_0

#conda install samtools
#bioconda/linux-64::samtools-1.20-h50ea8bc_1
#bioconda/linux-64::htslib-1.20-h5efdd21_2

#conda install bcftools
#bioconda/linux-64::bcftools-1.20-h8b25389_1

#conda install bwa
#bioconda/linux-64::bwa-0.7.18-he4a0461_1

#conda install bellerophon
#bioconda/noarch::bellerophon-1.0-pyh5e36f6f_0
##################################################################################

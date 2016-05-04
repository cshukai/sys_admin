################RSeQc######################
# convert fastq to sam
cd /opt/bio/picard-tools-2.1.1 
nohup java -jar picard.jar FastqToSam FASTQ=/courses/7740_F2015/gwas_project/rna_seq/SRR611339.fastq OUTPUT=/courses/7740_F2015/gwas_project/rna_seq/SRR611339.bam  SAMPLE_NAME=gwas 


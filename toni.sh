################RSeQc######################
# convert fastq to sam
#cd /opt/bio/picard-tools-2.1.1 
#nohup java -jar picard.jar FastqToSam FASTQ=/courses/7740_F2015/gwas_project/rna_seq/SRR611339.fastq OUTPUT=/courses/7740_F2015/gwas_project/rna_seq/SRR611339.bam  SAMPLE_NAME=gwas 

# GC content
read_GC.py -i tophat_out_51010/accepted_hits.bam -o gc_output
read_GC.py -i tophat_out_611339/accepted_hits.bam  -o output

# qc
read_quality.py -i tophat_out_51010/accepted_hits.bam -o gc_output
read_quality.py -i tophat_out_611339/accepted_hits.bam  -o output


#ValueError: file header is empty (mode='r') - is it SAM/BAM format?


##############alignment
/courses/INFOINST8005_F2015/Software/tophat/tophat2 -o tophat_out_611339  -p 5  
-G  /courses/7740_F2015/gwas_project/ftp.ensemblgenomes.org/pub/plants/release-2
2/gff3/zea_mays/Zea_mays.AGPv3.22.gff3    /courses/7740_F2015/gwas_project/rna_s
eq/Zea_mays/Ensembl/AGPv3/Sequence/Bowtie2Index/genome    SRR611339.fastq.gz
/courses/INFOINST8005_F2015/Software/tophat/tophat2 -o tophat_out_51010   -p 5  
-G  /courses/7740_F2015/gwas_project/ftp.ensemblgenomes.org/pub/plants/release-2
2/gff3/zea_mays/Zea_mays.AGPv3.22.gff3 /courses/7740_F2015/gwas_project/rna_seq/
Zea_mays/Ensembl/AGPv3/Sequence/Bowtie2Index/genome   SRR651010.fastq.gz

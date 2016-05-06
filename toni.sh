
################RSeQc##########################################


# data conversion
gff2bed < /courses/7740_F2015/gwas_project/ftp.ensemblgenomes.org/pub/plants/release-22/gff3/zea_mays/Zea_mays.AGPv3.22.gff3> maize_annotation.bed


# GC content
read_GC.py -i tophat_out_51010/accepted_hits.bam -o output_gc_51010
read_GC.py -i tophat_out_611339/accepted_hits.bam  -o output_gc_611339 

# qc
read_quality.py -i tophat_out_51010/accepted_hits.bam -o output_qa_51010
read_quality.py -i tophat_out_611339/accepted_hits.bam  -o output_qa_611339


#chipping info
clipping_profile.py -i tophat_out_51010/accepted_hits.bam -s "SE" -o output_clip_51010 &
clipping_profile.py -i tophat_out_611339/accepted_hits.bam -s "SE" -o output_clip_611339 & 

#deletion profile
deletion_profile.py -i tophat_out_51010/accepted_hits.bam -l 110 -o output_clip_51010 &
deletion_profile.py -i tophat_out_611339/accepted_hits.bam -l 110 -o output_clip_611339 &



#genebody

geneBody_coverage.py -i tophat_out_51010/accepted_hits.bam -o output_51010 -r maize_annotation.bed &
geneBody_coverage.py -i tophat_out_611339/accepted_hits.bam -o output_611339 -r maize_annotation.bed &
##############tophat alignment################################
/courses/INFOINST8005_F2015/Software/tophat/tophat2 -o tophat_out_611339  -p 5  
-G  /courses/7740_F2015/gwas_project/ftp.ensemblgenomes.org/pub/plants/release-2
2/gff3/zea_mays/Zea_mays.AGPv3.22.gff3    /courses/7740_F2015/gwas_project/rna_s
eq/Zea_mays/Ensembl/AGPv3/Sequence/Bowtie2Index/genome    SRR611339.fastq.gz
/courses/INFOINST8005_F2015/Software/tophat/tophat2 -o tophat_out_51010   -p 5  
-G  /courses/7740_F2015/gwas_project/ftp.ensemblgenomes.org/pub/plants/release-2
2/gff3/zea_mays/Zea_mays.AGPv3.22.gff3 /courses/7740_F2015/gwas_project/rna_seq/
Zea_mays/Ensembl/AGPv3/Sequence/Bowtie2Index/genome   SRR651010.fastq.gz

#!/bin/bash
# bcftools_stats.sh
echo "=== start > bcftools_stats.sh" $(date)
for chr in $(seq ${1} ${2} ); do
    echo "running bcftools stats on ${chr}"
    bcftools stats -r ${chr} ../VCF_INTRO_DATA/TRIO_TRUTH/UMCUSAU000000342305.PASS.vcf.gz > chrom_${chr}

done
echo "=== end > bcftools_stats.sh" $(date)
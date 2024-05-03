#!/bin/bash
# process_chromosomes.sh
echo "=== start > process_chromosomes.sh" $(date)
for chr in $(seq 1 29); do
    echo "processing chromosomes ${chr}"
    bash scripts/test_Jenna.sh chrom_$chr
done
echo "=== end > process_chromosomes.sh" $(date)

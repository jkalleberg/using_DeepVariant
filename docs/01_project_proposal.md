# Textbook Project Proposal - use of DeepVariant to identify potential variants
    * Use of DeepVariant to identify potential variants in a single chromosome
    * Abstract of the research (what is the research question being asked) - the goal of the project is to use DeepVariant to identify any changes in the genome of the individual being sequenced and the reference genome. Changes from the reference allele can mean either a variant is present, whether that is a SNP, indel, or a large variant, or it could just be a sequencing error. The use of DeepVariant allows the user to train the model using 'true' genotypes to more accurately identify the SNPs and indels that have high sensitivity (true variants) and low specificity (limiting the fals positives) on unconfident genomes. DeepVariant compiles an image from the BAM file of an aligned sequence using 6 core channels: read base, base quality, mapping quality, strand of alignment, read supports variant, and base differs from reference. 
    * Source of the data (Please try to find the original source of the data)
        * Name
        * Short Description
        * URL of the website
        * URL of the data to download
    * Brief overview of the workflow
        * I use this software, I transform the data this way… everything that would go into the paper’s methods 
           Using a VCF file, changes from the reference allele to the allele being investigated can be identified and counted. A reference genome is an accepted representation of a genome for a particular species. It is believed to be high quality and as close to error free as possible, although there will always be some error. The reference genome is then used to compare sequenced genomes of question to identify changes in the alleles between the references and the alleles in question. 
           
        * Write as you code: explain what you are trying to accomplish with this project as you are coding
        * Takes longer, but you end up with a done project and a done paper 
            * May end up with way more paper than needed, but much easier to cut
    * Brief overview of the analysis (tools used) or study (scalability study, parameter sweep, sensitivity study etc.) and what you wish to accomplish

Goal: Complete Project
* Data used should be similar to the real data used for the research
* You need to be able to verify that you got the right answer(s)
* Computation is "text book example", meaning data/code doesn’t have to make sense right now, but you should be able to describe how the solution changes
* At the end, Jenna will just git clone —> setup —> run, so make sure your work is reproducible!

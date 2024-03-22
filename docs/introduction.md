# VCF_INTRO
## Introduction

Within this GitHub repository, you will find modules to help familiarize yourself with variant calling using DeepVariant (Links to: [paper](docs/literature/Poplin-et-al.2018.Nature-Biotech.pdf) and [GitHub](https://github.com/google/deepvariant/tree/r1.6)). DeepVariant is a deep-learning-based image classifier that uses read pileup images to identify potential deviations from a reference genome.

Because of the size of the data (Illumina whole-genome sequencing), we can not do this on a laptop. Instead, we need to work on a High Performance Computing (HPC) cluster at Mizzou called Hellbender!

---
### Log on to Hellbender:
```
ssh <enter_your_pawprint_here>@hellbender-login.rnet.missouri.edu
```
----

As a student in the University of Missouri's Animal Genomics (UMAG) group, you need to understand some of our conventions. On the computing cluster, each person has a directory under a `WORKING` directory. They are named using your MU paw print ID. 


#### Your directory on Hellbender is here:

- Rebekah `/mnt/pixstor/schnabelr-ccgi-drii/WORKING/rpw3mx/`


The directory above should be empty except for two sub-directories I created (Jenna, Post-doc). One is for `inputs`, and the second is for `outputs`. Neither of these directories is for executable code! Your code should be kept in a separate directory using this GitHub repository.  

```
🦎 [jakth2@hellbender-login.mgmt.hellbender] cd /mnt/pixstor/schnabelr-ccgi-drii/WORKING/rpw3mx
🦎 [jakth2@hellbender-login.mgmt.hellbender] ls
VCF_INTRO_DATA  VCF_INTRO_OUTPUTS
```

I also created additional directories to help structure the potential input data you will be tinkering with if we have time. 

```
🦎 [jakth2@hellbender-login.mgmt.hellbender] ls VCF_INTRO_DATA/
TRIO_DV_BOVINE  TRIO_DV_HUMAN  TRIO_GATK  TRIO_INPUTS  TRIO_TRUTH
```

Everything within `VCF_INTRO_DATA` will be copied from my own directories. This should prevent you from messing up anyone else's files. But please be considerate and careful. For example, don't go into anyone else's directory (../pawprint) unless they've given you permission! 

### Here's a description of what each directory will contain:
* `TRIO_DV_BOVINE`: copies of the output I generated using the customized bovine-trained DeepVariant
* `TRIO_DV_HUMAN`: copies of the output I generated using the default human-trained DeepVariant
* `TRIO_GATK`: copies of the output Bob generated using GATK (another variant caller)
* `TRIO_INPUTS`: copies of the necessary input files for you to call variants with DeepVariant
* `TRIO_TRUTH`: copies of the high-confidence variants I used to re-train DeepVariant

## Get Started

We'll use this GitHub repository to share code and troubleshoot any issues you may encounter. And, it makes an excellent record of your learning steps!

Within your `WORKING` directory, clone the GitHub repository from GitHub --> HellBender with:

```
🦎 [jakth2@hellbender-login.mgmt.hellbender] pwd
/mnt/pixstor/schnabelr-ccgi-drii/WORKING/rpw3mx
🦎 [jakth2@hellbender-login.mgmt.hellbender] git@github.com:jkalleberg/using_DeepVariant.git
```

```Expected Output
Cloning into 'using_DeepVariant'...

remote: Enumerating objects: 26, done.
remote: Counting objects: 100% (26/26), done.
remote: Compressing objects: 100% (16/16), done.
remote: Total 26 (delta 10), reused 18 (delta 5), pack-reused 0
Receiving objects: 100% (26/26), 17.28 KiB | 2.88 MiB/s, done.
Resolving deltas: 100% (10/10), done.
```

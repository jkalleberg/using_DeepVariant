# VCF_INTRO
## Introduction

Within this GitHub repository, you will find modules to help familiarize yourself with variant calling, specifically with DeepVariant. DeepVariant is a deep-learning-based image classifier that uses read pileup images to identify potential deviations from a reference genome.

Because of the size of the data (Illumina whole-genome sequencing), we can not do this on a laptop. Instead, we need to work on a High Performance Computing (HPC) cluster, called Hellbender!

---
### Log on to Hellbender:
```
ssh <enter_your_pawprint_here>@hellbender-login.rnet.missouri.edu
```
----

As a student in the University of Missouri's Animal Genomics (UMAG) group, you need to understand some convetions we use. On the computing cluster, each person has a directory under a `WORKING` directory. They are named using your MU paw print ID. 

---
Rebekah, you have a working directory on Hellbender here: 
`/mnt/pixstor/schnabelr-ccgi-drii/WORKING/rpw3mx/`
---

The directory above should be empty except for two sub-directories created by me (Jenna, Post-doc). One is for `inputs` the second is for `outputs`. Neither of these directories is for executable code, which should be kept in a separate GitHub repository.  

```
🦎 [jakth2@hellbender-login.mgmt.hellbender] cd /mnt/pixstor/schnabelr-ccgi-drii/WORKING/rpw3mx
🦎 [jakth2@hellbender-login.mgmt.hellbender] ls
VCF_INTRO_DATA  VCF_INTRO_OUTPUTS
```

I also created some additional directories to help structure the potential input data you will be tinkering with, depending on how quickly we progress. 

```
🦎 [jakth2@hellbender-login.mgmt.hellbender] ls VCF_INTRO_DATA/
TRIO_DV_BOVINE  TRIO_DV_HUMAN  TRIO_GATK  TRIO_INPUTS  TRIO_TRUTH
```

Everyting within `VCF_INTRO_DATA` will be copied from my own directories. You shouldn't be able to break anything if you mess up these files. But, please be considerate and careful. For example, don't go into anyone else's directory (../pawprint) unless they've given you permission! 

### Here's a description of what each directory will contain:
* `TRIO_DV_BOVINE`: copies of the output I generated using the customized bovine-trained DeepVariant
* `TRIO_DV_HUMAN`: copies of the output I generated using the default human-trained DeepVariant
* `TRIO_GATK`: copies of the output Bob generated using GATK (another variant caller)
* `TRIO_INPUTS`: copies of the necessary input files for you to call variants with DeepVariant
* `TRIO_TRUTH`: copies of the high-confience variants I used to re-train DeepVariant

## Get Started

We'll use this GitHub repository to share code and trouble shoot any issues you may encounter. And, it makes an excellent record of your learning steps!

Within your `WORKING` directory, clone the GitHub repository from GitHub --> HellBender with:
```
🦎 [jakth2@hellbender-login.mgmt.hellbender] pwd
/mnt/pixstor/schnabelr-ccgi-drii/WORKING/rpw3mx
🦎 [jakth2@hellbender-login.mgmt.hellbender] git@github.com:jkalleberg/using_DeepVariant.git
```


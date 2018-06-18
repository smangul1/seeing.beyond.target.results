# Update! 06/18/2018

PILOT.both.clean.csv
PILOT.WGS.clean.csv
PILOT.RNASeq.clean.csv




#Make csv
sed 's/\t/,/g' TCIA.sample_info.txt >TCIA.sample_info.csv



# TCGA sample outcomes

Per-sample outcomes/phenotypes/covariates to test against.

## Data from TCIA (PMID 28052254)

| File | Contents |
| --- | --- |
| TCIA.HLA_optitype.txt | HLA allele calls from RNA-seq |
| TCIA.heterogeneity.txt | tumor heterogeneity, clonality, purity, neoantigen load |
| TCIA.sample_info.txt | sex, ethnicity, clinical info, grade, pathology, immuno-score |

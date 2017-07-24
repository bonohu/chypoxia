# chypoxia
Scripts to make data for comparative transcritomes from public database.

- Microarray
  - `RMA.r` R script to run RMA normalization at a time.
  - `HN2cnt_marray.pl` Hypoxia-normoxia pair ratio data to classify up, down and unchanged. microarray version.
- RNA-seq
  - `run_trim_galore_s.sh` Shell script to run trim_galore for single-end reads.
  - `run_trim_galore_p.sh` Shell script to run trim_galore for paired-end reads.
  - `HN2cnt_RNAseq.pl` Hypoxia-normoxia pair ratio data to classify up, down and unchanged. RNAseq version.
- Shared
  - `PCA.r` R script to execute primary component analysis (PCA).

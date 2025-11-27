#!/bin/bash

#SBATCH --job-name=formative
#SBATCH --partition=teach_cpu
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=0:30:00
#SBATCH --mem=100M
#SBATCH --account=SSCM037184
#SBATCH --output ./%j.out


cd code

bash 1-data-check-bm.sh
bash 2-data-check-accel.sh
bash 3-data-fix-accel.sh
bash 4-list-accel-ids.sh
Rscript 5-generate-sample.R
Rscript 6-demo_data_prep.R

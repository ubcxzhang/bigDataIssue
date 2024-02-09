#!/bin/bash
#SBATCH -J F_big
#SBATCH --account=def-ubcxzh
#SBATCH --cpus-per-task=1
#SBATCH --mem=4G 
#SBATCH --time=0-23:59 # running time
cd /home/skyler93/projects/def-ubcxzh/skyler93/big_sample_issue_final
module load StdEnv/2023 r/4.3.1
Rscript --vanilla F_possion_per_big.R $1 $2 > F_possion_per_big.Rout 2>&1

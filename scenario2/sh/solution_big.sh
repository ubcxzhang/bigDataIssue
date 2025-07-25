#!/bin/sh
#SBATCH --account=def-ubcxzh
#SBATCH --cpus-per-task=8
#SBATCH --mem=40g
#SBATCH --time=20:00:00
module load StdEnv/2023 r/4.3.1
Rscript ./scenario2/code/solution_big.R $1 $2 $3 > ./scenario2/rout/solution_big.Rout 2>&1
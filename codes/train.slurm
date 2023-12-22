#!/bin/bash

#SBATCH --job-name=16fix
#SBATCH --time=1:00:00
#SBATCH --output=log_fix16_eval.out
#SBATCH --error=log_fix16_eval.err


python3 -m venv myenv
source ./myenv/bin/activate

# Add/Remove `--dataset_aug` to enable/disable dataset augmentation (random rotation & zooming)
python3 exp.py


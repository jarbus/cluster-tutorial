#!/bin/bash
#SBATCH --job-name=gpu_job
#SBATCH --output=gpu_job.out
#SBATCH --error=gpu_job.err
#SBATCH --time=00:10:00
#SBATCH --gres=gpu:2

# make sure to activate your conda environment before running any python, like:
# conda activate your_env

hostname
echo "Job ID: $SLURM_JOB_ID"
echo "Allocated GPUs (from CUDA_VISIBLE_DEVICES): $CUDA_VISIBLE_DEVICES"

# Create a scratch directory for this job if it doesn't exist
if [ ! -d /data/$(whoami) ]; then
    mkdir -m 700 /data/$(whoami)
fi

cp -a ./my_dataset /data/$(whoami)/

# my_script.py takes two arguments: input file and output file:
python3 my_script.py /data/$(whoami)/my_dataset /data/$(whoami)/my_output

# Copy results back to dir:
cp -a /data/$(whoami)/my_output .

# Clean up scratch files:
rm /data/$(whoami)/my_dataset /data/$(whoami)/my_output

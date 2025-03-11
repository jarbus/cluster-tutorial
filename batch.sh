#!/bin/bash
#SBATCH --job-name=gpu_job
#SBATCH --output=gpu_job.out
#SBATCH --error=gpu_job.err
#SBATCH --time=00:10:00
#SBATCH --gres=gpu:2

hostname
echo "Job ID: $SLURM_JOB_ID"
echo "Allocated GPUs (from CUDA_VISIBLE_DEVICES): $CUDA_VISIBLE_DEVICES"

# Optionally, list detailed GPU info
nvidia-smi -L

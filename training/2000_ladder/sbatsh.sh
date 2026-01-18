#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=8-00:00:00         
#SBATCH --job-name="fit_ace_pd"
#SBATCH --gres=gpu:1              
#SBATCH --constraint=a100
#SBATCH --partition=general
#SBATCH --qos=xlong
#SBATCH --mem=80G

ml load CMake
ml load CUDA/11.7.0
ml load cuDNN/8.4.1.50-CUDA-11.7.0
ml load Python
conda activate /scratch/$USER/conda-env/pacemaker-test
pacemaker pd_fit.yaml

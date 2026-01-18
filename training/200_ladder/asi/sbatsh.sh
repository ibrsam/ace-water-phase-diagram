#!/bin/bash
#SBATCH --nodes=1
#SBATCH --time=1-00:00:00         
#SBATCH --job-name="ace_active_set"
#SBATCH --gres=gpu:1              
#SBATCH --constraint=a100
##SBATCH --partition=general
##SBATCH --qos=general
#SBATCH --mem=80G

ml load CMake
ml load CUDA/11.7.0
ml load cuDNN/8.4.1.50-CUDA-11.7.0
ml load Python
conda activate /scratch/$USER/conda-env/pacemaker-test
pace_activeset -d ../fitting_data_info.pckl.gzip --all-atoms  output_potential.yaml
#pace_corerep output_potential.yaml -a output_potential.asi -d ../fitting_data_info.pckl.gzip -n 2949

#!/bin/bash
#SBATCH --job-name=fit_pd
#SBATCH --account=cicn2
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=3-00:00:00
#SBATCH --gres=gpu:1
#SBATCH --qos=acc_resa


module purge
module load miniforge && source activate ace
module load cuda cudnn/8.8.0-cuda12 
module load cuda/11.8
/gpfs/apps/MN5/ACC/MINIFORGE/24.3.0-0/envs/ace/bin/pacemaker
pacemaker -ip in_pot.yaml pd_fit.yaml

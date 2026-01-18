#!/bin/bash
#SBATCH --job-name=fit
#SBATCH --account=cicn2
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=3-00:00:00
#SBATCH --gres=gpu:1
#SBATCH --qos=acc_resa

export SRUN_CPUS_PER_TASK=${SLURM_CPUS_PER_TASK}
module purge
module load miniforge && source activate ace
#ml cuda cudnn/8.8.0-cuda12
module load cuda cudnn/8.8.0-cuda12 
module load cuda/11.8

/gpfs/apps/MN5/ACC/MINIFORGE/24.3.0-0/envs/ace/bin/pacemaker
#srun pacemaker --verbose-tf input_cc_trn_al_06.yaml
srun pace_activeset -d ../fitting_data_info.pckl.gzip --all-atoms interim_potential_ladder_step_1.yaml

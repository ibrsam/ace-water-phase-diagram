#!/bin/bash
#SBATCH --job-name=iii-260
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=128
#SBATCH --time=2-00:00:00
#SBATCH --gres=gpu:a100:1
#SBATCH --partition=gpu
#SBATCH --mem=40GB


module purge
module load chem/LAMMPS/27Jun2024-foss-2023b-kokkos-CUDA-12.5.0
export PLUMED_NUM_THREADS=${SLURM_CPUS_PER_TASK}
export SRUN_CPUS_PER_TASK=${SLURM_CPUS_PER_TASK}
srun lmp -k on g 1 -sf kk -pk kokkos newton on neigh half -in in.lammps > lmp.out

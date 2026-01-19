#!/bin/bash
#SBATCH --job-name=ace-pd
#SBATCH --account=cicn2
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=40
#SBATCH --time=3-00:00:00
#SBATCH --gres=gpu:2
#SBATCH --qos=acc_resa


module purge
ml load mkl intel cuda/12.2 openmpi/4.1.5-gcc fftw/3.3.10-gcc-ompi gsl/2.8-gcc lammps/7Feb2024
export PLUMED_NUM_THREADS=${SLURM_CPUS_PER_TASK}
export SRUN_CPUS_PER_TASK=${SLURM_CPUS_PER_TASK}
srun lmp_mpi -k on g 2  -sf kk -pk kokkos newton on neigh half -in in.lammps > lmp.out

#!/bin/bash
#SBATCH --job-name=ace-pd
#SBATCH --time=7-23:59:00
#SBATCH --partition=compute
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=28
#SBATCH --cpus-per-task=2


module purge
module load lammps/latest-gnu-z
export PLUMED_NUM_THREADS=${SLURM_CPUS_PER_TASK}
export SRUN_CPUS_PER_TASK=${SLURM_CPUS_PER_TASK}
mpirun -np 28 lmp_mpi  -in in.lammps  > lmp.out
# Phase Diagram of Water from an Atomic Cluster Expansion Potential

This repository contains the input files, scripts, and analysis tools used to compute the phase diagram of water using an Atomic Cluster Expansion (ACE) potential trained on revPBE-D3 density-functional theory data.

The phase diagram was obtained by combining:
- On-the-Fly Probability Enhanced Sampling (OPES) for reversible solid–liquid coexistence simulations
- Gibbs–Duhem integration to trace coexistence lines

## Contents
- `potentials/`: Final ACE potential used in this work
- `training/`: PACEmaker inputs and active learning workflow
- `opes/`: PLUMED input files and coexistence simulations
- `gibbs_duhem/`: Scripts for Gibbs–Duhem integration
- `analysis/`: Phase diagram reconstruction and plotting scripts

## Reproducibility
A snapshot of this repository, together with the training data and final ACE potential, is archived on Zenodo:
**DOI: XXXX (to be added after Zenodo deposition)**

## Requirements
- LAMMPS with ACE support
- PLUMED (with OPES)
- PACEmaker
- Python 3.x (NumPy, Pandas, SciPy, Matplotlib)

## Citation
If you use this work, please cite:

Ibrahim, E.; Lysogorskiy,  Y.; Drautz, R. 
Efficient parametrization of transferable atomic cluster expansion for water.
Journal of Chemical Theory and Computation 2024,20,
11049–11057,DOI:10.1021/acs.jctc.4c00802.

Ibrahim, E.; Lysogorskiy, Y.; Drautz, R.; Piaggi, P. M. Water Phase Diagram from a General-Purpose Atomic Cluster Expansion Potential. arXiv 2026, arXiv:2601.xxxxx.

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

## Dataset
This dataset contains the training configurations, reference energies and forces, and auxiliary data used to construct the Atomic Cluster Expansion (ACE) potential for water and to compute the water phase diagram using OPES coexistence simulations and Gibbs–Duhem integration.

The dataset complements the accompanying GitHub repository, which provides the input files and analysis scripts required to reproduce the reported results.

The data are provided as a gzip-compressed pandas DataFrame serialized using Python pickle format.  
The file should **not** be decompressed manually. Instead, it can be loaded directly in Python using `pandas` as follows:

```python
import pandas as pd
df = pd.read_pickle("dataset_water_ACE_revPBE_D3.gzip", compression="gzip")
```
The dataset is archived on Zenodo and can be accessed via the following DOI:
**https://doi.org/10.5281/zenodo.18291736**

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

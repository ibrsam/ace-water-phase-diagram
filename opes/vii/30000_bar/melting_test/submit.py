import os
path ='./'
dirs = [d for d in os.listdir(path) if os.path.isdir(os.path.join(path, d))]

for d in dirs:
 os.chdir(f'{d}')
 os.system('sbatch sbatch.sh')
 os.chdir('../')

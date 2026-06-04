### Welcome to CSE 420: Introduction to Natural Language Processing - Summer 2026 session

**WIP**


To use the shared course kernel in Jupyterlab, choose `CSE 420 NLP` from the kernel list drop down at the top right corner.

To use the Python environment in your SLURM file, use
```
#!/bin/bash
#SBATCH ...

conda activate /mnt/nrdstor/cse420/shared/conda/envs/conda-cse420

python my_script.py

```

You can run the homework assignments on [HCC](https://swan-ood.unl.edu/) or [Google Colab](https://colab.research.google.com). You can also run them on your personal machine once you have the required libraries installed. However, we will only be providing support for HCC.

You can create your own environment for projects or use the shared class environment. `Conda` and `uv` are popular choices for creating environments.

To run using JupyterLab, use the following parameters to ensure the notebook runs smoothly.
- `RAM=16GB`
- `PARTITION=gpu`
- `GRES=gpu`
- `JOB CONSTRAINTS=gpu_32gb`

If the notebook uses a large dataset, please increase the RAM.


Please clone this repository to get started with your homework assignments.

Contributors:
- Haluk Dogan
- Mrinal Rawool (TA)
- Stephen Scott (Instructor)
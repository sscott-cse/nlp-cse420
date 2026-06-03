### Welcome to CSE 420: Introduction to Natural Language Processing - Summer 2026 session


To use the shared course kernel in Jupyterlab, choose `nlp-cse420` from the kernel list drop down at the top right corner.

To use the Python environment in your SLURM file, use
```
#!/bin/bash
#SBATCH ...

source /mnt/nrdstor/cse420/shared/cse420-uvenv/.venv/bin/activate

python my_script.py

```

You can run the homework assignments on [HCC](https://swan-ood.unl.edu/) or [Google Colab](https://colab.research.google.com). However, we will only be providing support for HCC.

You can create your own environment for projects or use the shared class environment. `Conda` and `uv` are popular choices for creating environments.


#!/bin/sh
#SBATCH --time=6:00:00                        # Maximum run time in hh:mm:ss
#SBATCH --mem=16000                           # Maximum memory required (in megabytes)
#SBATCH --job-name=dnlp-cse-420                # Job name (to track progress)   
#SBATCH --partition=csce_gpu,csce_gpu_preempt # Partition on which to run job 
#SBATCH --gres=gpu:1                          # Don't change this, it requests a GPU
#SBATCH --constraint=gpu_16gb                 # will request a GPU with 16GB of RAM, independent of the type of card

echo "CUDA_VISIBLE_DEVICES: $CUDA_VISIBLE_DEVICES"
nvidia-smi

module load mamba
conda activate /mnt/nrdstor/cse420/shared/conda/envs/conda-cse420
# allows GPU visibility
export LD_LIBRARY_PATH=/util/opt/cuda/12.8/lib64:/util/opt/openmpi/4.1/gcc/11/lib:/util/comp/gcc/11/lib64:/util/comp/gcc/11/lib


python demo_slurm.py
# $@
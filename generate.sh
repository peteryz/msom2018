#!/bin/bash

#SBATCH --job-name=generateInstances
#SBATCH --output=generate_log.txt
#SBATCH --err=generate_err.txt
#SBATCH -p sched_mit_sloan_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1G
#SBATCH --time=0-00:10
#SBATCH --constraint="centos7"

module load engaging/julia/0.5.0

julia generateInstancesEngaging.jl

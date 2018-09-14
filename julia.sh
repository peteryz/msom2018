#!/bin/bash

#SBATCH --job-name=jl-3-OVP+elas+price
#SBATCH --output=julia_log.txt
#SBATCH --err=julia_err.txt
#SBATCH -p sched_mit_sloan_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=4G
#SBATCH --time=0-02:00
#SBATCH --constraint="centos7"

module load engaging/julia/0.5.0

julia affine20180801Engaging.jl

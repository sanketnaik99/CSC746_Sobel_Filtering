#!/bin/bash -l
#SBATCH -N 1
#SBATCH -c 10
#SBATCH -G 1
#SBATCH -C gpu
#SBATCH -t 5:00
#SBATCH -J queue
#SBATCH --job-name=gpu-job
#SBATCH --output=gpu-job.o%j
#SBATCH --error=gpu-job.e%j

export LIBOMPTARGET_INFO=4
#
# note: you will need to modify below here to launch your specific program
# it is assumed your environment is set up properly for using the Cori GPUs
# prior to you launching this batch script
#
for N in 32 64 128 256 512 1024 # loop over problem sizes
# for N in 32 # loop over problem sizes
    do
    for B in 1 4 16 64 256 1024 4096
    # for B in 1 4
        do
        echo -e "\n\nStarted new run\n"
        echo nvprof -s -m sm_efficiency ./sobel_gpu -N $N -B $B
        nvprof -s -m sm_efficiency ./sobel_gpu -N $N -B $B
    done
done
echo nvprof -m sm_efficiency ./sobel_cpu_omp_offload
nvprof -m sm_efficiency ./sobel_cpu_omp_offload
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
for N in 32 64 128 256 512 1024 # loop over number of threads per block
# for N in 32 # loop over number of threads per block
    do
    for B in 1 4 16 64 256 1024 4096 # loop over block sizes
    # for B in 1 4 # loop over block sizes
        do
        echo -e "\n\nStarted new run for $N threads per block and $B block size\n"
        echo -e "\nRUNTIME METRIC\n"
        echo nvprof ./sobel_gpu -N $N -B $B
        nvprof ./sobel_gpu -N $N -B $B
        echo -e "\nSM EFFICIENCY METRIC\n"
        echo nvprof -m sm_efficiency ./sobel_gpu -N $N -B $B
        nvprof -m sm_efficiency ./sobel_gpu -N $N -B $B
    done
done
echo -e "\n\nStarted OpenMP with device offload run"
echo -e "\nRUNTIME METRIC\n"
echo nvprof ./sobel_cpu_omp_offload
nvprof ./sobel_cpu_omp_offload
echo -e "\nSM EFFICIENCY METRIC\n"
echo nvprof -m sm_efficiency ./sobel_cpu_omp_offload
nvprof -m sm_efficiency ./sobel_cpu_omp_offload
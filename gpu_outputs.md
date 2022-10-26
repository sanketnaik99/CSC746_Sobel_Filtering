# GPU Outputs

```bash
snaik@cgpu02:~/CSC_746/CSC746_Sobel_Filtering/build> ../scripts/skeleton-gpu-batch-script.sh 
nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==38274== NVPROF is profiling process 38274, command: ./sobel_gpu -N 32 -B 1
 GPU configuration: 1 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==38274== Profiling application: ./sobel_gpu -N 32 -B 1
==38274== Profiling result:
==38274== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       1.25%       1.25%       1.25%
nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==38335== NVPROF is profiling process 38335, command: ./sobel_gpu -N 32 -B 4
 GPU configuration: 4 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==38335== Profiling application: ./sobel_gpu -N 32 -B 4
==38335== Profiling result:
==38335== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       5.00%       5.00%       5.00%
nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==38393== NVPROF is profiling process 38393, command: ./sobel_gpu -N 32 -B 16
 GPU configuration: 16 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==38393== Profiling application: ./sobel_gpu -N 32 -B 16
==38393== Profiling result:
==38393== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      19.99%      19.99%      19.99%
nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==38500== NVPROF is profiling process 38500, command: ./sobel_gpu -N 32 -B 64
 GPU configuration: 64 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==38500== Profiling application: ./sobel_gpu -N 32 -B 64
==38500== Profiling result:
==38500== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      79.89%      79.89%      79.89%
nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==38959== NVPROF is profiling process 38959, command: ./sobel_gpu -N 32 -B 256
 GPU configuration: 256 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==38959== Profiling application: ./sobel_gpu -N 32 -B 256
==38959== Profiling result:
==38959== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      99.84%      99.84%      99.84%
nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==39015== NVPROF is profiling process 39015, command: ./sobel_gpu -N 32 -B 1024
 GPU configuration: 1024 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==39015== Profiling application: ./sobel_gpu -N 32 -B 1024
==39015== Profiling result:
==39015== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      99.47%      99.47%      99.47%
nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==39107== NVPROF is profiling process 39107, command: ./sobel_gpu -N 32 -B 4096
 GPU configuration: 4096 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==39107== Profiling application: ./sobel_gpu -N 32 -B 4096
==39107== Profiling result:
==39107== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      99.02%      99.02%      99.02%
nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==39583== NVPROF is profiling process 39583, command: ./sobel_gpu -N 64 -B 1
 GPU configuration: 1 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==39583== Profiling application: ./sobel_gpu -N 64 -B 1
==39583== Profiling result:
==39583== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       1.25%       1.25%       1.25%
nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==39650== NVPROF is profiling process 39650, command: ./sobel_gpu -N 64 -B 4
 GPU configuration: 4 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==39650== Profiling application: ./sobel_gpu -N 64 -B 4
==39650== Profiling result:
==39650== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       5.00%       5.00%       5.00%
nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==39705== NVPROF is profiling process 39705, command: ./sobel_gpu -N 64 -B 16
 GPU configuration: 16 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==39705== Profiling application: ./sobel_gpu -N 64 -B 16
==39705== Profiling result:
==39705== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      19.99%      19.99%      19.99%
nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==39760== NVPROF is profiling process 39760, command: ./sobel_gpu -N 64 -B 64
 GPU configuration: 64 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==39760== Profiling application: ./sobel_gpu -N 64 -B 64
==39760== Profiling result:
==39760== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      79.90%      79.90%      79.90%
nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==39815== NVPROF is profiling process 39815, command: ./sobel_gpu -N 64 -B 256
 GPU configuration: 256 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==39815== Profiling application: ./sobel_gpu -N 64 -B 256
==39815== Profiling result:
==39815== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      99.72%      99.72%      99.72%
nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==39875== NVPROF is profiling process 39875, command: ./sobel_gpu -N 64 -B 1024
 GPU configuration: 1024 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==39875== Profiling application: ./sobel_gpu -N 64 -B 1024
==39875== Profiling result:
==39875== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      99.08%      99.08%      99.08%
nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==39930== NVPROF is profiling process 39930, command: ./sobel_gpu -N 64 -B 4096
 GPU configuration: 4096 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==39930== Profiling application: ./sobel_gpu -N 64 -B 4096
==39930== Profiling result:
==39930== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      97.12%      97.12%      97.12%
nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==39986== NVPROF is profiling process 39986, command: ./sobel_gpu -N 128 -B 1
 GPU configuration: 1 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==39986== Profiling application: ./sobel_gpu -N 128 -B 1
==39986== Profiling result:
==39986== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       1.25%       1.25%       1.25%
nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==40041== NVPROF is profiling process 40041, command: ./sobel_gpu -N 128 -B 4
 GPU configuration: 4 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==40041== Profiling application: ./sobel_gpu -N 128 -B 4
==40041== Profiling result:
==40041== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       5.00%       5.00%       5.00%
nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==40097== NVPROF is profiling process 40097, command: ./sobel_gpu -N 128 -B 16
 GPU configuration: 16 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==40097== Profiling application: ./sobel_gpu -N 128 -B 16
==40097== Profiling result:
==40097== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      19.99%      19.99%      19.99%
nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==40155== NVPROF is profiling process 40155, command: ./sobel_gpu -N 128 -B 64
 GPU configuration: 64 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==40155== Profiling application: ./sobel_gpu -N 128 -B 64
==40155== Profiling result:
==40155== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      79.87%      79.87%      79.87%
nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==40210== NVPROF is profiling process 40210, command: ./sobel_gpu -N 128 -B 256
 GPU configuration: 256 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==40210== Profiling application: ./sobel_gpu -N 128 -B 256
==40210== Profiling result:
==40210== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      99.49%      99.49%      99.49%
nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==40265== NVPROF is profiling process 40265, command: ./sobel_gpu -N 128 -B 1024
 GPU configuration: 1024 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==40265== Profiling application: ./sobel_gpu -N 128 -B 1024
==40265== Profiling result:
==40265== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      97.27%      97.27%      97.27%
nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==40322== NVPROF is profiling process 40322, command: ./sobel_gpu -N 128 -B 4096
 GPU configuration: 4096 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==40322== Profiling application: ./sobel_gpu -N 128 -B 4096
==40322== Profiling result:
==40322== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      98.23%      98.23%      98.23%
nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==40378== NVPROF is profiling process 40378, command: ./sobel_gpu -N 256 -B 1
 GPU configuration: 1 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==40378== Profiling application: ./sobel_gpu -N 256 -B 1
==40378== Profiling result:
==40378== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       1.25%       1.25%       1.25%
nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==40433== NVPROF is profiling process 40433, command: ./sobel_gpu -N 256 -B 4
 GPU configuration: 4 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==40433== Profiling application: ./sobel_gpu -N 256 -B 4
==40433== Profiling result:
==40433== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       5.00%       5.00%       5.00%
nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==40492== NVPROF is profiling process 40492, command: ./sobel_gpu -N 256 -B 16
 GPU configuration: 16 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==40492== Profiling application: ./sobel_gpu -N 256 -B 16
==40492== Profiling result:
==40492== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      19.98%      19.98%      19.98%
nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==41068== NVPROF is profiling process 41068, command: ./sobel_gpu -N 256 -B 64
 GPU configuration: 64 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==41068== Profiling application: ./sobel_gpu -N 256 -B 64
==41068== Profiling result:
==41068== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      79.77%      79.77%      79.77%
nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==41602== NVPROF is profiling process 41602, command: ./sobel_gpu -N 256 -B 256
 GPU configuration: 256 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==41602== Profiling application: ./sobel_gpu -N 256 -B 256
==41602== Profiling result:
==41602== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      95.09%      95.09%      95.09%
nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==41659== NVPROF is profiling process 41659, command: ./sobel_gpu -N 256 -B 1024
 GPU configuration: 1024 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==41659== Profiling application: ./sobel_gpu -N 256 -B 1024
==41659== Profiling result:
==41659== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      94.12%      94.12%      94.12%
nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==41714== NVPROF is profiling process 41714, command: ./sobel_gpu -N 256 -B 4096
 GPU configuration: 4096 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==41714== Profiling application: ./sobel_gpu -N 256 -B 4096
==41714== Profiling result:
==41714== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      98.30%      98.30%      98.30%
nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==41769== NVPROF is profiling process 41769, command: ./sobel_gpu -N 512 -B 1
 GPU configuration: 1 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==41769== Profiling application: ./sobel_gpu -N 512 -B 1
==41769== Profiling result:
==41769== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       1.25%       1.25%       1.25%
nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==41824== NVPROF is profiling process 41824, command: ./sobel_gpu -N 512 -B 4
 GPU configuration: 4 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==41824== Profiling application: ./sobel_gpu -N 512 -B 4
==41824== Profiling result:
==41824== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       4.99%       4.99%       4.99%
nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==41879== NVPROF is profiling process 41879, command: ./sobel_gpu -N 512 -B 16
 GPU configuration: 16 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==41879== Profiling application: ./sobel_gpu -N 512 -B 16
==41879== Profiling result:
==41879== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      19.89%      19.89%      19.89%
nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==41937== NVPROF is profiling process 41937, command: ./sobel_gpu -N 512 -B 64
 GPU configuration: 64 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==41937== Profiling application: ./sobel_gpu -N 512 -B 64
==41937== Profiling result:
==41937== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      79.10%      79.10%      79.10%
nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==41992== NVPROF is profiling process 41992, command: ./sobel_gpu -N 512 -B 256
 GPU configuration: 256 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==41992== Profiling application: ./sobel_gpu -N 512 -B 256
==41992== Profiling result:
==41992== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      89.68%      89.68%      89.68%
nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==42047== NVPROF is profiling process 42047, command: ./sobel_gpu -N 512 -B 1024
 GPU configuration: 1024 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==42047== Profiling application: ./sobel_gpu -N 512 -B 1024
==42047== Profiling result:
==42047== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      90.64%      90.64%      90.64%
nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==42103== NVPROF is profiling process 42103, command: ./sobel_gpu -N 512 -B 4096
 GPU configuration: 4096 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==42103== Profiling application: ./sobel_gpu -N 512 -B 4096
==42103== Profiling result:
==42103== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      98.13%      98.13%      98.13%
nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==42324== NVPROF is profiling process 42324, command: ./sobel_gpu -N 1024 -B 1
 GPU configuration: 1 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==42324== Profiling application: ./sobel_gpu -N 1024 -B 1
==42324== Profiling result:
==42324== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       1.25%       1.25%       1.25%
nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==42380== NVPROF is profiling process 42380, command: ./sobel_gpu -N 1024 -B 4
 GPU configuration: 4 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==42380== Profiling application: ./sobel_gpu -N 1024 -B 4
==42380== Profiling result:
==42380== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       4.99%       4.99%       4.99%
nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==42435== NVPROF is profiling process 42435, command: ./sobel_gpu -N 1024 -B 16
 GPU configuration: 16 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==42435== Profiling application: ./sobel_gpu -N 1024 -B 16
==42435== Profiling result:
==42435== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      19.90%      19.90%      19.90%
nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==42490== NVPROF is profiling process 42490, command: ./sobel_gpu -N 1024 -B 64
 GPU configuration: 64 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==42490== Profiling application: ./sobel_gpu -N 1024 -B 64
==42490== Profiling result:
==42490== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      79.14%      79.14%      79.14%
nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==42545== NVPROF is profiling process 42545, command: ./sobel_gpu -N 1024 -B 256
 GPU configuration: 256 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==42545== Profiling application: ./sobel_gpu -N 1024 -B 256
==42545== Profiling result:
==42545== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      89.32%      89.32%      89.32%
nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==42600== NVPROF is profiling process 42600, command: ./sobel_gpu -N 1024 -B 1024
 GPU configuration: 1024 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==42600== Profiling application: ./sobel_gpu -N 1024 -B 1024
==42600== Profiling result:
==42600== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      93.86%      93.86%      93.86%
nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==42655== NVPROF is profiling process 42655, command: ./sobel_gpu -N 1024 -B 4096
 GPU configuration: 4096 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==42655== Profiling application: ./sobel_gpu -N 1024 -B 4096
==42655== Profiling result:
==42655== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      98.15%      98.15%      98.15%
nvprof -m sm_efficiency ./sobel_cpu_omp_offload
==42710== NVPROF is profiling process 42710, command: ./sobel_cpu_omp_offload
 Read data from the file ../data/zebra-gray-int8-4x 
Libomptarget device 0 info: OpenMP Host-Device pointer mappings after block at unknown:0:0:
Libomptarget device 0 info: Host Ptr           Target Ptr         Size (B) RefCount Declaration
Libomptarget device 0 info: 0x00001555168c6010 0x00001554e8000000 146393408 1        unknown at unknown:0:0
Libomptarget device 0 info: 0x000015551f463010 0x00001554f2000000 146393408 1        unknown at unknown:0:0
Libomptarget device 0 info: 0x00007fffffffba78 0x00001554fac00200 4        1        unknown at unknown:0:0
Libomptarget device 0 info: 0x00007fffffffba7c 0x00001554fac00000 4        1        unknown at unknown:0:0
Libomptarget device 0 info: 0x00007fffffffba90 0x00001554fac00600 36       1        unknown at unknown:0:0
Libomptarget device 0 info: 0x00007fffffffbac0 0x00001554fac00400 36       1        unknown at unknown:0:0
Libomptarget device 0 info: OpenMP Host-Device pointer mappings after block at unknown:0:0:
Libomptarget device 0 info: Host Ptr           Target Ptr         Size (B) RefCount Declaration
Libomptarget device 0 info: 0x00001555168c6010 0x00001554e8000000 146393408 1        unknown at unknown:0:0
Libomptarget device 0 info: 0x000015551f463010 0x00001554f2000000 146393408 1        unknown at unknown:0:0
Libomptarget device 0 info: 0x00007fffffffba78 0x00001554fac00200 4        1        unknown at unknown:0:0
Libomptarget device 0 info: 0x00007fffffffba7c 0x00001554fac00000 4        1        unknown at unknown:0:0
Libomptarget device 0 info: 0x00007fffffffba90 0x00001554fac00600 36       1        unknown at unknown:0:0
Libomptarget device 0 info: 0x00007fffffffbac0 0x00001554fac00400 36       1        unknown at unknown:0:0
 Elapsed time is : 0.69793 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==42710== Profiling application: ./sobel_cpu_omp_offload
==42710== Profiling result:
==42710== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: __omp_offloading_36_2a21e4f5__Z18do_sobel_filteringPfS_ii_l108
          1                             sm_efficiency                   Multiprocessor Activity      99.47%      99.47%      99.47%
```
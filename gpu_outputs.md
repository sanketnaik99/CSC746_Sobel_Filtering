# GPU Outputs

```bash
snaik@cgpu02:~/CSC_746/CSC746_Sobel_Filtering/build> ../scripts/skeleton-gpu-batch-script.sh 


Started new run for 32 threads per block and 1 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 32 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==12711== NVPROF is profiling process 12711, command: ./sobel_gpu -N 32 -B 1
 GPU configuration: 1 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==12711== Profiling application: ./sobel_gpu -N 32 -B 1
==12711== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  679.91ms         1  679.91ms  679.91ms  679.91ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   68.66%  693.81ms         1  693.81ms  693.81ms  693.81ms  cudaDeviceSynchronize
                   29.66%  299.69ms         4  74.923ms  8.5610us  299.52ms  cudaMallocManaged
                    1.53%  15.486ms         4  3.8715ms  4.3360us  15.352ms  cudaMemPrefetchAsync
                    0.07%  744.14us       101  7.3670us     114ns  329.25us  cuDeviceGetAttribute
                    0.06%  567.85us         1  567.85us  567.85us  567.85us  cuDeviceTotalMem
                    0.01%  93.918us         1  93.918us  93.918us  93.918us  cuDeviceGetName
                    0.01%  66.900us         1  66.900us  66.900us  66.900us  cudaLaunchKernel
                    0.00%  6.4280us         1  6.4280us  6.4280us  6.4280us  cuDeviceGetPCIBusId
                    0.00%  1.0230us         3     341ns     134ns     730ns  cuDeviceGetCount
                    0.00%     596ns         2     298ns     112ns     484ns  cuDeviceGet
                    0.00%     241ns         1     241ns     241ns     241ns  cuDeviceGetUuid

==12711== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.43455ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.11314ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==12776== NVPROF is profiling process 12776, command: ./sobel_gpu -N 32 -B 1
 GPU configuration: 1 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==12776== Profiling application: ./sobel_gpu -N 32 -B 1
==12776== Profiling result:
==12776== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       1.25%       1.25%       1.25%


Started new run for 32 threads per block and 4 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 32 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==12839== NVPROF is profiling process 12839, command: ./sobel_gpu -N 32 -B 4
 GPU configuration: 4 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==12839== Profiling application: ./sobel_gpu -N 32 -B 4
==12839== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  195.67ms         1  195.67ms  195.67ms  195.67ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   55.82%  286.24ms         4  71.559ms  6.4150us  286.08ms  cudaMallocManaged
                   40.87%  209.58ms         1  209.58ms  209.58ms  209.58ms  cudaDeviceSynchronize
                    3.06%  15.702ms         4  3.9256ms  4.3320us  15.557ms  cudaMemPrefetchAsync
                    0.15%  763.80us       101  7.5620us     271ns  332.50us  cuDeviceGetAttribute
                    0.07%  345.03us         1  345.03us  345.03us  345.03us  cuDeviceTotalMem
                    0.02%  89.144us         1  89.144us  89.144us  89.144us  cuDeviceGetName
                    0.01%  75.591us         1  75.591us  75.591us  75.591us  cudaLaunchKernel
                    0.00%  6.1280us         1  6.1280us  6.1280us  6.1280us  cuDeviceGetPCIBusId
                    0.00%  1.3330us         3     444ns     303ns     699ns  cuDeviceGetCount
                    0.00%     801ns         2     400ns     286ns     515ns  cuDeviceGet
                    0.00%     369ns         1     369ns     369ns     369ns  cuDeviceGetUuid

==12839== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.30233ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.11151ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==12903== NVPROF is profiling process 12903, command: ./sobel_gpu -N 32 -B 4
 GPU configuration: 4 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==12903== Profiling application: ./sobel_gpu -N 32 -B 4
==12903== Profiling result:
==12903== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       5.00%       5.00%       5.00%


Started new run for 32 threads per block and 16 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 32 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==12965== NVPROF is profiling process 12965, command: ./sobel_gpu -N 32 -B 16
 GPU configuration: 16 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==12965== Profiling application: ./sobel_gpu -N 32 -B 16
==12965== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  49.731ms         1  49.731ms  49.731ms  49.731ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   78.14%  287.47ms         4  71.868ms  6.8680us  287.32ms  cudaMallocManaged
                   17.29%  63.601ms         1  63.601ms  63.601ms  63.601ms  cudaDeviceSynchronize
                    4.22%  15.521ms         4  3.8802ms  4.3230us  15.335ms  cudaMemPrefetchAsync
                    0.21%  757.72us       101  7.5020us     116ns  337.64us  cuDeviceGetAttribute
                    0.09%  346.05us         1  346.05us  346.05us  346.05us  cuDeviceTotalMem
                    0.03%  113.46us         1  113.46us  113.46us  113.46us  cuDeviceGetName
                    0.02%  77.622us         1  77.622us  77.622us  77.622us  cudaLaunchKernel
                    0.00%  7.5230us         1  7.5230us  7.5230us  7.5230us  cuDeviceGetPCIBusId
                    0.00%     950ns         3     316ns     157ns     629ns  cuDeviceGetCount
                    0.00%     547ns         2     273ns     124ns     423ns  cuDeviceGet
                    0.00%     274ns         1     274ns     274ns     274ns  cuDeviceGetUuid

==12965== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.41270ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.12109ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==13029== NVPROF is profiling process 13029, command: ./sobel_gpu -N 32 -B 16
 GPU configuration: 16 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13029== Profiling application: ./sobel_gpu -N 32 -B 16
==13029== Profiling result:
==13029== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      19.99%      19.99%      19.99%


Started new run for 32 threads per block and 64 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 32 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==13092== NVPROF is profiling process 13092, command: ./sobel_gpu -N 32 -B 64
 GPU configuration: 64 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13092== Profiling application: ./sobel_gpu -N 32 -B 64
==13092== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  12.603ms         1  12.603ms  12.603ms  12.603ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   86.52%  285.53ms         4  71.381ms  6.2550us  285.37ms  cudaMallocManaged
                    8.35%  27.552ms         1  27.552ms  27.552ms  27.552ms  cudaDeviceSynchronize
                    4.74%  15.644ms         4  3.9110ms  4.1880us  15.429ms  cudaMemPrefetchAsync
                    0.23%  760.39us       101  7.5280us     119ns  340.22us  cuDeviceGetAttribute
                    0.11%  363.08us         1  363.08us  363.08us  363.08us  cuDeviceTotalMem
                    0.03%  98.818us         1  98.818us  98.818us  98.818us  cuDeviceGetName
                    0.02%  57.653us         1  57.653us  57.653us  57.653us  cudaLaunchKernel
                    0.00%  6.3920us         1  6.3920us  6.3920us  6.3920us  cuDeviceGetPCIBusId
                    0.00%  1.4290us         3     476ns     311ns     790ns  cuDeviceGetCount
                    0.00%  1.1830us         2     591ns     268ns     915ns  cuDeviceGet
                    0.00%     239ns         1     239ns     239ns     239ns  cuDeviceGetUuid

==13092== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.37965ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.12809ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==13156== NVPROF is profiling process 13156, command: ./sobel_gpu -N 32 -B 64
 GPU configuration: 64 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13156== Profiling application: ./sobel_gpu -N 32 -B 64
==13156== Profiling result:
==13156== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      79.90%      79.90%      79.90%


Started new run for 32 threads per block and 256 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 32 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==13218== NVPROF is profiling process 13218, command: ./sobel_gpu -N 32 -B 256
 GPU configuration: 256 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13218== Profiling application: ./sobel_gpu -N 32 -B 256
==13218== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  4.0412ms         1  4.0412ms  4.0412ms  4.0412ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   88.81%  285.92ms         4  71.480ms  6.8290us  285.76ms  cudaMallocManaged
                    5.94%  19.111ms         1  19.111ms  19.111ms  19.111ms  cudaDeviceSynchronize
                    4.87%  15.671ms         4  3.9178ms  4.2340us  15.430ms  cudaMemPrefetchAsync
                    0.23%  744.49us       101  7.3710us     115ns  331.90us  cuDeviceGetAttribute
                    0.11%  344.80us         1  344.80us  344.80us  344.80us  cuDeviceTotalMem
                    0.03%  89.029us         1  89.029us  89.029us  89.029us  cuDeviceGetName
                    0.02%  73.829us         1  73.829us  73.829us  73.829us  cudaLaunchKernel
                    0.00%  5.9160us         1  5.9160us  5.9160us  5.9160us  cuDeviceGetPCIBusId
                    0.00%  1.1310us         3     377ns     149ns     779ns  cuDeviceGetCount
                    0.00%     628ns         2     314ns     130ns     498ns  cuDeviceGet
                    0.00%     218ns         1     218ns     218ns     218ns  cuDeviceGetUuid

==13218== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.37421ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.25476ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==13282== NVPROF is profiling process 13282, command: ./sobel_gpu -N 32 -B 256
 GPU configuration: 256 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13282== Profiling application: ./sobel_gpu -N 32 -B 256
==13282== Profiling result:
==13282== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      99.85%      99.85%      99.85%


Started new run for 32 threads per block and 1024 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 32 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==13344== NVPROF is profiling process 13344, command: ./sobel_gpu -N 32 -B 1024
 GPU configuration: 1024 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13344== Profiling application: ./sobel_gpu -N 32 -B 1024
==13344== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  1.5457ms         1  1.5457ms  1.5457ms  1.5457ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   88.62%  286.03ms         4  71.508ms  6.0580us  285.87ms  cudaMallocManaged
                    6.14%  19.816ms         1  19.816ms  19.816ms  19.816ms  cudaDeviceSynchronize
                    4.85%  15.646ms         4  3.9116ms  4.4090us  15.496ms  cudaMemPrefetchAsync
                    0.23%  752.34us       101  7.4480us     277ns  330.27us  cuDeviceGetAttribute
                    0.11%  345.36us         1  345.36us  345.36us  345.36us  cuDeviceTotalMem
                    0.03%  101.96us         1  101.96us  101.96us  101.96us  cuDeviceGetName
                    0.02%  74.372us         1  74.372us  74.372us  74.372us  cudaLaunchKernel
                    0.00%  6.2290us         1  6.2290us  6.2290us  6.2290us  cuDeviceGetPCIBusId
                    0.00%  1.3450us         3     448ns     319ns     638ns  cuDeviceGetCount
                    0.00%     921ns         2     460ns     281ns     640ns  cuDeviceGet
                    0.00%     355ns         1     355ns     355ns     355ns  cuDeviceGetUuid

==13344== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.37933ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.22335ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==13410== NVPROF is profiling process 13410, command: ./sobel_gpu -N 32 -B 1024
 GPU configuration: 1024 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13410== Profiling application: ./sobel_gpu -N 32 -B 1024
==13410== Profiling result:
==13410== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      99.49%      99.49%      99.49%


Started new run for 32 threads per block and 4096 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 32 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==13472== NVPROF is profiling process 13472, command: ./sobel_gpu -N 32 -B 4096
 GPU configuration: 4096 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13472== Profiling application: ./sobel_gpu -N 32 -B 4096
==13472== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  989.08us         1  989.08us  989.08us  989.08us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.97%  286.07ms         4  71.518ms  6.9870us  285.92ms  cudaMallocManaged
                    4.90%  15.568ms         4  3.8921ms  4.3480us  15.419ms  cudaMemPrefetchAsync
                    4.74%  15.073ms         1  15.073ms  15.073ms  15.073ms  cudaDeviceSynchronize
                    0.24%  753.64us       101  7.4610us     113ns  334.48us  cuDeviceGetAttribute
                    0.11%  346.42us         1  346.42us  346.42us  346.42us  cuDeviceTotalMem
                    0.03%  92.391us         1  92.391us  92.391us  92.391us  cuDeviceGetName
                    0.02%  56.612us         1  56.612us  56.612us  56.612us  cudaLaunchKernel
                    0.00%  8.3680us         1  8.3680us  8.3680us  8.3680us  cuDeviceGetPCIBusId
                    0.00%  1.0840us         3     361ns     147ns     764ns  cuDeviceGetCount
                    0.00%     592ns         2     296ns     116ns     476ns  cuDeviceGet
                    0.00%     234ns         1     234ns     234ns     234ns  cuDeviceGetUuid

==13472== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.33962ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.21302ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 32 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==13536== NVPROF is profiling process 13536, command: ./sobel_gpu -N 32 -B 4096
 GPU configuration: 4096 blocks, 32 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13536== Profiling application: ./sobel_gpu -N 32 -B 4096
==13536== Profiling result:
==13536== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      99.09%      99.09%      99.09%


Started new run for 64 threads per block and 1 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 64 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==13598== NVPROF is profiling process 13598, command: ./sobel_gpu -N 64 -B 1
 GPU configuration: 1 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13598== Profiling application: ./sobel_gpu -N 64 -B 1
==13598== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  350.00ms         1  350.00ms  350.00ms  350.00ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   54.63%  365.49ms         1  365.49ms  365.49ms  365.49ms  cudaDeviceSynchronize
                   42.81%  286.43ms         4  71.606ms  6.1050us  286.27ms  cudaMallocManaged
                    2.36%  15.812ms         4  3.9530ms  4.6130us  15.633ms  cudaMemPrefetchAsync
                    0.11%  765.67us       101  7.5800us     278ns  334.00us  cuDeviceGetAttribute
                    0.05%  341.30us         1  341.30us  341.30us  341.30us  cuDeviceTotalMem
                    0.01%  92.262us         1  92.262us  92.262us  92.262us  cuDeviceGetName
                    0.01%  75.320us         1  75.320us  75.320us  75.320us  cudaLaunchKernel
                    0.00%  6.3780us         1  6.3780us  6.3780us  6.3780us  cuDeviceGetPCIBusId
                    0.00%  1.5520us         3     517ns     303ns     917ns  cuDeviceGetCount
                    0.00%     929ns         2     464ns     278ns     651ns  cuDeviceGet
                    0.00%     367ns         1     367ns     367ns     367ns  cuDeviceGetUuid

==13598== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.40674ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.11361ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==13662== NVPROF is profiling process 13662, command: ./sobel_gpu -N 64 -B 1
 GPU configuration: 1 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13662== Profiling application: ./sobel_gpu -N 64 -B 1
==13662== Profiling result:
==13662== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       1.25%       1.25%       1.25%


Started new run for 64 threads per block and 4 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 64 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==13724== NVPROF is profiling process 13724, command: ./sobel_gpu -N 64 -B 4
 GPU configuration: 4 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13724== Profiling application: ./sobel_gpu -N 64 -B 4
==13724== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  100.52ms         1  100.52ms  100.52ms  100.52ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   68.63%  287.52ms         4  71.881ms  6.5970us  287.37ms  cudaMallocManaged
                   27.33%  114.50ms         1  114.50ms  114.50ms  114.50ms  cudaDeviceSynchronize
                    3.74%  15.675ms         4  3.9186ms  4.3610us  15.479ms  cudaMemPrefetchAsync
                    0.18%  746.06us       101  7.3860us     113ns  329.90us  cuDeviceGetAttribute
                    0.08%  344.65us         1  344.65us  344.65us  344.65us  cuDeviceTotalMem
                    0.02%  91.440us         1  91.440us  91.440us  91.440us  cuDeviceGetName
                    0.02%  76.853us         1  76.853us  76.853us  76.853us  cudaLaunchKernel
                    0.00%  6.5360us         1  6.5360us  6.5360us  6.5360us  cuDeviceGetPCIBusId
                    0.00%  1.2140us         3     404ns     190ns     829ns  cuDeviceGetCount
                    0.00%     634ns         2     317ns     131ns     503ns  cuDeviceGet
                    0.00%     262ns         1     262ns     262ns     262ns  cuDeviceGetUuid

==13724== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.33506ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.10759ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==13789== NVPROF is profiling process 13789, command: ./sobel_gpu -N 64 -B 4
 GPU configuration: 4 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13789== Profiling application: ./sobel_gpu -N 64 -B 4
==13789== Profiling result:
==13789== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       5.00%       5.00%       5.00%


Started new run for 64 threads per block and 16 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 64 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==13851== NVPROF is profiling process 13851, command: ./sobel_gpu -N 64 -B 16
 GPU configuration: 16 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13851== Profiling application: ./sobel_gpu -N 64 -B 16
==13851== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  25.594ms         1  25.594ms  25.594ms  25.594ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   83.28%  285.90ms         4  71.475ms  6.3760us  285.74ms  cudaMallocManaged
                   11.73%  40.286ms         1  40.286ms  40.286ms  40.286ms  cudaDeviceSynchronize
                    4.61%  15.836ms         4  3.9589ms  4.4050us  15.640ms  cudaMemPrefetchAsync
                    0.22%  762.17us       101  7.5460us     272ns  331.49us  cuDeviceGetAttribute
                    0.10%  344.89us         1  344.89us  344.89us  344.89us  cuDeviceTotalMem
                    0.03%  89.156us         1  89.156us  89.156us  89.156us  cuDeviceGetName
                    0.02%  81.031us         1  81.031us  81.031us  81.031us  cudaLaunchKernel
                    0.00%  6.4450us         1  6.4450us  6.4450us  6.4450us  cuDeviceGetPCIBusId
                    0.00%  1.3490us         3     449ns     295ns     709ns  cuDeviceGetCount
                    0.00%     983ns         2     491ns     270ns     713ns  cuDeviceGet
                    0.00%     346ns         1     346ns     346ns     346ns  cuDeviceGetUuid

==13851== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.33897ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.11184ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==13915== NVPROF is profiling process 13915, command: ./sobel_gpu -N 64 -B 16
 GPU configuration: 16 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==13915== Profiling application: ./sobel_gpu -N 64 -B 16
==13915== Profiling result:
==13915== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      19.98%      19.98%      19.98%


Started new run for 64 threads per block and 64 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 64 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==14042== NVPROF is profiling process 14042, command: ./sobel_gpu -N 64 -B 64
 GPU configuration: 64 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14042== Profiling application: ./sobel_gpu -N 64 -B 64
==14042== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  6.7626ms         1  6.7626ms  6.7626ms  6.7626ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   88.36%  288.82ms         4  72.204ms  6.2580us  288.66ms  cudaMallocManaged
                    6.40%  20.927ms         1  20.927ms  20.927ms  20.927ms  cudaDeviceSynchronize
                    4.84%  15.817ms         4  3.9543ms  4.3770us  15.660ms  cudaMemPrefetchAsync
                    0.23%  763.32us       101  7.5570us     277ns  340.58us  cuDeviceGetAttribute
                    0.11%  344.97us         1  344.97us  344.97us  344.97us  cuDeviceTotalMem
                    0.03%  97.809us         1  97.809us  97.809us  97.809us  cuDeviceGetName
                    0.02%  71.648us         1  71.648us  71.648us  71.648us  cudaLaunchKernel
                    0.00%  6.5600us         1  6.5600us  6.5600us  6.5600us  cuDeviceGetPCIBusId
                    0.00%  1.4810us         3     493ns     321ns     825ns  cuDeviceGetCount
                    0.00%     774ns         2     387ns     278ns     496ns  cuDeviceGet
                    0.00%     356ns         1     356ns     356ns     356ns  cuDeviceGetUuid

==14042== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.42963ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.13372ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==14106== NVPROF is profiling process 14106, command: ./sobel_gpu -N 64 -B 64
 GPU configuration: 64 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14106== Profiling application: ./sobel_gpu -N 64 -B 64
==14106== Profiling result:
==14106== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      79.87%      79.87%      79.87%


Started new run for 64 threads per block and 256 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 64 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==14168== NVPROF is profiling process 14168, command: ./sobel_gpu -N 64 -B 256
 GPU configuration: 256 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14168== Profiling application: ./sobel_gpu -N 64 -B 256
==14168== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  2.2423ms         1  2.2423ms  2.2423ms  2.2423ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.71%  288.70ms         4  72.175ms  8.6030us  288.53ms  cudaMallocManaged
                    5.01%  16.135ms         1  16.135ms  16.135ms  16.135ms  cudaDeviceSynchronize
                    4.88%  15.696ms         4  3.9240ms  5.0280us  15.502ms  cudaMemPrefetchAsync
                    0.23%  748.69us       101  7.4120us     115ns  333.44us  cuDeviceGetAttribute
                    0.11%  344.10us         1  344.10us  344.10us  344.10us  cuDeviceTotalMem
                    0.03%  92.625us         1  92.625us  92.625us  92.625us  cuDeviceGetName
                    0.02%  75.496us         1  75.496us  75.496us  75.496us  cudaLaunchKernel
                    0.00%  6.6220us         1  6.6220us  6.6220us  6.6220us  cuDeviceGetPCIBusId
                    0.00%  1.0610us         3     353ns     146ns     736ns  cuDeviceGetCount
                    0.00%     672ns         2     336ns     144ns     528ns  cuDeviceGet
                    0.00%     257ns         1     257ns     257ns     257ns  cuDeviceGetUuid

==14168== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.35497ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.11537ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==14233== NVPROF is profiling process 14233, command: ./sobel_gpu -N 64 -B 256
 GPU configuration: 256 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14233== Profiling application: ./sobel_gpu -N 64 -B 256
==14233== Profiling result:
==14233== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      99.70%      99.70%      99.70%


Started new run for 64 threads per block and 1024 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 64 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==14298== NVPROF is profiling process 14298, command: ./sobel_gpu -N 64 -B 1024
 GPU configuration: 1024 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14298== Profiling application: ./sobel_gpu -N 64 -B 1024
==14298== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  854.75us         1  854.75us  854.75us  854.75us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.89%  289.23ms         4  72.308ms  6.6860us  289.07ms  cudaMallocManaged
                    4.86%  15.644ms         4  3.9110ms  4.8190us  15.450ms  cudaMemPrefetchAsync
                    4.85%  15.621ms         1  15.621ms  15.621ms  15.621ms  cudaDeviceSynchronize
                    0.23%  753.43us       101  7.4590us     114ns  337.20us  cuDeviceGetAttribute
                    0.11%  344.79us         1  344.79us  344.79us  344.79us  cuDeviceTotalMem
                    0.03%  92.151us         1  92.151us  92.151us  92.151us  cuDeviceGetName
                    0.02%  68.379us         1  68.379us  68.379us  68.379us  cudaLaunchKernel
                    0.00%  6.1750us         1  6.1750us  6.1750us  6.1750us  cuDeviceGetPCIBusId
                    0.00%     813ns         3     271ns     122ns     535ns  cuDeviceGetCount
                    0.00%     559ns         2     279ns     140ns     419ns  cuDeviceGet
                    0.00%     194ns         1     194ns     194ns     194ns  cuDeviceGetUuid

==14298== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.38867ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.12090ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==14362== NVPROF is profiling process 14362, command: ./sobel_gpu -N 64 -B 1024
 GPU configuration: 1024 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14362== Profiling application: ./sobel_gpu -N 64 -B 1024
==14362== Profiling result:
==14362== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      98.99%      98.99%      98.99%


Started new run for 64 threads per block and 4096 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 64 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==14424== NVPROF is profiling process 14424, command: ./sobel_gpu -N 64 -B 4096
 GPU configuration: 4096 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14424== Profiling application: ./sobel_gpu -N 64 -B 4096
==14424== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  651.90us         1  651.90us  651.90us  651.90us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.87%  286.68ms         4  71.670ms  9.6450us  286.50ms  cudaMallocManaged
                    4.98%  15.879ms         4  3.9699ms  4.9180us  15.724ms  cudaMemPrefetchAsync
                    4.74%  15.128ms         1  15.128ms  15.128ms  15.128ms  cudaDeviceSynchronize
                    0.23%  741.91us       101  7.3450us     116ns  332.45us  cuDeviceGetAttribute
                    0.11%  361.10us         1  361.10us  361.10us  361.10us  cuDeviceTotalMem
                    0.04%  121.97us         1  121.97us  121.97us  121.97us  cuDeviceGetName
                    0.02%  62.874us         1  62.874us  62.874us  62.874us  cudaLaunchKernel
                    0.00%  6.4110us         1  6.4110us  6.4110us  6.4110us  cuDeviceGetPCIBusId
                    0.00%  1.0710us         3     357ns     151ns     735ns  cuDeviceGetCount
                    0.00%     627ns         2     313ns     122ns     505ns  cuDeviceGet
                    0.00%     233ns         1     233ns     233ns     233ns  cuDeviceGetUuid

==14424== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.44265ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.12505ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 64 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==14488== NVPROF is profiling process 14488, command: ./sobel_gpu -N 64 -B 4096
 GPU configuration: 4096 blocks, 64 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14488== Profiling application: ./sobel_gpu -N 64 -B 4096
==14488== Profiling result:
==14488== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      97.36%      97.36%      97.36%


Started new run for 128 threads per block and 1 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 128 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==14559== NVPROF is profiling process 14559, command: ./sobel_gpu -N 128 -B 1
 GPU configuration: 1 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14559== Profiling application: ./sobel_gpu -N 128 -B 1
==14559== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  175.99ms         1  175.99ms  175.99ms  175.99ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   61.59%  332.37ms         4  83.094ms  7.7460us  332.22ms  cudaMallocManaged
                   35.28%  190.37ms         1  190.37ms  190.37ms  190.37ms  cudaDeviceSynchronize
                    2.89%  15.595ms         4  3.8988ms  5.0930us  15.394ms  cudaMemPrefetchAsync
                    0.14%  753.78us       101  7.4630us     116ns  345.59us  cuDeviceGetAttribute
                    0.07%  358.59us         1  358.59us  358.59us  358.59us  cuDeviceTotalMem
                    0.02%  116.85us         1  116.85us  116.85us  116.85us  cuDeviceGetName
                    0.01%  62.781us         1  62.781us  62.781us  62.781us  cudaLaunchKernel
                    0.00%  7.1500us         1  7.1500us  7.1500us  7.1500us  cuDeviceGetPCIBusId
                    0.00%  1.2690us         3     423ns     150ns     958ns  cuDeviceGetCount
                    0.00%     644ns         2     322ns     129ns     515ns  cuDeviceGet
                    0.00%     221ns         1     221ns     221ns     221ns  cuDeviceGetUuid

==14559== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.31020ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.11648ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==14695== NVPROF is profiling process 14695, command: ./sobel_gpu -N 128 -B 1
 GPU configuration: 1 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14695== Profiling application: ./sobel_gpu -N 128 -B 1
==14695== Profiling result:
==14695== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       1.25%       1.25%       1.25%


Started new run for 128 threads per block and 4 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 128 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==14761== NVPROF is profiling process 14761, command: ./sobel_gpu -N 128 -B 4
 GPU configuration: 4 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14761== Profiling application: ./sobel_gpu -N 128 -B 4
==14761== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  54.080ms         1  54.080ms  54.080ms  54.080ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   77.24%  292.95ms         4  73.237ms  6.0840us  292.79ms  cudaMallocManaged
                   18.16%  68.869ms         1  68.869ms  68.869ms  68.869ms  cudaDeviceSynchronize
                    4.26%  16.171ms         4  4.0427ms  4.1660us  15.961ms  cudaMemPrefetchAsync
                    0.20%  741.56us       101  7.3420us     115ns  331.70us  cuDeviceGetAttribute
                    0.09%  351.84us         1  351.84us  351.84us  351.84us  cuDeviceTotalMem
                    0.03%  103.38us         1  103.38us  103.38us  103.38us  cuDeviceGetName
                    0.02%  64.731us         1  64.731us  64.731us  64.731us  cudaLaunchKernel
                    0.00%  7.8920us         1  7.8920us  7.8920us  7.8920us  cuDeviceGetPCIBusId
                    0.00%  1.2670us         3     422ns     167ns     920ns  cuDeviceGetCount
                    0.00%     614ns         2     307ns     114ns     500ns  cuDeviceGet
                    0.00%     257ns         1     257ns     257ns     257ns  cuDeviceGetUuid

==14761== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.39069ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.12912ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==14826== NVPROF is profiling process 14826, command: ./sobel_gpu -N 128 -B 4
 GPU configuration: 4 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14826== Profiling application: ./sobel_gpu -N 128 -B 4
==14826== Profiling result:
==14826== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       5.00%       5.00%       5.00%


Started new run for 128 threads per block and 16 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 128 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==14888== NVPROF is profiling process 14888, command: ./sobel_gpu -N 128 -B 16
 GPU configuration: 16 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14888== Profiling application: ./sobel_gpu -N 128 -B 16
==14888== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  13.133ms         1  13.133ms  13.133ms  13.133ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   86.65%  291.60ms         4  72.901ms  6.8880us  291.44ms  cudaMallocManaged
                    8.18%  27.521ms         1  27.521ms  27.521ms  27.521ms  cudaDeviceSynchronize
                    4.79%  16.125ms         4  4.0314ms  13.157us  15.913ms  cudaMemPrefetchAsync
                    0.22%  740.29us       101  7.3290us     112ns  335.00us  cuDeviceGetAttribute
                    0.10%  343.21us         1  343.21us  343.21us  343.21us  cuDeviceTotalMem
                    0.04%  118.78us         1  118.78us  118.78us  118.78us  cuDeviceGetName
                    0.02%  66.790us         1  66.790us  66.790us  66.790us  cudaLaunchKernel
                    0.00%  6.7270us         1  6.7270us  6.7270us  6.7270us  cuDeviceGetPCIBusId
                    0.00%  1.3060us         3     435ns     126ns     995ns  cuDeviceGetCount
                    0.00%  1.1740us         2     587ns     111ns  1.0630us  cuDeviceGet
                    0.00%     231ns         1     231ns     231ns     231ns  cuDeviceGetUuid

==14888== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.43129ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.10657ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==14952== NVPROF is profiling process 14952, command: ./sobel_gpu -N 128 -B 16
 GPU configuration: 16 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==14952== Profiling application: ./sobel_gpu -N 128 -B 16
==14952== Profiling result:
==14952== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      19.98%      19.98%      19.98%


Started new run for 128 threads per block and 64 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 128 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==15015== NVPROF is profiling process 15015, command: ./sobel_gpu -N 128 -B 64
 GPU configuration: 64 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==15015== Profiling application: ./sobel_gpu -N 128 -B 64
==15015== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  3.5867ms         1  3.5867ms  3.5867ms  3.5867ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.17%  291.32ms         4  72.830ms  6.9460us  291.16ms  cudaMallocManaged
                    5.46%  17.839ms         1  17.839ms  17.839ms  17.839ms  cudaDeviceSynchronize
                    4.96%  16.220ms         4  4.0551ms  4.0410us  16.007ms  cudaMemPrefetchAsync
                    0.24%  770.33us       101  7.6270us     114ns  342.32us  cuDeviceGetAttribute
                    0.11%  354.25us         1  354.25us  354.25us  354.25us  cuDeviceTotalMem
                    0.04%  121.90us         1  121.90us  121.90us  121.90us  cuDeviceGetName
                    0.02%  67.438us         1  67.438us  67.438us  67.438us  cudaLaunchKernel
                    0.00%  6.2190us         1  6.2190us  6.2190us  6.2190us  cuDeviceGetPCIBusId
                    0.00%  1.3820us         3     460ns     134ns  1.0300us  cuDeviceGetCount
                    0.00%     759ns         2     379ns     114ns     645ns  cuDeviceGet
                    0.00%     567ns         1     567ns     567ns     567ns  cuDeviceGetUuid

==15015== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.40740ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.10833ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==15079== NVPROF is profiling process 15079, command: ./sobel_gpu -N 128 -B 64
 GPU configuration: 64 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==15079== Profiling application: ./sobel_gpu -N 128 -B 64
==15079== Profiling result:
==15079== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      79.86%      79.86%      79.86%


Started new run for 128 threads per block and 256 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 128 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==15141== NVPROF is profiling process 15141, command: ./sobel_gpu -N 128 -B 256
 GPU configuration: 256 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==15141== Profiling application: ./sobel_gpu -N 128 -B 256
==15141== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  1.3405ms         1  1.3405ms  1.3405ms  1.3405ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.78%  290.85ms         4  72.711ms  6.6740us  290.68ms  cudaMallocManaged
                    4.97%  16.107ms         1  16.107ms  16.107ms  16.107ms  cudaDeviceSynchronize
                    4.85%  15.699ms         4  3.9249ms  4.4920us  15.491ms  cudaMemPrefetchAsync
                    0.23%  749.10us       101  7.4160us     114ns  332.87us  cuDeviceGetAttribute
                    0.11%  352.68us         1  352.68us  352.68us  352.68us  cuDeviceTotalMem
                    0.04%  123.10us         1  123.10us  123.10us  123.10us  cuDeviceGetName
                    0.02%  62.693us         1  62.693us  62.693us  62.693us  cudaLaunchKernel
                    0.00%  7.3340us         1  7.3340us  7.3340us  7.3340us  cuDeviceGetPCIBusId
                    0.00%     954ns         3     318ns     147ns     644ns  cuDeviceGetCount
                    0.00%     521ns         2     260ns     112ns     409ns  cuDeviceGet
                    0.00%     276ns         1     276ns     276ns     276ns  cuDeviceGetUuid

==15141== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.38138ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.12672ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==15205== NVPROF is profiling process 15205, command: ./sobel_gpu -N 128 -B 256
 GPU configuration: 256 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==15205== Profiling application: ./sobel_gpu -N 128 -B 256
==15205== Profiling result:
==15205== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      99.45%      99.45%      99.45%


Started new run for 128 threads per block and 1024 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 128 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==15269== NVPROF is profiling process 15269, command: ./sobel_gpu -N 128 -B 1024
 GPU configuration: 1024 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==15269== Profiling application: ./sobel_gpu -N 128 -B 1024
==15269== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  655.80us         1  655.80us  655.80us  655.80us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.96%  290.02ms         4  72.505ms  6.1450us  289.85ms  cudaMallocManaged
                    4.94%  15.926ms         4  3.9815ms  4.4350us  15.735ms  cudaMemPrefetchAsync
                    4.70%  15.137ms         1  15.137ms  15.137ms  15.137ms  cudaDeviceSynchronize
                    0.24%  766.33us       101  7.5870us     271ns  332.76us  cuDeviceGetAttribute
                    0.11%  352.20us         1  352.20us  352.20us  352.20us  cuDeviceTotalMem
                    0.04%  113.52us         1  113.52us  113.52us  113.52us  cuDeviceGetName
                    0.02%  73.974us         1  73.974us  73.974us  73.974us  cudaLaunchKernel
                    0.00%  6.3740us         1  6.3740us  6.3740us  6.3740us  cuDeviceGetPCIBusId
                    0.00%  1.4630us         3     487ns     303ns     840ns  cuDeviceGetCount
                    0.00%  1.2270us         2     613ns     278ns     949ns  cuDeviceGet
                    0.00%     350ns         1     350ns     350ns     350ns  cuDeviceGetUuid

==15269== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.41110ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.12340ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==15502== NVPROF is profiling process 15502, command: ./sobel_gpu -N 128 -B 1024
 GPU configuration: 1024 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==15502== Profiling application: ./sobel_gpu -N 128 -B 1024
==15502== Profiling result:
==15502== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      97.48%      97.48%      97.48%


Started new run for 128 threads per block and 4096 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 128 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==15564== NVPROF is profiling process 15564, command: ./sobel_gpu -N 128 -B 4096
 GPU configuration: 4096 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==15564== Profiling application: ./sobel_gpu -N 128 -B 4096
==15564== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  615.68us         1  615.68us  615.68us  615.68us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   90.10%  291.93ms         4  72.982ms  8.8490us  291.76ms  cudaMallocManaged
                    4.80%  15.538ms         4  3.8845ms  4.1810us  15.399ms  cudaMemPrefetchAsync
                    4.70%  15.233ms         1  15.233ms  15.233ms  15.233ms  cudaDeviceSynchronize
                    0.23%  751.74us       101  7.4420us     114ns  340.11us  cuDeviceGetAttribute
                    0.11%  367.65us         1  367.65us  367.65us  367.65us  cuDeviceTotalMem
                    0.04%  119.18us         1  119.18us  119.18us  119.18us  cuDeviceGetName
                    0.02%  58.064us         1  58.064us  58.064us  58.064us  cudaLaunchKernel
                    0.00%  6.6190us         1  6.6190us  6.6190us  6.6190us  cuDeviceGetPCIBusId
                    0.00%  1.5040us         3     501ns     132ns  1.2020us  cuDeviceGetCount
                    0.00%     604ns         2     302ns     123ns     481ns  cuDeviceGet
                    0.00%     246ns         1     246ns     246ns     246ns  cuDeviceGetUuid

==15564== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.40710ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.11508ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 128 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==15628== NVPROF is profiling process 15628, command: ./sobel_gpu -N 128 -B 4096
 GPU configuration: 4096 blocks, 128 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==15628== Profiling application: ./sobel_gpu -N 128 -B 4096
==15628== Profiling result:
==15628== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      97.84%      97.84%      97.84%


Started new run for 256 threads per block and 1 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 256 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==15690== NVPROF is profiling process 15690, command: ./sobel_gpu -N 256 -B 1
 GPU configuration: 1 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==15690== Profiling application: ./sobel_gpu -N 256 -B 1
==15690== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  113.39ms         1  113.39ms  113.39ms  113.39ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   66.51%  288.79ms         4  72.198ms  6.2760us  288.63ms  cudaMallocManaged
                   29.61%  128.58ms         1  128.58ms  128.58ms  128.58ms  cudaDeviceSynchronize
                    3.58%  15.562ms         4  3.8905ms  4.4510us  15.360ms  cudaMemPrefetchAsync
                    0.17%  745.25us       101  7.3780us     112ns  330.60us  cuDeviceGetAttribute
                    0.08%  345.49us         1  345.49us  345.49us  345.49us  cuDeviceTotalMem
                    0.02%  107.21us         1  107.21us  107.21us  107.21us  cuDeviceGetName
                    0.02%  74.117us         1  74.117us  74.117us  74.117us  cudaLaunchKernel
                    0.00%  6.4520us         1  6.4520us  6.4520us  6.4520us  cuDeviceGetPCIBusId
                    0.00%     974ns         3     324ns     129ns     680ns  cuDeviceGetCount
                    0.00%     592ns         2     296ns     121ns     471ns  cuDeviceGet
                    0.00%     297ns         1     297ns     297ns     297ns  cuDeviceGetUuid

==15690== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.35650ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.14137ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==15756== NVPROF is profiling process 15756, command: ./sobel_gpu -N 256 -B 1
 GPU configuration: 1 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==15756== Profiling application: ./sobel_gpu -N 256 -B 1
==15756== Profiling result:
==15756== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       1.25%       1.25%       1.25%


Started new run for 256 threads per block and 4 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 256 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==15818== NVPROF is profiling process 15818, command: ./sobel_gpu -N 256 -B 4
 GPU configuration: 4 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==15818== Profiling application: ./sobel_gpu -N 256 -B 4
==15818== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  28.195ms         1  28.195ms  28.195ms  28.195ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   83.00%  287.28ms         4  71.819ms  6.4070us  287.12ms  cudaMallocManaged
                   12.14%  42.022ms         1  42.022ms  42.022ms  42.022ms  cudaDeviceSynchronize
                    4.47%  15.481ms         4  3.8702ms  4.2670us  15.293ms  cudaMemPrefetchAsync
                    0.22%  768.97us       101  7.6130us     272ns  333.89us  cuDeviceGetAttribute
                    0.10%  352.79us         1  352.79us  352.79us  352.79us  cuDeviceTotalMem
                    0.03%  119.78us         1  119.78us  119.78us  119.78us  cuDeviceGetName
                    0.02%  75.791us         1  75.791us  75.791us  75.791us  cudaLaunchKernel
                    0.00%  6.6330us         1  6.6330us  6.6330us  6.6330us  cuDeviceGetPCIBusId
                    0.00%  1.6240us         3     541ns     300ns  1.0040us  cuDeviceGetCount
                    0.00%     929ns         2     464ns     297ns     632ns  cuDeviceGet
                    0.00%     371ns         1     371ns     371ns     371ns  cuDeviceGetUuid

==15818== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.39181ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.11012ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==15882== NVPROF is profiling process 15882, command: ./sobel_gpu -N 256 -B 4
 GPU configuration: 4 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==15882== Profiling application: ./sobel_gpu -N 256 -B 4
==15882== Profiling result:
==15882== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       4.99%       4.99%       4.99%


Started new run for 256 threads per block and 16 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 256 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==15944== NVPROF is profiling process 15944, command: ./sobel_gpu -N 256 -B 16
 GPU configuration: 16 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==15944== Profiling application: ./sobel_gpu -N 256 -B 16
==15944== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  7.6868ms         1  7.6868ms  7.6868ms  7.6868ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   88.08%  284.78ms         4  71.195ms  6.0590us  284.63ms  cudaMallocManaged
                    6.74%  21.779ms         1  21.779ms  21.779ms  21.779ms  cudaDeviceSynchronize
                    4.78%  15.465ms         4  3.8663ms  4.3330us  15.319ms  cudaMemPrefetchAsync
                    0.23%  751.34us       101  7.4390us     115ns  333.68us  cuDeviceGetAttribute
                    0.11%  351.78us         1  351.78us  351.78us  351.78us  cuDeviceTotalMem
                    0.03%  108.07us         1  108.07us  108.07us  108.07us  cuDeviceGetName
                    0.02%  63.843us         1  63.843us  63.843us  63.843us  cudaLaunchKernel
                    0.00%  6.2830us         1  6.2830us  6.2830us  6.2830us  cuDeviceGetPCIBusId
                    0.00%  1.0980us         3     366ns     121ns     811ns  cuDeviceGetCount
                    0.00%     894ns         2     447ns     114ns     780ns  cuDeviceGet
                    0.00%     279ns         1     279ns     279ns     279ns  cuDeviceGetUuid

==15944== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.43568ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.13166ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==16065== NVPROF is profiling process 16065, command: ./sobel_gpu -N 256 -B 16
 GPU configuration: 16 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16065== Profiling application: ./sobel_gpu -N 256 -B 16
==16065== Profiling result:
==16065== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      19.97%      19.97%      19.97%


Started new run for 256 threads per block and 64 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 256 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==16127== NVPROF is profiling process 16127, command: ./sobel_gpu -N 256 -B 64
 GPU configuration: 64 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16127== Profiling application: ./sobel_gpu -N 256 -B 64
==16127== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  2.1435ms         1  2.1435ms  2.1435ms  2.1435ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.62%  292.31ms         4  73.077ms  6.3100us  292.15ms  cudaMallocManaged
                    5.21%  16.982ms         1  16.982ms  16.982ms  16.982ms  cudaDeviceSynchronize
                    4.78%  15.586ms         4  3.8965ms  4.9830us  15.371ms  cudaMemPrefetchAsync
                    0.23%  752.09us       101  7.4460us     113ns  332.82us  cuDeviceGetAttribute
                    0.11%  351.74us         1  351.74us  351.74us  351.74us  cuDeviceTotalMem
                    0.04%  121.54us         1  121.54us  121.54us  121.54us  cuDeviceGetName
                    0.02%  60.244us         1  60.244us  60.244us  60.244us  cudaLaunchKernel
                    0.00%  6.2870us         1  6.2870us  6.2870us  6.2870us  cuDeviceGetPCIBusId
                    0.00%  1.5090us         3     503ns     138ns  1.1870us  cuDeviceGetCount
                    0.00%     669ns         2     334ns     125ns     544ns  cuDeviceGet
                    0.00%     225ns         1     225ns     225ns     225ns  cuDeviceGetUuid

==16127== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.39152ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.10399ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==16191== NVPROF is profiling process 16191, command: ./sobel_gpu -N 256 -B 64
 GPU configuration: 64 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16191== Profiling application: ./sobel_gpu -N 256 -B 64
==16191== Profiling result:
==16191== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      79.76%      79.76%      79.76%


Started new run for 256 threads per block and 256 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 256 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==16253== NVPROF is profiling process 16253, command: ./sobel_gpu -N 256 -B 256
 GPU configuration: 256 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16253== Profiling application: ./sobel_gpu -N 256 -B 256
==16253== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  888.99us         1  888.99us  888.99us  888.99us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.89%  287.51ms         4  71.877ms  6.5890us  287.36ms  cudaMallocManaged
                    4.88%  15.614ms         1  15.614ms  15.614ms  15.614ms  cudaDeviceSynchronize
                    4.82%  15.415ms         4  3.8536ms  4.6150us  15.216ms  cudaMemPrefetchAsync
                    0.24%  768.27us       101  7.6060us     111ns  346.79us  cuDeviceGetAttribute
                    0.11%  351.20us         1  351.20us  351.20us  351.20us  cuDeviceTotalMem
                    0.04%  117.35us         1  117.35us  117.35us  117.35us  cuDeviceGetName
                    0.02%  77.931us         1  77.931us  77.931us  77.931us  cudaLaunchKernel
                    0.00%  6.6830us         1  6.6830us  6.6830us  6.6830us  cuDeviceGetPCIBusId
                    0.00%  1.2290us         3     409ns     175ns     838ns  cuDeviceGetCount
                    0.00%     662ns         2     331ns     133ns     529ns  cuDeviceGet
                    0.00%     270ns         1     270ns     270ns     270ns  cuDeviceGetUuid

==16253== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.39843ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.12733ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==16319== NVPROF is profiling process 16319, command: ./sobel_gpu -N 256 -B 256
 GPU configuration: 256 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16319== Profiling application: ./sobel_gpu -N 256 -B 256
==16319== Profiling result:
==16319== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      95.49%      95.49%      95.49%


Started new run for 256 threads per block and 1024 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 256 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==16381== NVPROF is profiling process 16381, command: ./sobel_gpu -N 256 -B 1024
 GPU configuration: 1024 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16381== Profiling application: ./sobel_gpu -N 256 -B 1024
==16381== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  720.06us         1  720.06us  720.06us  720.06us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   90.20%  288.35ms         4  72.087ms  6.0990us  288.19ms  cudaMallocManaged
                    4.83%  15.425ms         4  3.8564ms  4.3350us  15.284ms  cudaMemPrefetchAsync
                    4.57%  14.621ms         1  14.621ms  14.621ms  14.621ms  cudaDeviceSynchronize
                    0.24%  752.04us       101  7.4450us     113ns  333.42us  cuDeviceGetAttribute
                    0.11%  342.01us         1  342.01us  342.01us  342.01us  cuDeviceTotalMem
                    0.04%  112.70us         1  112.70us  112.70us  112.70us  cuDeviceGetName
                    0.02%  73.862us         1  73.862us  73.862us  73.862us  cudaLaunchKernel
                    0.00%  6.8220us         1  6.8220us  6.8220us  6.8220us  cuDeviceGetPCIBusId
                    0.00%  1.3740us         3     458ns     168ns  1.0010us  cuDeviceGetCount
                    0.00%     692ns         2     346ns     137ns     555ns  cuDeviceGet
                    0.00%     292ns         1     292ns     292ns     292ns  cuDeviceGetUuid

==16381== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.40890ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.22845ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==16446== NVPROF is profiling process 16446, command: ./sobel_gpu -N 256 -B 1024
 GPU configuration: 1024 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16446== Profiling application: ./sobel_gpu -N 256 -B 1024
==16446== Profiling result:
==16446== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      94.63%      94.63%      94.63%


Started new run for 256 threads per block and 4096 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 256 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==16508== NVPROF is profiling process 16508, command: ./sobel_gpu -N 256 -B 4096
 GPU configuration: 4096 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16508== Profiling application: ./sobel_gpu -N 256 -B 4096
==16508== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  601.79us         1  601.79us  601.79us  601.79us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   90.17%  287.12ms         4  71.779ms  6.1720us  286.96ms  cudaMallocManaged
                    4.78%  15.217ms         4  3.8043ms  4.4090us  15.018ms  cudaMemPrefetchAsync
                    4.65%  14.801ms         1  14.801ms  14.801ms  14.801ms  cudaDeviceSynchronize
                    0.24%  772.11us       101  7.6440us     111ns  354.55us  cuDeviceGetAttribute
                    0.11%  338.18us         1  338.18us  338.18us  338.18us  cuDeviceTotalMem
                    0.03%  100.62us         1  100.62us  100.62us  100.62us  cuDeviceGetName
                    0.02%  59.119us         1  59.119us  59.119us  59.119us  cudaLaunchKernel
                    0.00%  6.6080us         1  6.6080us  6.6080us  6.6080us  cuDeviceGetPCIBusId
                    0.00%  1.0130us         3     337ns     167ns     654ns  cuDeviceGetCount
                    0.00%     565ns         2     282ns     135ns     430ns  cuDeviceGet
                    0.00%     194ns         1     194ns     194ns     194ns  cuDeviceGetUuid

==16508== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.45437ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.22576ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 256 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==16572== NVPROF is profiling process 16572, command: ./sobel_gpu -N 256 -B 4096
 GPU configuration: 4096 blocks, 256 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16572== Profiling application: ./sobel_gpu -N 256 -B 4096
==16572== Profiling result:
==16572== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      97.51%      97.51%      97.51%


Started new run for 512 threads per block and 1 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 512 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==16634== NVPROF is profiling process 16634, command: ./sobel_gpu -N 512 -B 1
 GPU configuration: 1 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16634== Profiling application: ./sobel_gpu -N 512 -B 1
==16634== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  75.387ms         1  75.387ms  75.387ms  75.387ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   72.92%  286.14ms         4  71.535ms  6.2980us  285.99ms  cudaMallocManaged
                   22.82%  89.566ms         1  89.566ms  89.566ms  89.566ms  cudaDeviceSynchronize
                    3.94%  15.469ms         4  3.8672ms  4.4540us  15.234ms  cudaMemPrefetchAsync
                    0.19%  729.11us       101  7.2180us     111ns  327.21us  cuDeviceGetAttribute
                    0.09%  339.25us         1  339.25us  339.25us  339.25us  cuDeviceTotalMem
                    0.02%  91.904us         1  91.904us  91.904us  91.904us  cuDeviceGetName
                    0.02%  61.735us         1  61.735us  61.735us  61.735us  cudaLaunchKernel
                    0.00%  6.6660us         1  6.6660us  6.6660us  6.6660us  cuDeviceGetPCIBusId
                    0.00%     925ns         3     308ns     172ns     561ns  cuDeviceGetCount
                    0.00%     558ns         2     279ns     111ns     447ns  cuDeviceGet
                    0.00%     243ns         1     243ns     243ns     243ns  cuDeviceGetUuid

==16634== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.40961ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.16391ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==16698== NVPROF is profiling process 16698, command: ./sobel_gpu -N 512 -B 1
 GPU configuration: 1 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16698== Profiling application: ./sobel_gpu -N 512 -B 1
==16698== Profiling result:
==16698== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       1.25%       1.25%       1.25%


Started new run for 512 threads per block and 4 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 512 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==16760== NVPROF is profiling process 16760, command: ./sobel_gpu -N 512 -B 4
 GPU configuration: 4 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16760== Profiling application: ./sobel_gpu -N 512 -B 4
==16760== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  17.853ms         1  17.853ms  17.853ms  17.853ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   85.52%  289.13ms         4  72.282ms  6.5140us  288.97ms  cudaMallocManaged
                    9.55%  32.286ms         1  32.286ms  32.286ms  32.286ms  cudaDeviceSynchronize
                    4.55%  15.393ms         4  3.8484ms  4.1380us  15.209ms  cudaMemPrefetchAsync
                    0.22%  750.03us       101  7.4260us     112ns  332.49us  cuDeviceGetAttribute
                    0.10%  348.82us         1  348.82us  348.82us  348.82us  cuDeviceTotalMem
                    0.03%  109.75us         1  109.75us  109.75us  109.75us  cuDeviceGetName
                    0.02%  59.565us         1  59.565us  59.565us  59.565us  cudaLaunchKernel
                    0.00%  6.3460us         1  6.3460us  6.3460us  6.3460us  cuDeviceGetPCIBusId
                    0.00%  1.0100us         3     336ns     121ns     714ns  cuDeviceGetCount
                    0.00%     771ns         2     385ns     123ns     648ns  cuDeviceGet
                    0.00%     220ns         1     220ns     220ns     220ns  cuDeviceGetUuid

==16760== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.34282ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.11046ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==16824== NVPROF is profiling process 16824, command: ./sobel_gpu -N 512 -B 4
 GPU configuration: 4 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16824== Profiling application: ./sobel_gpu -N 512 -B 4
==16824== Profiling result:
==16824== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       4.99%       4.99%       4.99%


Started new run for 512 threads per block and 16 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 512 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==16966== NVPROF is profiling process 16966, command: ./sobel_gpu -N 512 -B 16
 GPU configuration: 16 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==16966== Profiling application: ./sobel_gpu -N 512 -B 16
==16966== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  4.9741ms         1  4.9741ms  4.9741ms  4.9741ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   88.78%  287.19ms         4  71.799ms  6.0070us  287.04ms  cudaMallocManaged
                    6.06%  19.595ms         1  19.595ms  19.595ms  19.595ms  cudaDeviceSynchronize
                    4.76%  15.384ms         4  3.8460ms  4.3610us  15.181ms  cudaMemPrefetchAsync
                    0.24%  769.56us       101  7.6190us     113ns  353.96us  cuDeviceGetAttribute
                    0.11%  343.35us         1  343.35us  343.35us  343.35us  cuDeviceTotalMem
                    0.04%  113.29us         1  113.29us  113.29us  113.29us  cuDeviceGetName
                    0.02%  68.480us         1  68.480us  68.480us  68.480us  cudaLaunchKernel
                    0.00%  6.9530us         1  6.9530us  6.9530us  6.9530us  cuDeviceGetPCIBusId
                    0.00%  1.0930us         3     364ns     158ns     733ns  cuDeviceGetCount
                    0.00%     580ns         2     290ns     115ns     465ns  cuDeviceGet
                    0.00%     291ns         1     291ns     291ns     291ns  cuDeviceGetUuid

==16966== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.39056ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.12474ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==17040== NVPROF is profiling process 17040, command: ./sobel_gpu -N 512 -B 16
 GPU configuration: 16 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==17040== Profiling application: ./sobel_gpu -N 512 -B 16
==17040== Profiling result:
==17040== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      19.91%      19.91%      19.91%


Started new run for 512 threads per block and 64 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 512 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==17110== NVPROF is profiling process 17110, command: ./sobel_gpu -N 512 -B 64
 GPU configuration: 64 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==17110== Profiling application: ./sobel_gpu -N 512 -B 64
==17110== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  1.4020ms         1  1.4020ms  1.4020ms  1.4020ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.91%  290.17ms         4  72.544ms  6.5200us  290.01ms  cudaMallocManaged
                    4.85%  15.639ms         1  15.639ms  15.639ms  15.639ms  cudaDeviceSynchronize
                    4.83%  15.600ms         4  3.9001ms  4.2730us  15.453ms  cudaMemPrefetchAsync
                    0.23%  749.57us       101  7.4210us     269ns  329.78us  cuDeviceGetAttribute
                    0.11%  345.12us         1  345.12us  345.12us  345.12us  cuDeviceTotalMem
                    0.04%  117.89us         1  117.89us  117.89us  117.89us  cuDeviceGetName
                    0.03%  84.571us         1  84.571us  84.571us  84.571us  cudaLaunchKernel
                    0.00%  6.9010us         1  6.9010us  6.9010us  6.9010us  cuDeviceGetPCIBusId
                    0.00%  1.8490us         3     616ns     332ns  1.1590us  cuDeviceGetCount
                    0.00%  1.0450us         2     522ns     265ns     780ns  cuDeviceGet
                    0.00%     357ns         1     357ns     357ns     357ns  cuDeviceGetUuid

==17110== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.34499ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.13539ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==17182== NVPROF is profiling process 17182, command: ./sobel_gpu -N 512 -B 64
 GPU configuration: 64 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==17182== Profiling application: ./sobel_gpu -N 512 -B 64
==17182== Profiling result:
==17182== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      79.37%      79.37%      79.37%


Started new run for 512 threads per block and 256 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 512 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==17252== NVPROF is profiling process 17252, command: ./sobel_gpu -N 512 -B 256
 GPU configuration: 256 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==17252== Profiling application: ./sobel_gpu -N 512 -B 256
==17252== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  726.94us         1  726.94us  726.94us  726.94us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   90.11%  285.88ms         4  71.470ms  6.2260us  285.72ms  cudaMallocManaged
                    4.89%  15.515ms         4  3.8789ms  4.1000us  15.318ms  cudaMemPrefetchAsync
                    4.60%  14.598ms         1  14.598ms  14.598ms  14.598ms  cudaDeviceSynchronize
                    0.24%  759.99us       101  7.5240us     270ns  330.79us  cuDeviceGetAttribute
                    0.11%  344.61us         1  344.61us  344.61us  344.61us  cuDeviceTotalMem
                    0.03%  87.862us         1  87.862us  87.862us  87.862us  cuDeviceGetName
                    0.02%  74.593us         1  74.593us  74.593us  74.593us  cudaLaunchKernel
                    0.00%  6.2470us         1  6.2470us  6.2470us  6.2470us  cuDeviceGetPCIBusId
                    0.00%  1.3470us         3     449ns     317ns     698ns  cuDeviceGetCount
                    0.00%     884ns         2     442ns     279ns     605ns  cuDeviceGet
                    0.00%     344ns         1     344ns     344ns     344ns  cuDeviceGetUuid

==17252== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.43913ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.11808ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==17326== NVPROF is profiling process 17326, command: ./sobel_gpu -N 512 -B 256
 GPU configuration: 256 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==17326== Profiling application: ./sobel_gpu -N 512 -B 256
==17326== Profiling result:
==17326== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      90.95%      90.95%      90.95%


Started new run for 512 threads per block and 1024 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 512 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==17396== NVPROF is profiling process 17396, command: ./sobel_gpu -N 512 -B 1024
 GPU configuration: 1024 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==17396== Profiling application: ./sobel_gpu -N 512 -B 1024
==17396== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  649.56us         1  649.56us  649.56us  649.56us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   90.10%  286.59ms         4  71.647ms  7.0170us  286.43ms  cudaMallocManaged
                    4.87%  15.479ms         4  3.8697ms  4.8600us  15.312ms  cudaMemPrefetchAsync
                    4.59%  14.595ms         1  14.595ms  14.595ms  14.595ms  cudaDeviceSynchronize
                    0.24%  749.24us       101  7.4180us     113ns  331.68us  cuDeviceGetAttribute
                    0.11%  359.16us         1  359.16us  359.16us  359.16us  cuDeviceTotalMem
                    0.08%  248.78us         1  248.78us  248.78us  248.78us  cuDeviceGetName
                    0.02%  57.603us         1  57.603us  57.603us  57.603us  cudaLaunchKernel
                    0.00%  6.0920us         1  6.0920us  6.0920us  6.0920us  cuDeviceGetPCIBusId
                    0.00%  1.1910us         3     397ns     171ns     796ns  cuDeviceGetCount
                    0.00%     634ns         2     317ns     117ns     517ns  cuDeviceGet
                    0.00%     249ns         1     249ns     249ns     249ns  cuDeviceGetUuid

==17396== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.40249ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.11602ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==17470== NVPROF is profiling process 17470, command: ./sobel_gpu -N 512 -B 1024
 GPU configuration: 1024 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==17470== Profiling application: ./sobel_gpu -N 512 -B 1024
==17470== Profiling result:
==17470== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      89.53%      89.53%      89.53%


Started new run for 512 threads per block and 4096 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 512 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==17540== NVPROF is profiling process 17540, command: ./sobel_gpu -N 512 -B 4096
 GPU configuration: 4096 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==17540== Profiling application: ./sobel_gpu -N 512 -B 4096
==17540== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  532.16us         1  532.16us  532.16us  532.16us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   90.11%  286.79ms         4  71.697ms  6.2500us  286.62ms  cudaMallocManaged
                    4.90%  15.600ms         4  3.9001ms  4.1050us  15.398ms  cudaMemPrefetchAsync
                    4.58%  14.570ms         1  14.570ms  14.570ms  14.570ms  cudaDeviceSynchronize
                    0.25%  789.82us       101  7.8200us     114ns  361.45us  cuDeviceGetAttribute
                    0.11%  344.84us         1  344.84us  344.84us  344.84us  cuDeviceTotalMem
                    0.03%  90.799us         1  90.799us  90.799us  90.799us  cuDeviceGetName
                    0.02%  58.885us         1  58.885us  58.885us  58.885us  cudaLaunchKernel
                    0.00%  6.5700us         1  6.5700us  6.5700us  6.5700us  cuDeviceGetPCIBusId
                    0.00%     940ns         3     313ns     140ns     620ns  cuDeviceGetCount
                    0.00%     500ns         2     250ns     117ns     383ns  cuDeviceGet
                    0.00%     293ns         1     293ns     293ns     293ns  cuDeviceGetUuid

==17540== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.40323ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.10781ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 512 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==17612== NVPROF is profiling process 17612, command: ./sobel_gpu -N 512 -B 4096
 GPU configuration: 4096 blocks, 512 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==17612== Profiling application: ./sobel_gpu -N 512 -B 4096
==17612== Profiling result:
==17612== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      98.00%      98.00%      98.00%


Started new run for 1024 threads per block and 1 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 1024 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==17814== NVPROF is profiling process 17814, command: ./sobel_gpu -N 1024 -B 1
 GPU configuration: 1 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==17814== Profiling application: ./sobel_gpu -N 1024 -B 1
==17814== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  42.186ms         1  42.186ms  42.186ms  42.186ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   79.73%  288.14ms         4  72.036ms  6.0840us  287.99ms  cudaMallocManaged
                   15.52%  56.079ms         1  56.079ms  56.079ms  56.079ms  cudaDeviceSynchronize
                    4.31%  15.574ms         4  3.8934ms  4.1180us  15.379ms  cudaMemPrefetchAsync
                    0.28%  1.0046ms       101  9.9460us     276ns  444.55us  cuDeviceGetAttribute
                    0.10%  366.61us         1  366.61us  366.61us  366.61us  cuDeviceTotalMem
                    0.04%  141.60us         1  141.60us  141.60us  141.60us  cuDeviceGetName
                    0.02%  58.729us         1  58.729us  58.729us  58.729us  cudaLaunchKernel
                    0.00%  6.6870us         1  6.6870us  6.6870us  6.6870us  cuDeviceGetPCIBusId
                    0.00%  1.6630us         3     554ns     319ns     959ns  cuDeviceGetCount
                    0.00%     960ns         2     480ns     295ns     665ns  cuDeviceGet
                    0.00%     383ns         1     383ns     383ns     383ns  cuDeviceGetUuid

==17814== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.33958ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.11338ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 1
 Read data from the file ../data/zebra-gray-int8-4x 
==18043== NVPROF is profiling process 18043, command: ./sobel_gpu -N 1024 -B 1
 GPU configuration: 1 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==18043== Profiling application: ./sobel_gpu -N 1024 -B 1
==18043== Profiling result:
==18043== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       1.25%       1.25%       1.25%


Started new run for 1024 threads per block and 4 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 1024 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==18117== NVPROF is profiling process 18117, command: ./sobel_gpu -N 1024 -B 4
 GPU configuration: 4 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==18117== Profiling application: ./sobel_gpu -N 1024 -B 4
==18117== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  11.619ms         1  11.619ms  11.619ms  11.619ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   87.19%  287.33ms         4  71.833ms  6.4590us  287.17ms  cudaMallocManaged
                    7.74%  25.513ms         1  25.513ms  25.513ms  25.513ms  cudaDeviceSynchronize
                    4.68%  15.411ms         4  3.8529ms  4.3870us  15.268ms  cudaMemPrefetchAsync
                    0.23%  759.48us       101  7.5190us     272ns  330.99us  cuDeviceGetAttribute
                    0.10%  344.71us         1  344.71us  344.71us  344.71us  cuDeviceTotalMem
                    0.03%  88.939us         1  88.939us  88.939us  88.939us  cuDeviceGetName
                    0.02%  74.428us         1  74.428us  74.428us  74.428us  cudaLaunchKernel
                    0.00%  5.7440us         1  5.7440us  5.7440us  5.7440us  cuDeviceGetPCIBusId
                    0.00%  1.3670us         3     455ns     319ns     726ns  cuDeviceGetCount
                    0.00%     843ns         2     421ns     280ns     563ns  cuDeviceGet
                    0.00%     362ns         1     362ns     362ns     362ns  cuDeviceGetUuid

==18117== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.38256ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.10527ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 4
 Read data from the file ../data/zebra-gray-int8-4x 
==18194== NVPROF is profiling process 18194, command: ./sobel_gpu -N 1024 -B 4
 GPU configuration: 4 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==18194== Profiling application: ./sobel_gpu -N 1024 -B 4
==18194== Profiling result:
==18194== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity       4.99%       4.99%       4.99%


Started new run for 1024 threads per block and 16 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 1024 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==18267== NVPROF is profiling process 18267, command: ./sobel_gpu -N 1024 -B 16
 GPU configuration: 16 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==18267== Profiling application: ./sobel_gpu -N 1024 -B 16
==18267== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  3.1286ms         1  3.1286ms  3.1286ms  3.1286ms  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.32%  287.26ms         4  71.816ms  6.8340us  287.11ms  cudaMallocManaged
                    5.37%  17.263ms         1  17.263ms  17.263ms  17.263ms  cudaDeviceSynchronize
                    4.83%  15.525ms         4  3.8813ms  4.4000us  15.341ms  cudaMemPrefetchAsync
                    0.31%  992.59us       101  9.8270us     115ns  449.68us  cuDeviceGetAttribute
                    0.11%  356.23us         1  356.23us  356.23us  356.23us  cuDeviceTotalMem
                    0.04%  115.70us         1  115.70us  115.70us  115.70us  cuDeviceGetName
                    0.02%  74.941us         1  74.941us  74.941us  74.941us  cudaLaunchKernel
                    0.00%  6.7530us         1  6.7530us  6.7530us  6.7530us  cuDeviceGetPCIBusId
                    0.00%  1.1380us         3     379ns     196ns     719ns  cuDeviceGetCount
                    0.00%     637ns         2     318ns     137ns     500ns  cuDeviceGet
                    0.00%     242ns         1     242ns     242ns     242ns  cuDeviceGetUuid

==18267== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.34493ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.12892ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 16
 Read data from the file ../data/zebra-gray-int8-4x 
==18345== NVPROF is profiling process 18345, command: ./sobel_gpu -N 1024 -B 16
 GPU configuration: 16 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==18345== Profiling application: ./sobel_gpu -N 1024 -B 16
==18345== Profiling result:
==18345== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      19.89%      19.89%      19.89%


Started new run for 1024 threads per block and 64 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 1024 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==18419== NVPROF is profiling process 18419, command: ./sobel_gpu -N 1024 -B 64
 GPU configuration: 64 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==18419== Profiling application: ./sobel_gpu -N 1024 -B 64
==18419== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  935.90us         1  935.90us  935.90us  935.90us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.93%  286.61ms         4  71.653ms  6.5500us  286.46ms  cudaMallocManaged
                    4.87%  15.523ms         4  3.8807ms  4.0530us  15.326ms  cudaMemPrefetchAsync
                    4.81%  15.331ms         1  15.331ms  15.331ms  15.331ms  cudaDeviceSynchronize
                    0.24%  749.80us       101  7.4230us     269ns  332.60us  cuDeviceGetAttribute
                    0.11%  336.59us         1  336.59us  336.59us  336.59us  cuDeviceTotalMem
                    0.03%  89.580us         1  89.580us  89.580us  89.580us  cuDeviceGetName
                    0.02%  59.138us         1  59.138us  59.138us  59.138us  cudaLaunchKernel
                    0.00%  6.4250us         1  6.4250us  6.4250us  6.4250us  cuDeviceGetPCIBusId
                    0.00%  1.2900us         3     430ns     329ns     613ns  cuDeviceGetCount
                    0.00%     838ns         2     419ns     266ns     572ns  cuDeviceGet
                    0.00%     376ns         1     376ns     376ns     376ns  cuDeviceGetUuid

==18419== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.40144ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.11338ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 64
 Read data from the file ../data/zebra-gray-int8-4x 
==18495== NVPROF is profiling process 18495, command: ./sobel_gpu -N 1024 -B 64
 GPU configuration: 64 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==18495== Profiling application: ./sobel_gpu -N 1024 -B 64
==18495== Profiling result:
==18495== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      79.33%      79.33%      79.33%


Started new run for 1024 threads per block and 256 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 1024 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==18569== NVPROF is profiling process 18569, command: ./sobel_gpu -N 1024 -B 256
 GPU configuration: 256 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==18569== Profiling application: ./sobel_gpu -N 1024 -B 256
==18569== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  674.65us         1  674.65us  674.65us  674.65us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.84%  286.30ms         4  71.575ms  6.3830us  286.14ms  cudaMallocManaged
                    4.91%  15.652ms         4  3.9131ms  4.5000us  15.501ms  cudaMemPrefetchAsync
                    4.86%  15.474ms         1  15.474ms  15.474ms  15.474ms  cudaDeviceSynchronize
                    0.23%  744.21us       101  7.3680us     116ns  330.17us  cuDeviceGetAttribute
                    0.11%  345.48us         1  345.48us  345.48us  345.48us  cuDeviceTotalMem
                    0.03%  89.580us         1  89.580us  89.580us  89.580us  cuDeviceGetName
                    0.02%  74.575us         1  74.575us  74.575us  74.575us  cudaLaunchKernel
                    0.00%  7.3200us         1  7.3200us  7.3200us  7.3200us  cuDeviceGetPCIBusId
                    0.00%  1.0260us         3     342ns     191ns     607ns  cuDeviceGetCount
                    0.00%     579ns         2     289ns     128ns     451ns  cuDeviceGet
                    0.00%     261ns         1     261ns     261ns     261ns  cuDeviceGetUuid

==18569== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.39757ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.09729ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 256
 Read data from the file ../data/zebra-gray-int8-4x 
==18647== NVPROF is profiling process 18647, command: ./sobel_gpu -N 1024 -B 256
 GPU configuration: 256 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==18647== Profiling application: ./sobel_gpu -N 1024 -B 256
==18647== Profiling result:
==18647== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      89.17%      89.17%      89.17%


Started new run for 1024 threads per block and 1024 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 1024 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==18726== NVPROF is profiling process 18726, command: ./sobel_gpu -N 1024 -B 1024
 GPU configuration: 1024 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==18726== Profiling application: ./sobel_gpu -N 1024 -B 1024
==18726== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  587.87us         1  587.87us  587.87us  587.87us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   89.95%  285.51ms         4  71.377ms  6.2070us  285.36ms  cudaMallocManaged
                    5.03%  15.950ms         4  3.9875ms  4.8940us  15.767ms  cudaMemPrefetchAsync
                    4.62%  14.672ms         1  14.672ms  14.672ms  14.672ms  cudaDeviceSynchronize
                    0.24%  765.53us       101  7.5790us     272ns  332.81us  cuDeviceGetAttribute
                    0.11%  346.24us         1  346.24us  346.24us  346.24us  cuDeviceTotalMem
                    0.03%  85.462us         1  85.462us  85.462us  85.462us  cuDeviceGetName
                    0.02%  65.931us         1  65.931us  65.931us  65.931us  cudaLaunchKernel
                    0.00%  6.2670us         1  6.2670us  6.2670us  6.2670us  cuDeviceGetPCIBusId
                    0.00%  1.3920us         3     464ns     331ns     729ns  cuDeviceGetCount
                    0.00%     884ns         2     442ns     282ns     602ns  cuDeviceGet
                    0.00%     332ns         1     332ns     332ns     332ns  cuDeviceGetUuid

==18726== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.45308ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.12397ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 1024
 Read data from the file ../data/zebra-gray-int8-4x 
==19065== NVPROF is profiling process 19065, command: ./sobel_gpu -N 1024 -B 1024
 GPU configuration: 1024 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==19065== Profiling application: ./sobel_gpu -N 1024 -B 1024
==19065== Profiling result:
==19065== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      93.29%      93.29%      93.29%


Started new run for 1024 threads per block and 4096 block size


RUNTIME METRIC

nvprof ./sobel_gpu -N 1024 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==19596== NVPROF is profiling process 19596, command: ./sobel_gpu -N 1024 -B 4096
 GPU configuration: 4096 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==19596== Profiling application: ./sobel_gpu -N 1024 -B 4096
==19596== Profiling result:
            Type  Time(%)      Time     Calls       Avg       Min       Max  Name
 GPU activities:  100.00%  557.28us         1  557.28us  557.28us  557.28us  sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
      API calls:   88.98%  285.62ms         4  71.405ms  6.3870us  285.46ms  cudaMallocManaged
                    5.78%  18.561ms         1  18.561ms  18.561ms  18.561ms  cudaDeviceSynchronize
                    4.85%  15.570ms         4  3.8925ms  4.6650us  15.424ms  cudaMemPrefetchAsync
                    0.23%  746.17us       101  7.3870us     113ns  330.84us  cuDeviceGetAttribute
                    0.11%  345.97us         1  345.97us  345.97us  345.97us  cuDeviceTotalMem
                    0.03%  91.356us         1  91.356us  91.356us  91.356us  cuDeviceGetName
                    0.02%  58.549us         1  58.549us  58.549us  58.549us  cudaLaunchKernel
                    0.00%  6.2450us         1  6.2450us  6.2450us  6.2450us  cuDeviceGetPCIBusId
                    0.00%     922ns         3     307ns     131ns     620ns  cuDeviceGetCount
                    0.00%     547ns         2     273ns     126ns     421ns  cuDeviceGet
                    0.00%     209ns         1     209ns     209ns     209ns  cuDeviceGetUuid

==19596== Unified Memory profiling result:
Device "Tesla V100-SXM2-16GB (0)"
   Count  Avg Size  Min Size  Max Size  Total Size  Total Time  Name
     141  1.9804MB  4.0000KB  2.0000MB  279.2305MB  24.35738ms  Host To Device
     840  170.19KB  4.0000KB  0.9961MB  139.6133MB  12.10797ms  Device To Host
Total CPU Page faults: 1261

SM EFFICIENCY METRIC

nvprof -m sm_efficiency ./sobel_gpu -N 1024 -B 4096
 Read data from the file ../data/zebra-gray-int8-4x 
==19672== NVPROF is profiling process 19672, command: ./sobel_gpu -N 1024 -B 4096
 GPU configuration: 4096 blocks, 1024 threads per block 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==19672== Profiling application: ./sobel_gpu -N 1024 -B 4096
==19672== Profiling result:
==19672== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: sobel_kernel_gpu(float*, float*, int, int, int, float*, float*)
          1                             sm_efficiency                   Multiprocessor Activity      98.22%      98.22%      98.22%
nvprof -m sm_efficiency ./sobel_cpu_omp_offload
==19747== NVPROF is profiling process 19747, command: ./sobel_cpu_omp_offload
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
 Elapsed time is : 0.460078 
 Wrote the output file ../data/processed-raw-int8-4x-cpu.dat 
==19747== Profiling application: ./sobel_cpu_omp_offload
==19747== Profiling result:
==19747== Metric result:
Invocations                               Metric Name                        Metric Description         Min         Max         Avg
Device "Tesla V100-SXM2-16GB (0)"
    Kernel: __omp_offloading_36_2a21e4f5__Z18do_sobel_filteringPfS_ii_l108
          1                             sm_efficiency                   Multiprocessor Activity      99.46%      99.46%      99.46%
snaik@cgpu02:~/CSC_746/CSC746_Sobel_Filtering/build>          
```
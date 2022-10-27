# Build Instructions

## CPU Code

The CPU code was run on a KNL node. You can follow these instructions to compile the CPU code

```bash
# Grab an interactive KNL Node
salloc --nodes 1 --qos interactive --time 01:00:00 --constraint knl --account m3930

# Setup all modules
source scripts/modules_for_cgpu.sh

# Compile the program
mkdir build
cd build
cmake ../ && make
```

The following instructions can be used to run the CPU code 

```bash
# Initialize OpenMP environment variables
export OMP_NUM_THREADS=1
export OMP_SCHEDULE=static

# For each concurrency level, export the OMP_NUM_THREADS variable again before running the tests.
# t = 1
./sobel_cpu

# t = 2
export OMP_NUM_THREADS=2
./sobel_cpu
# .
# .
# ... t = 16
export OMP_NUM_THREADS=16
./sobel_cpu
```

## GPU Code

The GPU code was run on the CORI GPU node. Use the following instructions to compile the code.

```bash
# If you are on a KNL Node, exit it
exit

# Purge all modules
module purge

# load all modules again
source scripts/modules_for_cgpu.sh

# Grab an interactive GPU node
salloc -C gpu -t 30 -c 10 -G 1 -q interactive -A m3930

# Compile the Program
mkdir build # Skip if build folder exists
cd build
rm -rf * # Only if the build folder was already present
cmake ../ && make
```

To run the program, follow these steps.

```bash
# Make the shell script an executable
chmod +x ../scripts/skeleton-gpu-batch-script.sh

# Run the shell script
../scripts/skeleton-gpu-batch-script.sh

# Note: Running the shell script will run all configurations of the GPU code (all variations of number of blocks and number of threads per block).
# It will also run the OpenMP-offload code.
```
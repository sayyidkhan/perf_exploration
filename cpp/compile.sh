#!/bin/bash

# Check if a file name was provided
if [ -z "$1" ]; then
  echo "Usage: ./compile.sh <filename.cpp> <number_of_runs>"
  exit 1
fi

# Check if number of runs was provided, default to 10
n_runs=${2:-10}

# Extract the base name (without extension) from the provided file
filename=$(basename -- "$1")
filename_without_ext="${filename%.*}"

# Check if the C++ file exists
if [ ! -f "$1" ]; then
  echo "File not found!"
  exit 1
fi

# Compile the C++ file with C++11 standard
g++ -std=c++11 "$1" -o "$filename_without_ext"

if [ $? -ne 0 ]; then
  echo "Compilation failed!"
  exit 1
fi

echo "Running the program $n_runs times..."
echo "------------------------"

total_time=0

for (( i=1; i<=n_runs; i++ ))
do
  # Measure the time for each run
  start_time=$(date +%s.%N)
  ./"$filename_without_ext"
  end_time=$(date +%s.%N)
  
  # Calculate the time taken for the run
  run_time=$(echo "$end_time - $start_time" | bc)
  
  # Sum the run times
  total_time=$(echo "$total_time + $run_time" | bc)
  
  echo "Run $i took: $run_time seconds"
done

# Calculate the average time
average_time=$(echo "scale=4; $total_time / $n_runs" | bc)

echo "------------------------"
echo "Average execution time over $n_runs runs: $average_time seconds"

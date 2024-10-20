#!/bin/bash

# Check if a file name was provided
if [ -z "$1" ]; then
  echo "Usage: ./compile.sh <filename.py>"
  exit 1
fi

# Default number of runs
n_runs=10

# Check if the Python file exists
if [ ! -f "$1" ]; then
  echo "File not found!"
  exit 1
fi

echo "Running the program $n_runs times..."
echo "------------------------"

total_time=0

for (( i=1; i<=n_runs; i++ ))
do
  # Measure the time for each run
  start_time=$(date +%s.%N)
  python3 "$1"  # Execute the Python script
  end_time=$(date +%s.%N)
  
  # Calculate the time taken for the run
  run_time=$(echo "$end_time - $start_time" | bc)
  
  # Sum the run times
  total_time=$(echo "$total_time + $run_time" | bc)
  
  echo "Run $i took: $run_time seconds"
done

# Calculate the average time
average_time=$(echo "scale=6; $total_time / $n_runs" | bc)

echo "------------------------"
echo "Average execution time over $n_runs runs: $average_time seconds"

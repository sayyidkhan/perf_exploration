import numpy as np
import time

# Function to perform matrix multiplication
def matrix_multiplication():
    # Create two random matrices
    A = np.random.rand(10000, 10000)  # 1000x1000 matrix
    B = np.random.rand(10000, 10000)  # 1000x1000 matrix
    # Perform matrix multiplication
    C = np.dot(A, B)

# Main block to run the function multiple times
if __name__ == "__main__":
    num_runs = 10
    total_time = 0

    for run in range(num_runs):
        start_time = time.time()  # Start time
        matrix_multiplication()  # Run matrix multiplication
        end_time = time.time()    # End time

        # Calculate execution time
        execution_time = end_time - start_time
        total_time += execution_time

        print(f"Run {run + 1} took: {execution_time:.6f} seconds")

    # Calculate and print average time
    average_time = total_time / num_runs
    print(f"\nAverage execution time over {num_runs} runs: {average_time:.6f} seconds")

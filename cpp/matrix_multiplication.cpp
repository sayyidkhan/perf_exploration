#include <iostream>
#include <vector>
#include <chrono>

void multiply_matrices(int size) {
    std::vector<double> A(size * size);
    std::vector<double> B(size * size);
    std::vector<double> C(size * size, 0.0);  // Initialize C to all zeros

    // Populate matrices A and B with some values
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            A[i * size + j] = static_cast<double>(i + j);
            B[i * size + j] = static_cast<double>(i - j);
        }
    }

    // Measure the multiplication time
    auto start = std::chrono::high_resolution_clock::now();
    
    // Multiply A and B into C
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            for (int k = 0; k < size; ++k) {
                C[i * size + j] += A[i * size + k] * B[k * size + j];
            }
        }
    }

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> duration = end - start;
    std::cout << "Matrix multiplication time: " << duration.count() << " seconds" << std::endl;
}

int main() {
    int size = 10000; // Example size
    multiply_matrices(size);
    return 0;
}

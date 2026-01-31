#include <cstdio>
#include <cuda_runtime.h>

__global__ void gpu_probe()
{
    printf("GPU thread %d active\n", threadIdx.x);
}

int main()
{
    int deviceCount = 0;
    cudaError_t status = cudaGetDeviceCount(&deviceCount);

    if (status != cudaSuccess || deviceCount == 0)
    {
        printf("No CUDA-capable GPU detected\n");
        return 1;
    }

    printf("CUDA devices detected: %d\n", deviceCount);

    gpu_probe<<<1, 4>>>();
    cudaDeviceSynchronize();

    return 0;
}
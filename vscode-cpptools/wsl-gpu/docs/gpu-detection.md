## Signals that GPU is exposed
- /dev/dxg exists
- nvidia-smi works
- dmesg shows dxgkrnl

## Signals that CUDA works
- libcuda.so present
- nvcc runs
- CUDA sample runs

GPU visible ≠ GPU usable.
set -e

echo "Checking nvidia-smi..."
nvidia-smi || echo "nvidia-smi failed"

echo "Checking CUDA runtime..."
ls /usr/lib/wsl/lib/libcuda.so || echo "CUDA runtime missing"
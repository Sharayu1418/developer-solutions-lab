## What problem this solves
GPU appears available in WSL (`nvidia-smi` works), but applications
(PyTorch, TensorFlow, Docker, CUDA apps) fail to detect or use it.

## Why this happens (by design)
WSL GPU support is **paravirtualized**.

- Windows owns the GPU
- WSL exposes it via **dxgkrnl**
- CUDA / DirectML work only if:
  - Windows driver supports WSL
  - Linux userland matches expected versions

This is **not a full Linux GPU stack**.

## Expected behavior
- `nvidia-smi` works in WSL
- GPU visible in `/dev/dxg`
- CUDA works only with compatible drivers + runtime

## What this does NOT solve
- Unsupported GPUs
- Old Windows builds
- CUDA version mismatches
- Docker GPU passthrough issues

## When this breaks
- Windows driver update mismatch
- WSL kernel outdated
- CUDA runtime newer than driver

## How to verify

### 1. Verify GPU exposure
```bash
./verify/verify-gpu.sh
```

## Related issues
- microsoft/WSL#5955
- microsoft/WSL#9231
- nvidia/nvidia-docker#1458

## Maintenance status
Validated (Windows 11 + WSL2)

If this helps, feel free to open an issue or PR.
## High level
WSL does NOT expose the GPU directly.

Windows:
- Owns the physical GPU
- Loads vendor driver (NVIDIA/AMD/Intel)

WSL:
- Talks to GPU through dxgkrnl
- Uses a translated user-mode driver

## Implication
- `nvidia-smi` ≠ CUDA usable
- Kernel modules are NOT loaded in WSL
- Version alignment is mandatory

This behavior is **by design**, not a bug.
# Reproducible example

This directory demonstrates how VS Code behaves when both
configuration mechanisms are present.

---

## Files
- `compile_commands.json` → authoritative source
- `c_cpp_properties.json` → ignored when database exists

---

## How to verify
1. Open this folder in VS Code
2. Enable C/C++ IntelliSense logging
3. Observe that macros from `c_cpp_properties.json` are ignored

---

## Interpretation
- This is expected behavior
- Configuration is resolved correctly
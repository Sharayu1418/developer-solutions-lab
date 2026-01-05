## What problem this solves

When using `compile_commands.json`, the VS Code C/C++ extension ignores
`includePath` and `defines` from `c_cpp_properties.json`.
This behavior is often unexpected for users.

---

## Why this happens (by design)

The C/C++ extension treats `compile_commands.json` as the **single source
of truth** for compilation flags.

Once present:
- `includePath` is ignored
- `defines` are ignored
- All flags must come from the compilation database

This design ensures **compiler-accurate IntelliSense**.

---

## What “working” means

- IntelliSense matches the actual build
- Includes and macros resolve from `compile_commands.json`
- No conflicting configuration sources

---

## What this does NOT solve

- Missing flags in the build system
- Incorrect compiler invocation
- Incomplete or invalid `compile_commands.json`

---

## Common failure scenarios

- The compilation database is incomplete
- Cross-compilers do not emit required defines
- Generated commands differ from actual build flags

---

## References

- Public issue: microsoft/vscode-cpptools#6909  
- Related discussion: microsoft/vscode-cpptools#7579 (2021–2025)

---

## Validation status

Manually validated against documented behavior.

---

If this documentation is useful, feel free to open an issue or pull request
to improve clarity or add edge cases.
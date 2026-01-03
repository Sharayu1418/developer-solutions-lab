## What problem this solves
When using `compile_commands.json`, VS Code C/C++ ignores
`includePath` and `defines` from `c_cpp_properties.json`,
which is often unexpected for users.

---

## Why this happens (by design)
The C/C++ extension treats `compile_commands.json` as the **single source
of truth** for compilation flags.

Once present:
- `includePath` is ignored
- `defines` are ignored
- flags must come from the compilation database

This behavior is intentional to ensure **compiler-accurate IntelliSense**.

---

## What “working” means
- IntelliSense matches the actual build
- All includes and macros resolve from `compile_commands.json`
- No hidden or conflicting configuration sources

---

## What this does NOT solve
- Missing flags in the build system
- Incorrect compiler invocation
- Broken or partial `compile_commands.json`

---

## When this breaks
- The compilation database is incomplete
- Cross-compilers do not emit required defines
- Generated commands differ from actual build flags

---

## Related issue
- microsoft/vscode-cpptools#6909  
- Follow-up discussion: #7579 (2021–2025)

---

## Maintenance status
Validated

---

If this helps, feel free to open an issue or PR.
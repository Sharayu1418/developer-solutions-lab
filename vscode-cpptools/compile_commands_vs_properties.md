## Summary
`compile_commands.json` **overrides** `c_cpp_properties.json`
by design.

This is not a bug.

---

## Internal design rationale
The extension must choose between:
- user-defined configuration
- compiler-emitted configuration

It always prefers the compiler output to avoid:
- mismatched macros
- incorrect include resolution
- false IntelliSense confidence

---

## Expected behavior
| Scenario | Result |
|--------|--------|
compile_commands.json present | properties ignored |
No compile_commands.json | properties used |
Mixed usage | compile_commands wins |

---

## Current limitation
The extension does not merge configurations.
This is tracked upstream and intentional.

---

## Recommendation
Ensure your build system emits:
- all include paths
- all defines
- correct compiler flags

The editor should reflect the build, not override it.
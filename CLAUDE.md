# CLAUDE.md — Dream Pet Island

Permanent development rules for this repository. These rules apply to every
session, every task, and every contributor (human or AI). They do not expire
at the end of a sprint and must not be silently overridden.

## Project Identity

- **Dream Pet Island** is a **commercial production game**, not a prototype,
  demo, or learning exercise. Every line of code must be held to that
  standard.
- Engine: **Flutter + Flame**.
- Primary target platform: **Android**. Other platforms are secondary and
  must never block or complicate the Android-first architecture.

## Non-Negotiable Coding Rules

1. **Never generate demo code.** No counter apps, no "Hello World" widgets,
   no tutorial boilerplate left in place. If default Flutter scaffolding is
   encountered, replace or remove it deliberately — don't build on top of it.
2. **Never generate placeholder architecture.** Folders, classes, and
   abstractions must exist because the current task needs them, not as
   speculative scaffolding for imagined future features.
3. **Always write production-quality code.** Assume the code will ship to
   real users and be maintained for years.
4. **Follow Clean Architecture.** Separate concerns across layers
   (presentation, domain/game logic, data/services). Dependencies point
   inward; outer layers depend on inner ones, never the reverse.
5. **Follow SOLID principles** in every class and module design decision.
6. **Keep files small and modular.** One clear responsibility per file.
7. **Never create giant files.** If a file is growing to handle multiple
   responsibilities, split it before it becomes unmanageable.
8. **Never add unnecessary dependencies.** Every package addition must be
   justified by a real, current requirement — not convenience or habit.
9. **Never modify existing code without permission.** Do not refactor,
   "clean up," rename, or restructure code that wasn't part of the requested
   task unless explicitly asked.
10. **Always preserve project architecture.** Respect the established
    folder structure (`lib/core`, `lib/features`, `lib/game`, `lib/shared`,
    `assets`, `docs`) rather than introducing parallel or conflicting
    patterns.
11. **Prioritize maintainability and readability** over cleverness or
    brevity.
12. **Write code suitable for long-term commercial development** — this
    project has a multi-year lifespan, not a single release.

## Workflow Rules

- **Explain every change before applying it.** State what will change and
  why before touching files.
- **Stop after every completed task and wait for confirmation** before
  starting the next one. Do not chain tasks together without explicit
  sign-off.
- Do not add gameplay, UI, Flame integration, or Firebase until explicitly
  instructed — architecture and gameplay are separate phases.
- When in doubt about scope, ask rather than assume.

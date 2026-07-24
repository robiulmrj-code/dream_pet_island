# Dream Pet Island

Dream Pet Island is a commercial mobile game developed by Dream Pet Studio,
built with Flutter and Flame. This repository is the production codebase for
the game.

## Vision

Dream Pet Island is being built as a long-term, live commercial product —
not a prototype or a portfolio piece. The goal is a polished, maintainable
pet-simulation game that can be extended with new features, content, and
platforms over multiple years of active development, starting with Android
and expanding to other platforms as the product matures.

## Current Development Status

**Sprint 0 — Foundation.**

The project is currently in its foundation phase. This phase establishes
project structure, engineering standards, and tooling before any gameplay,
UI, or feature work begins. At this stage the repository intentionally
contains:

- A clean folder architecture (see below).
- Project-wide development rules (`CLAUDE.md`).
- Baseline analyzer/lint configuration.

No gameplay, game UI, Flame integration, or backend services (e.g. Firebase)
have been added yet. These are deliberately sequenced for later sprints.

## Technology Stack

- **Language:** Dart
- **Framework:** Flutter
- **Game Engine:** Flame (planned — not yet integrated)
- **Primary Target Platform:** Android
- **Secondary Platforms:** iOS, Web, Windows, macOS, Linux (supported by the
  Flutter toolchain, not actively developed against at this stage)

## Folder Structure

```
assets/
  images/       Game and UI art assets
  audio/        Sound effects and music
  fonts/        Custom typefaces
  data/         Static game data (JSON/config)

docs/
  architecture/ Technical architecture documentation
  design/       Game design documentation
  sprints/      Sprint planning and retrospectives

lib/
  core/         App-wide, engine-agnostic building blocks
    config/     Environment and app configuration
    constants/  Shared constant values
    services/   Cross-cutting services (e.g. storage, analytics)
    utils/      Shared utility functions
  features/     Vertical feature modules (e.g. onboarding, shop, pet care)
  game/         Flame game root and game-layer code
  shared/       Reusable, feature-agnostic building blocks
    widgets/    Shared UI widgets
    models/     Shared data models

test/          Automated tests
```

This structure follows Clean Architecture principles: feature and game
logic are isolated from shared infrastructure, and dependencies are
expected to point inward toward `core` rather than outward.

## Development Philosophy

- Dream Pet Island is engineered as a commercial product from day one.
  Demo code, throwaway prototypes, and placeholder architecture are not
  acceptable in this repository.
- Every addition to the codebase should be deliberate and justified by a
  concrete, current requirement — not spec work for hypothetical future
  needs.
- Maintainability and readability take priority over cleverness. The
  codebase is expected to be actively developed for years, by more than one
  contributor.
- Architectural decisions are documented under `docs/architecture/` so that
  intent and rationale survive beyond any single contributor's memory.

## Coding Standards

- Follow **Clean Architecture**: presentation, domain/game logic, and data
  concerns are kept in separate layers with dependencies pointing inward.
- Follow **SOLID principles** in class and module design.
- Keep files small and single-purpose. Large, multi-responsibility files
  are split rather than allowed to grow.
- Keep dependencies minimal — every package in `pubspec.yaml` must be
  justified by an active requirement.
- All code must pass static analysis as configured in
  `analysis_options.yaml` before being merged.
- Full engineering rules for this repository, including AI-assisted
  development rules, are defined in [`CLAUDE.md`](CLAUDE.md) and are
  binding for all contributors.

## Branch Strategy

- `main` — always stable and releasable. No direct commits.
- `develop` — integration branch for completed, reviewed work.
- `feature/<short-description>` — individual feature or task branches,
  branched from `develop` and merged back via pull request.
- `release/<version>` — cut from `develop` to stabilize a release
  candidate.
- `hotfix/<short-description>` — urgent production fixes, branched from
  `main` and merged into both `main` and `develop`.

## Contribution Rules

- All changes are made through pull requests; no direct pushes to `main`
  or `develop`.
- Every pull request must be reviewed before merging.
- Changes must respect the existing project architecture and folder
  structure; do not introduce parallel or conflicting patterns.
- Do not modify existing code outside the scope of the task at hand
  without explicit agreement.
- Commit messages should clearly describe the intent of the change, not
  just the mechanics of it.
- New dependencies require explicit justification in the pull request
  description.

## Setup Instructions

Prerequisites: a working Flutter SDK installation matching the version
constraint in `pubspec.yaml`, and Android tooling (Android Studio / SDK)
for Android builds.

```
flutter pub get
flutter analyze
flutter test
```

Refer to the official Flutter documentation for platform-specific setup
of Android SDKs, emulators, or connected devices.

## Roadmap

- **Sprint 0 (current):** Project foundation — architecture, standards,
  tooling.
- **Next:** Core app shell and navigation scaffolding.
- **Following:** Flame integration and the initial game loop.
- **Later:** Core gameplay systems, pet care mechanics, and content
  pipeline.
- **Future:** Backend integration, live-ops tooling, and platform
  expansion beyond Android.

This roadmap will evolve as design and technical decisions are finalized;
sprint-level detail is tracked under `docs/sprints/`.

## License

This is proprietary software owned by Dream Pet Studio. All rights
reserved. No part of this repository may be copied, distributed, or used
outside of authorized Dream Pet Studio development activity without
explicit written permission.

## Contact

Dream Pet Studio — contact details to be added.

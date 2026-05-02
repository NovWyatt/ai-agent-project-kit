---
name: universal-project
description: use when working in any software project where the user wants safe, framework-neutral AI coding help across web, mobile, desktop, backend, CLI, data, or automation projects. apply for project exploration, planning, implementation, verification, and handoff without assuming a specific framework.
---

# Universal Project Skill

## Goal
Help the agent make safe, minimal, verifiable changes in any codebase.

## Workflow
1. Read `PROJECT_CONTEXT.md` and `SESSION_HANDOFF.md` if present.
2. Identify project type from files, not assumptions.
3. Find real package/build/test commands from manifests and docs.
4. Make the smallest useful change.
5. Verify with the smallest real command.
6. Update handoff only after implementation work.

## Project Type Detection
Prefer evidence from files:
- Node/Web: `package.json`, `vite.config.*`, `next.config.*`, `angular.json`, `src/`.
- Laravel/PHP: `artisan`, `composer.json`, `routes/`, `app/`, `resources/views/`.
- Python: `pyproject.toml`, `requirements.txt`, `pytest.ini`.
- Go: `go.mod`.
- Rust: `Cargo.toml`.
- Flutter: `pubspec.yaml`, `lib/`.
- React Native/Expo: `app.json`, `app.config.*`, `expo`, `metro.config.js`.
- iOS/macOS: `.xcodeproj`, `.xcworkspace`, `Package.swift`.
- Android: `build.gradle`, `settings.gradle`, `AndroidManifest.xml`.
- Desktop Electron/Tauri: `electron`, `src-tauri/`, `tauri.conf.json`.

## Safety Rules
- Do not change secrets or credential files.
- Do not run destructive commands.
- Do not change database migrations, auth, payment, permissions, or deployment settings without explicit approval.
- If the project is near completion, prefer review and targeted fixes over broad refactors.

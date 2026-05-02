\---

name: design-system-review

description: use when reviewing, improving, or creating visual UI for web, mobile, desktop, dashboards, landing pages, components, forms, navigation, spacing, typography, color systems, responsive layouts, or DESIGN.md-guided interfaces. use this skill to avoid generic AI-looking UI while keeping changes minimal, consistent with the existing project, and safe for near-release codebases.

\---



\# Design System Review



Use this skill when the task involves visual design, UI polish, layout consistency, responsive behavior, or creating/updating `DESIGN.md`.



\## Core Principles



\- Preserve the existing product direction unless the user asks for a redesign.

\- Improve visual quality without rewriting unrelated code.

\- Prefer small, high-impact UI improvements.

\- Match the existing framework and component style.

\- Do not introduce a new design system unless explicitly requested.

\- Do not replace working UI with a full redesign near release.



\## What to Check



\### Layout

\- Consistent spacing scale

\- Clear visual hierarchy

\- Proper alignment

\- Good empty states

\- Mobile and desktop behavior

\- No overflow or broken container behavior



\### Typography

\- Clear heading/body hierarchy

\- Reasonable line height

\- Consistent font sizes

\- No excessive font variation



\### Color

\- Accessible contrast

\- Consistent primary/accent colors

\- No random gradients or decorative colors

\- Good disabled/error/success states



\### Components

\- Consistent buttons

\- Consistent inputs

\- Clear labels and validation states

\- Predictable navigation

\- Reusable patterns without overengineering



\### Interaction

\- Hover/focus/active states

\- Loading states

\- Error states

\- Keyboard accessibility where relevant



\## DESIGN.md Workflow



If a project has `DESIGN.md`, follow it first.



If no `DESIGN.md` exists and the user asks for design consistency:

1\. Inspect existing UI.

2\. Infer the current visual language.

3\. Propose a short `DESIGN.md`.

4\. Do not redesign the app unless requested.



\## Safe Implementation Rules



\- For near-release projects, review first and edit only after approval.

\- Make surgical UI changes.

\- Do not refactor unrelated components.

\- Do not change business logic while improving UI.

\- Do not change routes, auth, database, or API behavior for design-only tasks.



\## Suggested Output



After review or implementation, summarize:

\- Visual issues found

\- Files changed

\- Design rules followed

\- Responsive/accessibility notes

\- Remaining manual checks


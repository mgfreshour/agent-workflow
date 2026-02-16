# Rule: Generating a Task List from a PRD and Design Document

## Inputs

- A finalized PRD document
- A finalized architecture/design document
- Optional: referenced codebase files for additional context

## Process

1.  **Receive Document References:** The user points to the PRD and design document.
2.  **Analyze Documents:** Read functional requirements, user stories, and constraints from the PRD, plus architectural decisions and interfaces from the design doc.
3.  **Assess Current State:** Review the existing codebase for infrastructure, patterns, conventions, and reusable components relevant to the requirements.
4.  **Phase 1 — Generate Parent Tasks:** Generate high-level tasks (typically 5-10). Order by dependency — earlier tasks should not depend on later ones.
5.  **Present to User:** Show parent tasks without sub-tasks. Wait for the user to confirm with "Go" or provide feedback.
6.  **Phase 2 — Generate Sub-Tasks:** Break each parent task into actionable sub-tasks, ordered by dependency. Tag any sub-task with significant risk or complexity: `[HIGH RISK]` or `[COMPLEX]`.
7.  **Identify Relevant Files:** List files that will be created or modified, including test files.
8.  **Generate Context Header:** At the top of the task file, include a Context Header (see Output Format) containing:
    - Source document paths
    - All FR-N requirements (one-line summaries from PRD)
    - 3-5 key design decisions (one line each from design doc)
    - All constraints (from PRD)
9.  **Save:** Save as `[feature-name]-tasks.md` in the project's docs directory.

## Output Format

The task file _must_ follow this structure:

```markdown
## Context

**PRD:** path/to/prd.md
**Design:** path/to/design.md

### Requirements
- FR-1: [one-line summary]
- FR-2: [one-line summary]

### Design Decisions
- [Key decision 1 — one line]
- [Key decision 2 — one line]

### Constraints
- [Constraint 1]
- [Constraint 2]

---

## Relevant Files

- `path/to/file1.ts` - Brief description.
- `path/to/file1.test.ts` - Tests for `file1.ts`.

### Notes

- Place unit tests alongside the code they test.
- Use the project's test runner (e.g., `pytest`, `npm test`, `go test ./...`).
- Complete tasks in order unless noted otherwise.

## Tasks

- [ ] 1.0 Parent Task Title
  - [ ] 1.1 Sub-task description
  - [ ] 1.2 Sub-task description [HIGH RISK]
- [ ] 2.0 Parent Task Title (depends on: 1.0)
  - [ ] 2.1 Sub-task description
  - [ ] 2.2 Sub-task description [COMPLEX]
- [ ] 3.0 Parent Task Title
```

### Context Header

The Context Header lets the executing agent re-orient on requirements, decisions, and constraints every time it reads the task file. Update it if requirements or design decisions change during implementation.

### Dependency Notation

- Cross-task dependencies: `(depends on: X.0)`
- Sub-tasks are sequential by default
- Parallelizable sub-tasks: `(parallel OK)`

## Final Instructions

1. Do NOT start implementing any tasks.
2. If the PRD or design doc is ambiguous, stop and ask.
3. Incorporate user feedback on parent tasks before generating sub-tasks.
4. Ask the user to review and confirm the full task list before considering this step complete.

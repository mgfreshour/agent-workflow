# Agent Workflow

Each step produces an artifact and pauses for human review before proceeding.

```
Step 1: Create PRD           → Defines the problem and requirements
Step 2: Design Architecture  → Evaluates approaches, selects a solution
Step 3: Generate Tasks       → Breaks the solution into an ordered task list
Step 4: Execute Tasks        → Works through tasks one at a time
Step 5: Review & Approve     → Human verifies each task before the next begins
```

---

### Step 1: Create a Product Requirements Document (PRD)

Define the problem and clarify what you're building, for whom, and why.

```text
Use create-prd.md as your instructions.
Here's the feature I want to build: [Describe your feature in detail]
Reference these files for context: [Optional: path/to/file1.py path/to/file2.ts]
```

**Review:** Confirm the PRD captures the problem, requirements, and constraints accurately.

**Output:** `[YY-MM-DD]-[feature-name]-prd.md`

---

### Step 2: Design the Architecture

The agent proposes 2-3 architectural approaches with trade-off analysis. Select or refine an approach before implementation planning begins.

```text
Use design-architecture.md as your instructions.
Here is the PRD: [path/to/feature-prd.md]
Reference these files for codebase context: [Optional: path/to/relevant/files]
```

**Review:** Select an approach, request modifications, or ask for additional options.

**Output:** `[YY-MM-DD]-[feature-name]-design.md`

---

### Step 3: Generate the Task List

The agent reads the PRD and design document, assesses the codebase, and produces a task list with dependencies. It presents high-level tasks first for your review, then generates sub-tasks after you confirm.

```text
Use generate-tasks.md as your instructions.
Here is the PRD: [path/to/feature-prd.md]
Here is the design doc: [path/to/feature-design.md]
```

**Review:** Examine the task list for completeness, ordering, and scope.

**Output:** `[feature-name]-tasks.md`

---

### Step 4: Execute Tasks

The agent creates a feature branch, works through sub-tasks one at a time, commits after each, and waits for your approval before continuing. Each commit is a rollback point.

```text
Use process-task-list.md as your instructions.
Start on task 1.1 from: [path/to/feature-tasks.md]
PRD: [path/to/feature-prd.md]
Design: [path/to/feature-design.md]
```

You only need to reference `process-task-list.md` for the first task.

---

### Step 5: Review, Approve, and Progress

After each sub-task:

- **Approve:** Reply "yes" to mark complete and move to the next.
- **Request changes:** Provide feedback to revise the current task.
- **Pause/escalate:** Ask the agent to stop and explain its reasoning.

---

## General Principles

- **Human-in-the-loop at every stage.** No step proceeds without explicit approval.
- **When in doubt, stop and ask.** Never guess at ambiguous requirements.
- **Artifacts are the source of truth.** Each step produces a document that the next step consumes.
- **Iteration is expected.** PRDs get revised, designs get reworked, tasks get added or removed. If the approach is fundamentally blocked mid-execution, the agent will stop and propose options — including going back to the design step.
- **Tool-agnostic.** Replace file reference syntax as needed for your tool (e.g., `@file` in Cursor, file paths in Claude Code).

## Resuming Work

Start a new session and point the agent at the task file:

```text
Use process-task-list.md as your instructions.
Continue working on: [path/to/feature-tasks.md]
PRD: [path/to/feature-prd.md]
Design: [path/to/feature-design.md]
```

The task file's Context Header and checklist give the agent everything it needs to re-orient and resume.

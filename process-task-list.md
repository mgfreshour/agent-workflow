# Task List Management

## Context Loading

Before starting any work:

1. **Read the task file** — the Context Header contains source doc paths, requirements (FR-N), design decisions, and constraints.
2. **Read the PRD** (path in Context Header).
3. **Read the design document** (path in Context Header).

Do not begin implementing until you have read all three documents.

## Git Checkpointing

### Before starting work

Create a feature branch if one doesn't exist:

```
git checkout -b feature/[feature-name]
```

### After completing each sub-task

Commit with the task number in the message:

```
git add -A
git commit -m "Complete task [X.Y]: [brief description]"
```

Commit the task file alongside code changes to keep them in sync.

**Never push to the remote.** The user decides when to push.

### Reverting a task

```
git revert HEAD
```

To revert further back, identify the last known-good commit. Always confirm with the user before reverting multiple commits.

## Context Refresh

- **Before each new parent task (X.0):** Re-read the Context Header. If the parent task covers a new area, also re-read relevant PRD/design doc sections.
- **After session interruption or if uncertain about requirements:** Re-read the full PRD and design doc.
- **If making assumptions about requirements:** Stop. Check the Context Header, then source docs, then ask the user.

## Session Resumption

When continuing work in a new session:

1. Read the task file (Context Header + checklist of completed/remaining work).
2. Read the PRD and design doc (paths in Context Header).
3. Check git history to understand what was last completed.
4. Confirm the next incomplete sub-task with the user before starting.

## Task Implementation

- **One sub-task at a time.** Do NOT start the next until the user says "yes" or "y".
- **TDD (for code tasks only):** Red-Green-Refactor cycle. Does not apply to config, migrations, docs, or infrastructure. If skipping TDD, note why.
- **Completion protocol:**
  1. Mark sub-task `[x]` and commit (see Git Checkpointing).
  2. **Test tasks:** Verify the test fails before marking complete.
  3. **Implementation tasks:** Verify all relevant tests pass before marking complete.
  4. **Non-code tasks:** Verify acceptance criteria are met.
  5. **When all sub-tasks in a parent are `[x]`:** Run the full test suite, verify green, clean up temp files, then mark the parent `[x]`.
- Stop after each sub-task and wait for the user's go-ahead.

## Task List Maintenance

1. **Update as you work:** Mark completed tasks `[x]`, add new tasks as they emerge.
2. **Maintain "Relevant Files":** List every file created or modified with a one-line description.
3. **Keep the Context Header accurate:** Update if requirements or design decisions change.
4. **When the plan needs to change:**
   - Split, remove, reorder, or add tasks — but always propose changes to the user first.
   - **Do NOT silently restructure the task list.**
5. **When the approach is fundamentally blocked:**
   - **Stop immediately.** Do not work around the issue silently.
   - **Notify the user:** What you discovered, why it blocks the plan, which tasks are affected.
   - **Propose options:** Revise the design, pivot to an alternative from the design doc, partial redesign, or investigate further.
   - **Wait for the user to decide.** If the design is revised, update the design doc, task list, and Context Header before resuming.

## Error Recovery

1. **Something breaks:** Stop, run the test suite, present options (revert to last git checkpoint, fix in current task, or pause for user).
2. **Stuck or uncertain:** Stop and ask. Explain what you've tried and what options you see.
3. **Task fails verification:** Do not mark complete. Explain what failed and propose a fix.

## Acceptance Criteria Validation

Before marking a sub-task complete, verify against the PRD (use FR-N IDs from Context Header):
- Does it satisfy the relevant FR-N requirement(s)?
- Does it respect the constraints?
- Does it align with the design document?

If the output deviates from the PRD or design doc, flag it to the user before marking complete.

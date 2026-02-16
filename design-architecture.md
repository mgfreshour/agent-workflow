# Rule: Designing the Architecture

## Inputs

- A finalized PRD document
- Optional: referenced codebase files for context

## Process

1.  **Receive PRD Reference:** The user points to a specific PRD file.
2.  **Analyze PRD:** Read all requirements, constraints, non-goals, and success metrics.
3.  **Assess Current State:** Review the existing codebase for:
    - Architectural patterns and conventions in use
    - Reusable components, modules, or utilities
    - Tech stack, dependencies, and infrastructure constraints
    - Testing patterns
4.  **Propose Approaches:** Present 2-3 distinct approaches. For each:
    - **Summary:** 2-3 sentence description.
    - **Key design decisions:** Major structural choices.
    - **Pros / Cons:** Advantages and risks.
    - **Effort:** Relative complexity (Low / Medium / High).
5.  **Recommend:** State which approach you recommend and why, given the PRD's constraints.
6.  **Wait for Selection:** Pause for the user to select, request changes, or ask for more options. Do NOT proceed until confirmed.
7.  **Elaborate:** Expand the chosen approach into a full design document (structure below).
8.  **Save:** Save as `[YY-MM-DD]-[feature-name]-design.md` in the project's docs directory.

## Design Document Structure

1.  **Overview:** Chosen approach and why it was selected.
2.  **Architecture:** High-level structure — module boundaries, data flow, key interfaces. Use text diagrams (ASCII/Mermaid) where helpful.
3.  **Key Design Decisions:** Each decision with:
    - **Decision:** What was decided
    - **Rationale:** Why this over alternatives
    - **Trade-off:** What we give up
4.  **Data Model (if applicable):** New or modified data structures/schemas.
5.  **API / Interface Changes (if applicable):** New endpoints, function signatures, or component interfaces.
6.  **Dependencies:** New libraries or services needed.
7.  **Risks and Mitigations:** Implementation risks and how to address them.
8.  **Alignment with PRD:** Map each FR-N to the component or mechanism that addresses it. Every FR-N must appear.

## Final Instructions

1. Do NOT start implementing or generating tasks.
2. Always present multiple approaches — even if one seems obvious, explicitly state why alternatives were rejected.
3. If the PRD is ambiguous, stop and ask the user.
4. If the user rejects all approaches, iterate based on feedback.
5. Ask the user to review and confirm the design document before considering this step complete.

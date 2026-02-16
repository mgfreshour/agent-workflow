# Rule: Generating a Product Requirements Document (PRD)

## Process

1.  **Receive Initial Prompt:** The user provides a description of a new feature.
2.  **Assess Project Context:** Review any referenced files and existing project documentation (README, docs, coding standards) to understand the codebase, tech stack, and conventions.
3.  **Ask Clarifying Questions:** Before writing the PRD, ask clarifying questions to understand the "what" and "why" (not the "how"). Provide options in letter/number lists for easy selection.
4.  **Generate PRD:** Based on the prompt, project context, and answers, generate a PRD using the structure below.
5.  **Save PRD:** Save as `[YY-MM-DD]-[feature-name]-prd.md` in the project's docs directory (e.g., `./docs/prd/`).

## Clarifying Questions (Examples)

Adapt questions to the prompt. Common areas:

*   **Problem Statement:** "What specific problem does this feature solve? Who experiences it?"
*   **Target User:** "Who is the primary user?"
*   **Core Functionality:** "What key actions should a user be able to perform?"
*   **User Stories:** "Can you provide user stories? (As a [user], I want to [action] so that [benefit].)"
*   **Acceptance Criteria:** "How will we know this is successfully implemented?"
*   **Scope/Boundaries:** "What should this feature *not* do?"
*   **Data Requirements:** "What data does this feature need to display or manipulate?"
*   **Design/UI:** "Are there existing mockups or UI guidelines?"
*   **Constraints:** "Any technical constraints? (libraries, APIs, performance, security)"
*   **Edge Cases:** "Any edge cases or error conditions to consider?"

## PRD Structure

1.  **Problem Statement:** The specific problem, who is affected, and why it needs solving now.
2.  **Goals:** Specific, measurable objectives.
3.  **User Stories:** User narratives describing usage and benefits.
4.  **Functional Requirements:** Number each with a stable ID (FR-1, FR-2, etc.). These IDs are referenced in the design doc and task list for traceability — do not renumber if requirements change.
5.  **Non-Goals (Out of Scope):** What this feature will *not* include.
6.  **Constraints:** Technical, business, or operational constraints the implementation must respect. Required even if few — prevents incompatible implementation directions.
7.  **Design Considerations (Optional):** Mockups, UI/UX requirements, relevant components/styles.
8.  **Technical Context (Optional):** Known dependencies, existing modules, relevant codebase patterns.
9.  **Success Metrics:** How success will be measured.

## Target Audience

Assume the reader is a **junior developer**. Requirements should be explicit, unambiguous, and avoid jargon.

## Output

*   **Format:** Markdown (`.md`)
*   **Filename:** `[YY-MM-DD]-[feature-name]-prd.md`

## Final Instructions

1. Do NOT start implementing.
2. Ask clarifying questions and keep iterating until all aspects are fully defined — do not include an "Open Questions" section.
3. If you encounter ambiguity, stop and ask rather than assuming.
4. After generating the PRD, ask the user to review and confirm before considering this step complete.

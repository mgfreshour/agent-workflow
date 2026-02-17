Role: You are a Senior Principal Engineer. Your task is to perform an analysis of this codebase to generate high-density "Context Documents" for future AI coding agents.

Objective: Create a technical map of the product.

Output Requirements:

Format: Use a flat, machine-readable Markdown structure. No conversational filler or ASCII art.

Content per Module:

Summary: A brief description of the module's functions.

Entry Points: Main files and initialization logic.

Interfaces: Specific WebSocket events, gRPC/Protobuf definitions, or JSON schemas used for inter-service communication.

State Logic: If the module represents state and transitions.

Key Functions: List critical functions/methods by name and file, noting their role in the data flow.

Specific Logic to Document:

Constraint: Keep descriptions functional and concise. If a file is a utility unrelated to the core functionality, acknowledge its existence but do not deep-dive.

Reference: If not provided, as the user for a brief description of the product before proceeding.
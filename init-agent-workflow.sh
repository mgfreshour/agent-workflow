#!/bin/bash
#

echo "Initializing agent workflow files"
mkdir -p ./.agent

ln -s $HOME/src/agent-workflow/create-prd.md .agent/create-prd.md
ln -s $HOME/src/agent-workflow/design-architecture.md .agent/design-architecture.md
ln -s $HOME/src/agent-workflow/generate-tasks.md .agent/generate-tasks.md
ln -s $HOME/src/agent-workflow/process-task-list.md .agent/process-task-list.md

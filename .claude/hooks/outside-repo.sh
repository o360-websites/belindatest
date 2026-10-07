#!/usr/bin/env bash
# Asks the person before Claude writes a file outside this repository (for example into
# another repo cloned into the same chat). Files in this repo, /tmp and ~/.claude pass.
f=$(jq -r '.tool_input.file_path // .tool_input.notebook_path // empty')
[ -z "$f" ] && exit 0
f=$(realpath -m "$f")
case "$f" in
  "$CLAUDE_PROJECT_DIR"/*|/tmp/*|"$HOME"/.claude/*) exit 0 ;;
esac
jq -n --arg f "$f" --arg r "$(basename "$CLAUDE_PROJECT_DIR")" '{hookSpecificOutput: {hookEventName: "PreToolUse",
  permissionDecision: "ask",
  permissionDecisionReason: ("This file is outside this chat'"'"'s repository (" + $r + "): " + $f + ". Is this the right repository?")}}'

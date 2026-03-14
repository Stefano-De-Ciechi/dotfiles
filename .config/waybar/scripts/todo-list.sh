#!/bin/bash

COUNT=$(wc -l < ~/Documents/todo.md)
TODOS=$(cat ~/Documents/todo.md)

jq -nc --arg text "$COUNT" --arg tooltip "$TODOS" \
  '{text: $text, tooltip: $tooltip}'

# previous version that was breaking when todo file contained some double quotes ""
##!/bin/bash
#
#COUNT=$(wc -l < ~/Documents/todo.md)
#TODOS=$(cat ~/Documents/todo.md | head -c -1 - | sed -z 's/\n/\\n/g')
#
#printf '{"text": "%s", "tooltip": "%s"}\n' "$COUNT" "$TODOS"

#!/usr/bin/env bash

set -euo pipefail
printf 'Previewing contributed workflow files\n'
find .github/workflows -maxdepth 1 -name '*.yml' -print
printf 'Workflow preview completed successfully\n'

#!/bin/bash
TESTSDIR="$(dirname "$0")"
CMD="$TESTSDIR/../lnk-parse.pl"
HWID="$(uname -o) $(uname -m)"
HWID="${HWID//\//_}/$(hostname)"
RUN="$(date +"%Y-%m-%d %H-%M-%S %z")"
RUNDIR="$TESTSDIR/test-results/$HWID/$RUN"
mkdir -p "$RUNDIR"
(
	uname -a
	perl -V
) > "$RUNDIR/context.txt"
find . -iname "*.lnk" | while read file; do
	mkdir -p "$RUNDIR/$(dirname "$file")"
	"$CMD" "$file" > "$RUNDIR/$file.log" 2>&1
done


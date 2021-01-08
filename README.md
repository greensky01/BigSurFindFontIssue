# BigSurFindFontIssue

### Repro steps
1. Open project
2. Add a breakpoint at line 29 in main.m
3. Build and run

Results:
`po font` displays "ArialMT"

Expected:
Do `po font` should display "Arial-BoldMT"

# BigSurFindFontIssue

### Repro steps
1. Open project on MacOS 11.1
2. Add a breakpoint at line 29 in main.m
3. Build and run

Results:
`po font` displays "ArialMT"

Expected:
Do `po font` should display "Arial-BoldMT"

The above steps won't cause issue on macOS 10.15.

### Other cases
Comment/Uncomment line 14 or line 15, on 10.15 you would get Arial-ItalicMT, Arial-BoldMT or Arial-BoldItalicMT, while on 11.1, it's always Arial-BoldMT.

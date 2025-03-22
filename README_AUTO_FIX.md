# Norminette Auto-Fix

This is an extension to the 42 School Norminette that automatically fixes common formatting errors.

## What it does

The auto-fix functionality automatically corrects common formatting errors that the norminette detects, such as:

- Spacing issues (consecutive spaces, spaces around operators, etc.)
- Tab/space inconsistencies
- Parenthesis spacing
- Line ending spaces
- Empty line formatting
- And more...

## What it doesn't fix

The auto-fix functionality does not attempt to fix errors that would require significant code restructuring or that are specific to each student, such as:

- 42 Header errors (each student has a unique ID)
- Functions with too many lines
- Files with too many functions
- Functions with too many arguments
- Line length issues
- Structural code issues

## How to use

Simply add the `--fix` flag when running the norminette:

```bash
norminette --fix file.c
```

Or on a directory:

```bash
norminette --fix directory/
```

## How it works

1. The norminette first checks the code for errors as usual
2. If the `--fix` flag is provided, it attempts to fix the detected errors
3. After applying fixes, it re-runs the norminette to check if the fixes resolved the issues
4. It reports how many errors were fixed and how many remain

## Example

```
$ norminette --fix example.c
example.c: Fixed 12 of 15 errors
example.c: OK!

Total: Fixed 12 of 15 errors
Note: Some errors may require manual fixes.
```

## Limitations

- Some complex formatting issues may not be fixed correctly
- The auto-fix may not handle all edge cases
- Manual review is still recommended after using the auto-fix

## Contributing

If you find an issue with the auto-fix functionality or want to add support for fixing additional error types, please submit a pull request or open an issue.
# Norminette Auto-Fix Functionality

This document provides an overview of what the Norminette auto-fix script can automatically correct in your code and what requires manual intervention. Understanding these capabilities will help you effectively use the tool and maintain code quality.

## What the Auto-Fix Script Can Fix

The auto-fix functionality is designed to handle common formatting issues that can be automatically corrected without altering the logic of your code. These include:

- **Spacing Issues:**
  - Consecutive spaces are reduced to a single space.
  - Spaces around operators are adjusted for consistency.
  - Spaces after keywords and before/after parentheses are corrected.

- **Tab/Space Inconsistencies:**
  - Converts spaces to tabs or vice versa, depending on the style guide.

- **Parenthesis Spacing:**
  - Ensures proper spacing around parentheses, braces, and brackets.

- **Line Ending Spaces:**
  - Removes unnecessary spaces at the end of lines.

- **Empty Line Formatting:**
  - Removes or adds empty lines where appropriate to improve readability.

These fixes help maintain a consistent style and improve the readability of your code.

## What the Auto-Fix Script Cannot Fix

Some issues are beyond the scope of automatic correction and require manual intervention. These include:

- **42 Header Errors:**
  - Each student has a unique ID, and headers must be manually adjusted to include this information.

- **Complex Structural Issues:**
  - Functions with too many lines or arguments.
  - Files with too many functions.
  - Line length issues that require rethinking code structure.

- **Logical Errors:**
  - Any errors that affect the logic or functionality of the code cannot be automatically fixed.

- **Comments:**
  - Comments placed in invalid scopes or requiring specific formatting need manual adjustment.

## Why Some Issues Require Manual Fixes

The auto-fix tool focuses on formatting and style, which can be corrected without understanding the code's logic. However, structural and logical issues require a deeper understanding of the code's purpose and context, which is why they must be addressed manually. This ensures that the code remains functional and meets the project's requirements.

## Best Practices

- **Review Changes:** Always review the changes made by the auto-fix tool to ensure they align with your project's style guide.
- **Manual Adjustments:** Be prepared to make manual adjustments for complex issues that the tool cannot fix.
- **Consistent Style:** Use the tool regularly to maintain a consistent coding style across your project.

By understanding the capabilities and limitations of the Norminette auto-fix tool, you can effectively use it to improve your code's quality while being aware of when manual intervention is necessary.

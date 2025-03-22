#!/bin/bash

# This script demonstrates the auto-fix functionality of the norminette

# Make a copy of the test file
cp tests/auto_fix_test.c tests/auto_fix_test_original.c

echo "Running norminette on the original file (without auto-fix):"
python -m norminette tests/auto_fix_test.c

echo -e "\n\nNow running norminette with auto-fix:"
python -m norminette --fix tests/auto_fix_test.c

echo -e "\n\nShowing diff between original and fixed file:"
diff -u tests/auto_fix_test_original.c tests/auto_fix_test.c

# Restore the original file
cp tests/auto_fix_test_original.c tests/auto_fix_test.c
rm tests/auto_fix_test_original.c

echo -e "\n\nDemo completed. The test file has been restored to its original state."
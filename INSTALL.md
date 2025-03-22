# Installation Guide for Norminette with Auto-Fix

This guide will walk you through the process of installing and using the Norminette with the Auto-Fix functionality, from cloning the repository to running the fixer on your code.

## Prerequisites

- Git
- Python 3.6 or higher
- pip (Python package installer)
- virtualenv (recommended)

## Step 1: Clone the Repository

```bash
# Clone the repository
git clone https://github.com/42School/norminette.git

# Navigate to the norminette directory
cd norminette
```

## Step 2: Installation Options

You can install the norminette either globally or in a virtual environment.

### Option A: Global Installation (Recommended for Regular Use)

Install directly to your system for global access:

```bash
# Install the package globally
pip install .
```

### Option B: Using a Virtual Environment (Recommended for Development)

If you plan to modify the code or want to keep the installation isolated:

```bash
# Create a virtual environment
python -m venv venv

# Activate the virtual environment
# On macOS/Linux:
source venv/bin/activate
# On Windows:
# venv\Scripts\activate

# Install in the virtual environment
pip install -e .
```

## Step 3: Verify Installation

After installing using either option from Step 2, verify that the installation was successful:

```bash
# Check if norminette is installed correctly
norminette --version
```

You should see output showing the norminette version, Python version, and platform.

## Step 4: Using the Auto-Fix Functionality

### Basic Usage

To check a file for norm errors without fixing them:

```bash
norminette path/to/your/file.c
```

To check and automatically fix formatting errors:

```bash
norminette --fix path/to/your/file.c
```

### Running on Multiple Files or Directories

```bash
# Check and fix all .c and .h files in the current directory
norminette --fix .

# Check and fix specific files
norminette --fix file1.c file2.c header.h

# Check and fix all files in a directory
norminette --fix path/to/directory/
```

### Running the Demo

The repository includes a demo script that shows the auto-fix functionality in action:

```bash
# Make the script executable
chmod +x demo_auto_fix.sh

# Run the demo
./demo_auto_fix.sh
```

## Step 5: Understanding the Output

When running with the `--fix` flag, norminette will:

1. First check the code for errors
2. Attempt to fix the errors automatically
3. Report how many errors were fixed
4. Re-check the code to see if any errors remain

Example output:

```
example.c: Fixed 12 of 15 errors
example.c: OK!

Total: Fixed 12 of 15 errors
Note: Some errors may require manual fixes.
```

## What Gets Fixed Automatically

The auto-fix functionality can fix many common formatting errors, including:

- Spacing issues (consecutive spaces, spaces around operators)
- Tab/space inconsistencies
- Parenthesis spacing
- Line ending spaces
- Empty line formatting
- And more...

## What Doesn't Get Fixed

Some errors require manual intervention, such as:

- 42 Header errors (each student has a unique ID)
- Functions with too many lines
- Files with too many functions
- Functions with too many arguments
- Line length issues
- Structural code issues

## Troubleshooting

### Common Issues

1. **Permission denied when running the demo script**

   ```bash
   chmod +x demo_auto_fix.sh
   ```

2. **Norminette command not found**

   If you installed in a virtual environment, make sure it's activated:

   ```bash
   source venv/bin/activate
   ```

   If you installed globally, make sure the installation directory is in your PATH.
   You might need to use `pip install --user .` and ensure `~/.local/bin` is in your PATH.

3. **Auto-fix not working as expected**
   
   Some complex formatting issues may not be fixed correctly. Review the changes and make manual adjustments as needed.

### Getting Help

If you encounter any issues or have questions, please:

1. Check the README_AUTO_FIX.md file for more information about the auto-fix functionality
2. Open an issue on the GitHub repository
3. Consult the 42 School resources for norminette usage

## Uninstalling

### If you installed in a virtual environment:

```bash
# Deactivate the virtual environment
deactivate

# Remove the directory
rm -rf venv
```

### If you installed globally:

```bash
# Uninstall the package
pip uninstall norminette
```
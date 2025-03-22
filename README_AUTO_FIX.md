# Normie Helpline

This is an extension to the 42 School Norminette that automatically fixes common formatting errors.


## Install

Requires python3.8+ (3.8, 3.9, 3.10, 3.11)

### Directly inside your global commands

Install using pip.
```shell
python3 -m pip install --upgrade pip setuptools
python3 -m pip install norminette
```

Install using pipx.
```shell
sudo apt update
sudo apt install python3-setuptools
sudo apt install pipx
pipx install norminette
pipx ensurepath
```

Install using a virtual environment.
```shell
python3 -m venv $HOME/.venv
source $HOME/.venv/bin/activate
python3 -m pip install --upgrade pip setuptools
python3 -m pip install norminette
echo "export PATH=\$PATH:$HOME/.venv/bin" >> $HOME/.${SHELL##/bin/}rc
deactivate
```

To upgrade an existing install, use
```shell
python3 -m pip install --upgrade norminette
```

## Usage

- Runs on the current folder and any subfolder:

```
norminette
```

- Runs on the given filename(s):

```
norminette filename.[c/h]
```

- Prevents stopping on various blocking errors:

```
norminette -d
```

- Outputs all the debug logging:

```
norminette -dd
```

## Docker usage

```
docker build -t norminette .
cd ~/42/ft_printf
docker run --rm -v $PWD:/code norminette
```

If you encounter an error or an incorrect output, you can:
 - Open an issue on github
 - Post a message on the dedicated slack channel (#norminette-v3-beta)


Please try to include as much information as possible (the file on which it crashed, etc)

Feel free to do pull requests if you want to help as well. Make sure that run_test.sh properly runs after your modifications.

## Run for development

This new version uses poetry as a dependency manager.

If you want to contribute:

```shell
poetry install

# Run dev norminette
poetry run norminette

# Or... with virtual env
source .venv/bin/activate
norminette

# Run tests
poetry run pytest
```
# Regarding Normie Helpline

# >RTFM = EXPLAIN.md

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

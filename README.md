# Homebrew LSSH

This is the Homebrew tap for `lssh`, a simple SSH Connection Manager written in Python. It allows you to manage your SSH connections with ease.

## Prerequisites

Before using this script, ensure you have the following installed on your system:

- Python 3
- inquirer: You can install it using `pip install inquirer`
- sshpass: You can install it based on your operating system.

## Installation

To install `lssh` via Homebrew, follow these steps:

### Tap the Repository

First, tap the repository to get access to the `lssh` formula.

```sh
$ brew tap JamesStandbridge/homebrew-lssh
```

### Install LSSH

After tapping the repository, you can install `lssh` using the following command:

```bash
$ brew install lssh
```

## Usage

To use `lssh`, simply type `lssh` in your terminal. This will bring up the connection manager where you can select from saved connections or add new ones.

To add a new connection, use:

```bash
$ lssh --add
```

## Troubleshooting

If you encounter any issues during installation or while using `lssh`, here are some common troubleshooting steps:

### Command Not Found

If you get a `command not found` error after installation, try relinking:

```bash
$ brew link lssh
```

### Python Environment Issues

If `lssh` complains about Python not being found, ensure that Python 3 is installed on your system and that the shebang line in `lssh.py` points to the correct Python executable.

### Permission Issues

Ensure that `lssh.py` is executable. You may need to change the permissions:

```bash
$ chmod +x /path/to/lssh.py
```

Make sure to replace `/path/to/lssh.py` with the actual path to `lssh.py`.

## Updates

To update `lssh` to the latest version, run:

```bash
$ brew update
$ brew upgrade lssh
```

## Support

For support, issues, or feature requests, please open an issue on the GitHub repository.

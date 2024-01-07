# Homebrew Tap for LSSH

## Introduction

This repository is a Homebrew tap for `LSSH`, a command-line SSH Connection Manager. `LSSH` simplifies the process of managing SSH connections by allowing users to securely store, retrieve, and manage SSH connection details in an encrypted format.

## Installation

### Tapping the Repository

First, tap this repository to add it to your list of formulae:

```bash
brew tap JamesStandbridge/homebrew-lssh
```

### Installing LSSH

Once the repository is tapped, you can install `LSSH` using:

```bash
brew install lssh
```

This command will install `LSSH` along with its Python dependencies and `sshpass` for non-interactive SSH login.

## Usage

After installation, you can run `LSSH` using the `lssh` command:

bashCopy code

```bash
lssh --add # To add a new SSH connection
lssh --delete # To delete an existing SSH connection
lssh --init # To initialize the encrypted storage
```

For more detailed usage instructions, please refer to the [LSSH comand documentation](https://github.com/JamesStandbridge/lssh-command).

## Contributing

We welcome contributions to the `LSSH` formula. If you have suggestions for improvements or encounter any issues, please open an issue or submit a pull request in this repository.

## License

MIT

## Author

james.standbridge.git@gmail.com

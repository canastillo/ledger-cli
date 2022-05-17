# ledger-cli
This is a breakable toy. An activity for the Encora Apprenticeship. It's a small implementation of [ledger-cli](https://www.ledger-cli.org/), a tool for command-line accounting.

# Usage
1) Git clone this repo.
2) On a terminal, cd to the root directory of the project and run:
```
sh ./ledger-cli <command> -f <path-to-ledger-file>
```

# Commands

Supported commands are:

*Print*

Print transactions in a format readable by ledger

*Register*

Show all transactions with running total

*Help*

Print the usage of the cli tool


# What's missing?
- `!include` for importing files within files is supported (you can import your files from an index.ledger file)
- Flags are recognized but not all of them are processed
- Only the --file, -f flag is supported
- I'm still working on the format of register command
- Balance command isn't implemented yet 



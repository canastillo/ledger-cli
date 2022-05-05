#!/usr/bin/env bash

set -e
export LEDGER_WORKDIR=$(cd $(dirname $0) && pwd)

cli_help() {
    cli_name=${0##*/}
    echo "
        $cli_name
        Ledger CLI
        Version: $(cat $LEDGER_WORKDIR/VERSION)
        Usage: $cli_name [command]
        Commands:
        balance, bal    Show account balances
        register, reg   Show all transactions with running total
        print           Print transactions in a format readable by ledger
        *         Help
    "
  exit 1
}

case "$1" in
  balance|bal)
    "$LEDGER_WORKDIR/commands/balance" "$2" | tee -ia "$LEDGER_WORKDIR/balance_${2}.log"
    ;;
  *)
    cli_help
    ;;
esac

case "$1" in
  register|reg)
    "$LEDGER_WORKDIR/commands/register" "$2" | tee -ia "$LEDGER_WORKDIR/register_${2}.log"
    ;;
  *)
    cli_help
    ;;
esac

case "$1" in
  print)
    "$LEDGER_WORKDIR/commands/print" "$2" | tee -ia "$LEDGER_WORKDIR/print_${2}.log"
    ;;
  *)
    cli_help
    ;;
esac
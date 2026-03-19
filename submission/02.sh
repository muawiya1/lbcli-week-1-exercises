#!/usr/bin/env bash
bitcoin-cli -regtest getblockchaininfo | sed -n 's/.*"chain": "\([^"]*\)".*/\1/p'

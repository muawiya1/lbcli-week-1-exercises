# Write the bitcoin cli command to get the bitcoin node network name
bitcoin-cli -regtest getblockchaininfo | sed -n 's/.*"chain": "\([^"]*\)".*/\1/p'

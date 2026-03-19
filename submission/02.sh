# Write the bitcoin cli command to get the bitcoin node network name
bitcoin-cli -regtest getblockchaininfo | grep -o '"chain": "[^"]*' | cut -d '"' -f 4
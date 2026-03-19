# Check the total amount in the wallet.
# Mine some blocks on regtest to fund the wallet in order to make it > 0 i.e to have balance
WALLET_ADDR=$(bitcoin-cli -regtest -rpcwallet="builderswallet" getnewaddress)
bitcoin-cli -regtest generatetoaddress 101 "$WALLET_ADDR"

bitcoin-cli -regtest -rpcwallet="builderswallet" getbalance
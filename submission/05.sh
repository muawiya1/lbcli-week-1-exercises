# Check the total amount in the wallet.
# Mine some blocks on regtest to fund the wallet in order to make it > 0 i.e to have balance
#get address 
WALLET_ADDR=$(bitcoin-cli -regtest -rpcwallet="builderswallet" getnewaddress)

#mine block
bitcoin-cli -regtest generatetoaddress 101 "$WALLET_ADDR" > /dev/null

#get balance
bitcoin-cli -regtest -rpcwallet="builderswallet" getbalance
---
id: chain-run-sealer-node
title: Run Sealer Node
sidebar_label: Run Sealer Node
---

**Note: Sealer nodes help write transactions to the blockchain. You will need to be voted in to become a Sealer node.**

## With Geth

1. [Create an account](chain-address-setup.md#create-new-address) that will be the recipient of any transaction fees
2. Download the `geth` binary and `genesis.json` from the [Releases Page](https://github.com/gojoychain/releases/releases)
3. Init the node:

        $ ./geth --datadir /your/data/dir init genesis.json

4. Start the `geth` node (see [Chain ID](chain-metadata.md#chain-id) and [Bootnodes](chain-metadata.md#bootnodes)):

        // notes:
        // bootnodes should be comma-separated
        // RPC access is set for localhost only for security reasons
        // password file is just a plain text file with your password

        geth \
        --datadir /your/data/dir \
        --syncmode full \
        --networkid $NETWORK_ID \
        --nat=none \
        --targetgaslimit 4700000 \
        --rpc \
        --rpcaddr "127.0.0.1" \
        --rpccorsdomain "127.0.0.1" \
        --verbosity 4 \
        --mine \
        --bootnodes $BOOTNODES \
        --etherbase $YOUR_ACCOUNT_ADDRESS \
        --unlock $YOUR_ACCOUNT_ADDRESS \
        --password /path/to/pw/file

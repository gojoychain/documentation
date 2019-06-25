---
id: deploy-node-client
title: Run Client Node
sidebar_label: Run Client Node
---

## With Geth

1. Download the `geth` binary and `genesis.json` from the [Releases Page](https://github.com/gojoychain/releases/releases)
2. Init the node:

        $ ./geth --datadir /your/data/dir init genesis.json

3. Start the `geth` node (see [Chain ID](deploy-node-metadata.md#chain-id) and [Bootnodes](deploy-node-metadata.md#bootnodes)):

        // notes:
        // bootnodes should be comma-separated
        // rpccorsdomain/wsorigins are set so anyone can have access. please note this can be a security issue if your node will have an account attached to it.

        geth \
        --datadir /your/data/dir \
        --syncmode full \
        --networkid $NETWORK_ID \
        --nat=none \
        --targetgaslimit 4700000 \
        --rpc \
        --rpcaddr 0.0.0.0 \
        --rpccorsdomain "*" \
        --rpcapi db,debug,eth,net,web3 \
        --ws \
        --wsaddr 0.0.0.0 \
        --wsorigins "*" \
        --wsapi db,debug,eth,net,web3 \
        --verbosity 4 \
        --bootnodes $BOOTNODES

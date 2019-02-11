---
id: deploy-node-client-regular
title: Run Client node
sidebar_label: Run Client node
---

1. Download the `geth` binary and `genesis.json` from the [Releases Page](https://github.com/ghuchain/go-ghuchain/releases)
2. Init the node:

        $ ./geth --datadir /your/data/dir init genesis.json

3. Start the `geth` node (see [Metadata](deploy-node-metadata.md) for `networkid` and `bootnodes`):
        
        // notes:
        // bootnodes should be comma-separated
        // rpccorsdomain/wsorigins are set so anyone can have access

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

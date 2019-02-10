---
id: deploy-node-client-regular
title: Run Client node
sidebar_label: Run Client node
---

1. Download the `geth` binary and `genesis.json` from the [Releases Page](https://github.com/ghuchain/go-ghuchain/releases)
2. Init the node:

        $ ./geth --datadir /your/data/dir init genesis.json

3. Start the `geth` node (see [Metadata](#metadata) for `networkid` and `bootnodes`):
        
        // notes:
        // bootnodes should be comma-separated
        // rpccorsdomain/wsorigins are set so anyone can have access

        geth \
        --datadir /your/data/dir \
        --syncmode full \
        --networkid 8899 \
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
        --bootnodes enode://05b3a629e04b83add7f4433bbcecb29bf17e80c1bf86ef077ee58b3cb6355c80b1e619fabec10c5a2fd62ec86ca964e316765522ba7e6910a953d7696b9c2f9b@54.65.41.216:30301,enode://a7234e1d40afea7fd54cede92fd8315ed6814c9c596fcf5a2447443e48e1b2801e92db6e0803451f763a6c8e70297b628e2a1fa0689547d442d2986cc5e9fd58@54.176.185.116:30301

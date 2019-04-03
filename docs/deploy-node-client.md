---
id: deploy-node-client
title: Run Client Node
sidebar_label: Run Client Node
---

## With Geth
1. Download the `geth` binary and `genesis.json` from the [Releases Page](https://github.com/ghuchain/go-ghuchain-releases/releases)
2. Init the node:

        $ ./geth --datadir /your/data/dir init genesis.json

3. Start the `geth` node (see [Chain ID](deploy-node-metadata.md#chain-id) and [Bootnodes](deploy-node-metadata.md#bootnodes)):
        
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

## With Docker
### Setup
1. Install [Docker](https://docs.docker.com/)
2. Clone the [ghu-deployer](https://github.com/ghuchain/ghu-deployer) repo
3. `cd ghu-deployer/[mainnet|testnet]/client`
4. Create `.env` file. You need to specify: `CHAIN_ID, BOOTNODES` (see [Chain ID](deploy-node-metadata.md#chain-id) and [Bootnodes](deploy-node-metadata.md#bootnodes)). Do not use any quotes around strings. Example:

        CHAIN_ID=8899
        BOOTNODES=enode://05b3a629e04b83add7f4433bbcecb29bf17e80c1bf86ef077ee58b3cb6355c80b1e619fabec10c5a2fd62ec86ca964e316765522ba7e6910a953d7696b9c2f9b@54.65.41.216:30301,enode://a7234e1d40afea7fd54cede92fd8315ed6814c9c596fcf5a2447443e48e1b2801e92db6e0803451f763a6c8e70297b628e2a1fa0689547d442d2986cc5e9fd58@54.176.185.116:30301

### Start
```bash
$ cd ghu-deployer/[mainnet|testnet]/client
$ docker-compose up --build -d
```

### Stop
```bash
$ cd ghu-deployer/[mainnet|testnet]/client
$ docker-compose down
```
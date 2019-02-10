---
id: deploy-node-sealer-docker
title: Run Sealer node with Docker
sidebar_label: Run Sealer node with Docker
---

Sealer nodes help write transactions to the blockchain. You will need to be voted in to become a Sealer node.

## Setup
1. Clone the https://github.com/ghuchain/ghu-deployer repo
2. `cd ghu-deployer/[mainnet|testnet]/sealer`
2. Create `.env` file. You need to specify: `CHAIN_ID, ETHERBASE_ADDRESS, ACCOUNT_ADDRESS, ACCOUNT_PRIVATE_KEY, ACCOUNT_PASSWORD, BOOTNODES` (see [Metadata](#metadata)). Do not use any quotes around strings.

        CHAIN_ID=8899
        ETHERBASE_ADDRESS=0xYOUR_ADDRESS
        ACCOUNT_ADDRESS=0xYOUR_ADDRESS
        ACCOUNT_PRIVATE_KEY=YOUR_PRIVATE_KEY
        ACCOUNT_PASSWORD=YOUR_PASSWORD
        BOOTNODES=enode://05b3a629e04b83add7f4433bbcecb29bf17e80c1bf86ef077ee58b3cb6355c80b1e619fabec10c5a2fd62ec86ca964e316765522ba7e6910a953d7696b9c2f9b@54.65.41.216:30301,enode://a7234e1d40afea7fd54cede92fd8315ed6814c9c596fcf5a2447443e48e1b2801e92db6e0803451f763a6c8e70297b628e2a1fa0689547d442d2986cc5e9fd58@54.176.185.116:30301

## Start
```bash
$ cd ghu-deployer/[mainnet|testnet]/sealer
$ docker-compose up --build -d
```

## Stop
```bash
$ cd ghu-deployer/[mainnet|testnet]/sealer
$ docker-compose down
```

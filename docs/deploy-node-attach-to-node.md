---
id: deploy-node-attach-to-node
title: Attach To Node
sidebar_label: Attach To Node
---

## With Docker
1. Install [Docker](https://docs.docker.com/)
2. Clone the [ghu-deployer](https://github.com/ghuchain/ghu-deployer) repo
3. `cd ghu-deployer`
4. Find the docker container's ID you want to connect to:

        $ docker ps
        // copy the CONTAINER ID of the node you want to connect to
        
5. Attach using the attach.sh script:
        
        $ ./attach $CONTAINER_ID

## Without Docker
1. Download the `geth` binary from the [Releases Page](https://github.com/ghuchain/go-ghuchain-releases/releases)
2. You can attach via IPC, HTTP, or WS:

        $ geth attach ipc:/your/data/dir/geth.ipc
        $ geth attach http://127.0.0.1:8545         // default port: 8545
        $ geth attach ws://127.0.0.1:8546           // default port: 8546

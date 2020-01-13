---
id: chain-node-discovery
title: Node Discovery
sidebar_label: Node Discovery
---

## Static Nodes JSON

The optimal way to have your node [connect to the static network of nodes](https://github.com/ethereum/go-ethereum/wiki/Connecting-to-the-network#static-nodes) is to create a `static-nodes.json` file in your `geth` directory.

1. Create a new file called `static-nodes.json` in `<datadir>/geth/static-nodes.json`
2. Copy and paste all the [enode URLs](chain-metadata.md#enode-urls) to your `static-nodes.json` (make sure to format it in proper JSON format)
3. Save the file
4. Restart the node and it should automatically sync (on every reboot) with the nodes defined in the static nodes file!

## Add Peer

After launching your own Client or Sealer node, sometimes it takes a while for your node to discover the existing nodes and start syncing the blockchain. To speed things up, you can manually force your node to connect to another node by `enode address`.

**The enode address you should use `addPeer` with should be a Sealer/Client enode and not a Bootnode enode.**

1. [Attach a geth console instance](chain-attach-to-node.md) to your node
2. Copy the [Enode Address](chain-metadata.md#enode-urls) of the client node you want to connect with
3. Enter the following command in the geth console commandline:

        admin.addPeer('$FULL_ENODE_ADDRESS_WITH_IP_AND_PORT')

4. Your node should discover the existing node and start syncing!

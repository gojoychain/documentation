---
id: chain-node-discovery
title: Node Discovery
sidebar_label: Node Discovery
---

## Add Peer

After launching your own Client or Sealer node, sometimes it takes a while for your node to discover the existing nodes and start syncing the blockchain. To speed things up, you can manually force your node to connect to another node by `enode address`.

**The enode address you should use `addPeer` with should be a Sealer/Client enode and not a Bootnode enode.**

1. [Attach a geth console instance](chain-attach-to-node.md) to your node
2. Copy the [Enode Address](chain-metadata.md#enode-urls) of the client node you want to connect with
3. Enter the following command in the geth console commandline:

        admin.addPeer('$FULL_ENODE_ADDRESS_WITH_IP_AND_PORT')

4. Your node should discover the existing node and start syncing!

---
id: chain-attach-to-node
title: Attach To Node
sidebar_label: Attach To Node
---

## With Geth

1. Download the `geth` binary from the [Releases Page](https://github.com/gojoychain/releases/releases)
2. You can attach via IPC, HTTP, or WS:

        $ geth attach ipc:/your/data/dir/geth.ipc
        $ geth attach http://127.0.0.1:8545         // default port: 8545
        $ geth attach ws://127.0.0.1:8546           // default port: 8546

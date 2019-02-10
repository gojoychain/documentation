---
id: deploy-node-create-account
title: Create Account
sidebar_label: Create Account
---

An address is created usually to be used while running a node. If it's a Sealer node, you can use that address as the `Etherbase` in which any transaction fees your node seals will go to that address. If using it on a Client node, you could execute transactions with that address.

Download the latest `geth` binary from the [Releases Page](https://github.com/ghuchain/go-ghuchain/releases) and then run the following command:
```
$ ./geth account new --datadir /your/data/dir
Your new account is locked with a password. Please give a password. Do not forget this password.
Passphrase:
Repeat Passphrase:
Address: {0000000000000000000000000000000000000000} // your new address
```

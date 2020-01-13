---
id: chain-metadata
title: Metadata
sidebar_label: Metadata
---

## RPC URL

### Mainnet RPC URL

```text
https://api.gojoychain.com
```

### Testnet RPC URL

```text
https://testapi.gojoychain.com
```

## Chain ID

### Mainnet Chain ID

```text
18
```

### Testnet  Chain ID

```text
8899
```

## Enode URLs

Use these enode URLs when you want to connect to a peer for [node discovery](chain-node-discovery.md).

### Mainnet Enodes

```text
enode://c5b59391c1b69aeec7e6a994055e11712dbc1e292d4f5783ea40d016618aff8f3e8bc83dd37e42d5a671774ba5dc1d0c199641a8d49db42b20042aa477ef50d7@52.199.70.118:30303
enode://52307402551eef7fc7067fcb052b6b4113994d88ec8972de95673685eafe70a283023e8078b9cd28cf36eb5f1cf79c6f3dc04ed296d309de61c420490517330b@18.177.211.232:30303
enode://59177f3517497928c22c354cf86326390c991dcb22bf0936b6f711c660f47aca346c2d7adffc60a76141052e9b95c52eb8c30baba6a5bc217bc7a05ff2ae2166@18.178.61.255:30303
enode://356874be64d9e233a9a38fdb413be2e5256b2d082873731a137237589fe53d04f17f27f094820346c7a8a274675e90f0ff20f18edb37aa0d9fbcaa7ef9ad8003@18.177.53.59:30303
enode://8a01c2e288d625dac9725a590898dfc9c0aee1c9552fa9ed8105b19821a24849aaee7f53029583878ce74eb65abc779632f55cd9e1f6a72c65b50f1eac0277c9@52.199.185.194:30303
```

### Testnet Enodes

```text
enode://babaaa8dcf504f8ba4ab608a33d56d3c0905b30668883651557bbab768e9d45a74f8e3eba1037af97329c7fd1001568faea1a3ae8a149d711cecec300d305f75@52.199.70.118:40303
enode://b3e693cf7437b6971cb3acb4dd2c4220f059bbc47011d4db75e0b37c608bf39d936455ac4bd459b2564c37add8092ea9bacb917ca558df065e5570a9da85df33@18.177.211.232:40303
enode://7b4d29177ccd49256851790848a023869210a9e27e6bb637a35cdf711ebc55e35f9427c37722f7816996fe901795ba7ead307122c904c4b1dc122dd716abcb52@18.178.61.255:40303
```

## Bootnodes

Even though a bootnode has an enode address, they are not regular nodes. Their primary purpose is for node discovery. When [adding a peer](chain-node-discovery.md#add-peer), you should NOT be adding a bootnode enode address. Rather, you should add a [node's enode address](#enode-urls). Bootnodes should be added as a flag when starting your geth node.

### Mainnet

```text
enode://daacb9a4f063b06ee1b8524082004b6cd54f21aa56e0bad0e1610a10dc28ec0a95a7a4b75db40f8882cd0afbaac2288220215d85e54924527189d0842945dce2@52.199.152.20:30301
enode://19ddf4a078494c7b36ec4f416992928d34d523f8c636069fc8f1b8e0be97dc446229932cb50b9089c2ac6566b6c827cd3ef6ec3cc363210278333f61cbc66743@18.177.211.232:30301
enode://3b9a82d404e29a47dfb3266548921719522ec5d16c33ce84edca808c53a7bfff035cd0901c90552620d7a0213ec4651b08190f0ab7806a0c69164d0abf95ffe8@18.178.61.255:30301
```

### Testnet

```text
enode://05b3a629e04b83add7f4433bbcecb29bf17e80c1bf86ef077ee58b3cb6355c80b1e619fabec10c5a2fd62ec86ca964e316765522ba7e6910a953d7696b9c2f9b@52.199.152.20:40301
enode://a7234e1d40afea7fd54cede92fd8315ed6814c9c596fcf5a2447443e48e1b2801e92db6e0803451f763a6c8e70297b628e2a1fa0689547d442d2986cc5e9fd58@18.177.211.232:40301
```

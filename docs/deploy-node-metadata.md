---
id: deploy-node-metadata
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

Use these enode URLs when you want to connect to a peer for [node discovery](deploy-node-node-discovery.md).

### Mainnet Enodes

```text
enode://40365a9a18e5b583c168fa32e12f58058d64ac8d7ba98ba14ea1a5e16b4c43d8ea932cf8affb56b0ee2226a869d8b4b40ef506f5c61923ac44413b3a152a4b61@13.125.147.5:30303
enode://c5b59391c1b69aeec7e6a994055e11712dbc1e292d4f5783ea40d016618aff8f3e8bc83dd37e42d5a671774ba5dc1d0c199641a8d49db42b20042aa477ef50d7@52.199.70.118:30303
enode://4e5fcddcd8f3532ef04407be1f75776255f5cb3b00198948577cd59dc63da5ff0e6da10d199fc159c17bcc6570bf6cd4e2d6e2e295c02a18d30bab8076e72b3f@54.241.198.94:30303
enode://962b2d81ae199008b7256ba276c4c542512d2ad29e42a0388127e84b1ea157cc093bedc464c7660cbb2cd1136fd2e48ee178fe0d1e79f86d93b1ac4435d52683@35.180.246.169:30303
enode://8c1525688763c251bb57d0792677eaebef946c6aab6ac5c4537fb15cf0f1d1e72c9a2532033767a081543ff4c89296af91250dfb93bb6ecd72a827a21b9dd90b@13.235.21.174:30303
enode://6c8312670a670346d2a18849275de5b77e6a5c95adf55fb8d47aab0fd482b32b03c3a3e117cbf224ca668cfc8e754dbe5aa14de9be72026d44450e2834cacc11@18.204.145.66:30303
```

### Testnet Enodes

```text
enode://62c6bf360c2236abad1db45be1c197d5df4bf634f00a21f54ccd781e83bbde6a1c8865656526915730b5224fc75184f680557125b0e343cd06d3a5262ee7729d@13.125.147.5:40303
enode://babaaa8dcf504f8ba4ab608a33d56d3c0905b30668883651557bbab768e9d45a74f8e3eba1037af97329c7fd1001568faea1a3ae8a149d711cecec300d305f75@52.199.70.118:40303
enode://a48b088e3a3e4fc6e18aeaac03f7125bcd52a326bb44243517ac8aad0c36cee7b0cfe54a953f5f28852f1113daae4f1ae6ed2445361c0bf56a96436cefcaf2dc@54.241.198.94:40303
enode://9fe91b7ceaf8dab268241a6cfc5f35dcd6969518f8be0ddee5dd5e58d117bf61bde7c7b040ab6fd415951e95584bf6a2ab939b0978aba206cac72704ead411cb@35.180.246.169:40303
```

## Bootnodes

Even though a bootnode has an enode address, they are not regular nodes. Their primary purpose is for node discovery. When [adding a peer](deploy-node-node-discovery.md#add-peer), you should NOT be adding a bootnode enode address. Rather, you should add a [node's enode address](#enode-urls). Bootnodes should be added as a flag when starting your geth node.

### Mainnet

```text
enode://daacb9a4f063b06ee1b8524082004b6cd54f21aa56e0bad0e1610a10dc28ec0a95a7a4b75db40f8882cd0afbaac2288220215d85e54924527189d0842945dce2@52.199.152.20:30301
enode://19ddf4a078494c7b36ec4f416992928d34d523f8c636069fc8f1b8e0be97dc446229932cb50b9089c2ac6566b6c827cd3ef6ec3cc363210278333f61cbc66743@52.52.158.2:30301
enode://3b9a82d404e29a47dfb3266548921719522ec5d16c33ce84edca808c53a7bfff035cd0901c90552620d7a0213ec4651b08190f0ab7806a0c69164d0abf95ffe8@52.47.183.206:30301
```

### Testnet

```text
enode://05b3a629e04b83add7f4433bbcecb29bf17e80c1bf86ef077ee58b3cb6355c80b1e619fabec10c5a2fd62ec86ca964e316765522ba7e6910a953d7696b9c2f9b@54.65.41.216:30301
enode://a7234e1d40afea7fd54cede92fd8315ed6814c9c596fcf5a2447443e48e1b2801e92db6e0803451f763a6c8e70297b628e2a1fa0689547d442d2986cc5e9fd58@54.176.185.116:30301
```

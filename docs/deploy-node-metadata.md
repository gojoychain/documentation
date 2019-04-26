---
id: deploy-node-metadata
title: Metadata
sidebar_label: Metadata
---

## Chain ID
### Mainnet
```text
18
```

### Testnet
```text
8899
```

## Bootnodes
Even though a bootnode has an enode address, they are not regular nodes. Their primary purpose is for node discovery. When [adding a peer](deploy-node-node-discovery.md#add-peer), you should NOT be adding a bootnode enode address. Rather, you should add a [node's enode address](#client-nodes), whether it is a Sealer or Client node.

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

## Client Nodes
The Client nodes are the primary node to send transactions to. These enode addresses are the ones you should be using when [adding a peer](deploy-node-node-discovery.md#add-peer).

### Mainnet
Enode Address
```text
enode://a583e231f3f71d170988ed9f68bdfaf038eb07781aee84bf33f088501ac36ad071455c8baf42132e34f9f020c24f48202c8286840d81d26f768f05b721a6e00a@15.164.72.162:30303
```

### Testnet
Enode Address
```text
enode://1c331937d90923ab8cfbfdb43c730305e4aba272b8b489717ac01143be1f0db82561e845049b5591776985f9bfa705e758cc1ec09bf662015f97d394651952dc@13.209.165.92:30303
```

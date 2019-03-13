---
id: ans-usage
title: ANS Usage
sidebar_label: Usage
---

## Web3 1.0

### Setup Web3 Contract
See [metadata](ans-metadata.md) for the ABI and contract address.
```js
var ansContract = web3.eth.contract($ANS_ABI)
var ans = ansContract.at("$ANS_ADDRESS")
```

### Assign Name
Assigns a human-readable name to your address. Please note there is currently a `minimum length of 8` for all names unless the admin sets a smaller allowed limit for your address.
```js
// Sets `MyAssignedName` to the address I am making this call from
ans.assignName('MyAssignedName', (err,res) => console.log(res))
// prints out txid
// 0x9627e9cda00a0be8688bd7a613415d354bd087d61a3f71e512bcd86301c68fcd
```

### Set Min Limit
Admin-only call that allows a specific address to have a lower minimum name length.
```js
// Sets the min name limit for that address to 4
ans.setMinLimit('0xd5d087daabc73fc6cc5d9c1131b93acbd53a2428', 4, (err,res) => console.log(res))
// prints out txid
// 0x9627e9cda00a0be8688bd7a613415d354bd087d61a3f71e512bcd86301c68fcd
```

### Resolve Name
Resolves the already-assigned name to the address.
```js
ans.resolveName('MyAssignedName', (err,res) => console.log(res))
// prints out address assigned to name
// 0xd5d087daabc73fc6cc5d9c1131b93acbd53a2428
```

### Get Min Limit
Retrieves the minimum name length for a given address.
```js
ans.getMinLimit('0xd5d087daabc73fc6cc5d9c1131b93acbd53a2428', (err,res) => console.log(res.toString()))
// prints out minimum name length
// 8
```

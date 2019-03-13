---
id: ans-metadata
title: ANS Metadata
sidebar_label: Metadata
---

The `Address Name Service` contract is a contract meant to assign and resolve human-readable names to Ghuchain addresses. Similar to a DNS, the `ANS` service is meant to be used as a convenience address resolving layer when executing transactions.

## Address
Mainnet
```text
0xa04ca1e5a31df1648aa138c64b1d0a5107dd50b0
```

Testnet
```text
0x166327708cfaf76b9ff9584071df89aeffb32e5f
```

## ABI
```json
[{"constant": false,"inputs": [],"name": "renounceOwnership","outputs": [],"payable": false,"stateMutability": "nonpayable","type": "function"},{"constant": true,"inputs": [],"name": "owner","outputs": [{"name": "","type": "address"}],"payable": false,"stateMutability": "view","type": "function"},{"constant": true,"inputs": [],"name": "isOwner","outputs": [{"name": "","type": "bool"}],"payable": false,"stateMutability": "view","type": "function"},{"constant": false,"inputs": [{"name": "newOwner","type": "address"}],"name": "transferOwnership","outputs": [],"payable": false,"stateMutability": "nonpayable","type": "function"},{"inputs": [{"name": "owner","type": "address"}],"payable": false,"stateMutability": "nonpayable","type": "constructor"},{"anonymous": false,"inputs": [{"indexed": true,"name": "previousOwner","type": "address"},{"indexed": true,"name": "newOwner","type": "address"}],"name": "OwnershipTransferred","type": "event"},{"constant": false,"inputs": [{"name": "addr","type": "address"}],"name": "setStorageAddress","outputs": [],"payable": false,"stateMutability": "nonpayable","type": "function"},{"constant": false,"inputs": [{"name": "name","type": "string"}],"name": "assignName","outputs": [{"name": "success","type": "bool"}],"payable": false,"stateMutability": "nonpayable","type": "function"},{"constant": false,"inputs": [{"name": "addr","type": "address"},{"name": "minLimit","type": "uint8"}],"name": "setMinLimit","outputs": [{"name": "success","type": "bool"}],"payable": false,"stateMutability": "nonpayable","type": "function"},{"constant": false,"inputs": [{"name": "newOwner","type": "address"}],"name": "transferStorageOwnership","outputs": [{"name": "success","type": "bool"}],"payable": false,"stateMutability": "nonpayable","type": "function"},{"constant": false,"inputs": [],"name": "renounceStorageOwnership","outputs": [{"name": "success","type": "bool"}],"payable": false,"stateMutability": "nonpayable","type": "function"},{"constant": true,"inputs": [{"name": "name","type": "string"}],"name": "resolveName","outputs": [{"name": "resolved","type": "address"}],"payable": false,"stateMutability": "view","type": "function"},{"constant": true,"inputs": [{"name": "addr","type": "address"}],"name": "getMinLimit","outputs": [{"name": "limit","type": "uint8"}],"payable": false,"stateMutability": "view","type": "function"}]
```

## Interface
```text
function assignName(string name) external returns (bool success)
function setMinLimit(address addr, uint8 minLimit) external onlyOwner returns (bool success)
function transferStorageOwnership(address newOwner) external onlyOwner returns (bool success)
function renounceStorageOwnership() external onlyOwner returns (bool success) 
function resolveName(string name) external view returns (address resolved)
function getMinLimit(address addr) external view returns (uint8 limit)
```

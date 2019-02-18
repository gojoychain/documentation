---
id: grc223-create-new-token
title: Create New Token
sidebar_label: Create New Token
---

## Using Web3 (with Metamask)
1. Make sure you have [Metamask](connect-to-node-metamask.md) installed and configured
2. Navigate to https://abi.hashex.org/
3. Copy the following in the box `Enter your contract's ABI to auto-parse`:

        [{"anonymous": false,"inputs": [{"indexed": true,"name": "tokenAddress","type": "address"},{"indexed": false,"name": "name","type": "string"},{"indexed": false,"name": "symbol","type": "string"},{"indexed": false,"name": "decimals","type": "uint8"},{"indexed": false,"name": "totalSupply","type": "uint256"},{"indexed": false,"name": "owner","type": "address"}],"name": "GRC223PreMintedCreated","type": "event"},{"constant": false,"inputs": [{"name": "name","type": "string"},{"name": "symbol","type": "string"},{"name": "decimals","type": "uint8"},{"name": "totalSupply","type": "uint256"},{"name": "owner","type": "address"}],"name": "createGRC223PreMinted","outputs": [{"name": "tokenAddress","type": "address"}],"payable": false,"stateMutability": "nonpayable","type": "function"}]

4. Click the `Parse` button
5. Under the `Function type` dropdown, select `createGRC223PreMinted`
6. Enter the required 5 fields: `name, symbol, decimals, totalSupply, owner`
    - name: Name of your new token, e.g. `Test Token`
    - symbol: Symbol of your new token, e.g. `TTT`
    - decimals: Number of decimals for the new token, e.g. `8`
    - totalSupply: Total supply of tokens. This needs to be in the lowest denomination of the token. e.g. If you want to create 1 million tokens, you will need to have `1000000` + the number decimals as zeros which is 8 in this example (`00000000`) = `100000000000000`.
    - owner: Address which will have all the tokens when creating it, e.g. `0xD5D087daABC73Fc6Cc5D9C1131b93ACBD53A2428`
7. Click on the `Copy` button
8. Open a new browser tab and navigate to https://google.com
9. In the Chrome menu, select `View` > `Developer` > `Developer Tools`
10. Click on the `Console` tab in the Developer screen
11. Enter the following in the Developer screen console.

    - The `to` field should be the [GRC223 Factory Address](grc223-metadata.md).
    - The `data` field should be the entire `ABI-encoded output` at https://abi.hashex.org/ with the hex prefix (0x) in front.

        ```js
        web3.eth.sendTransaction({
            from: web3.eth.accounts[0],
            to: "0xFB51d9B5fd3e1D2F3F236BF4daD2a89065515B00", 
            data: "0x780102d200000000000000000000000000000000000000000000000000000000000000a000000000000000000000000000000000000000000000000000000000000000e0000000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000005af3107a4000000000000000000000000000d5d087daabc73fc6cc5d9c1131b93acbd53a2428000000000000000000000000000000000000000000000000000000000000000a5465737420546f6b656e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000035453540000000000000000000000000000000000000000000000000000000000" 
        }, (err, res) => console.log(res))
        ```

12. Press `Enter` and you should have a popup screen from Metamask to confirm the transaction
13. Once confirmed, your new GRC223 will be created and deployed on the blockchain!

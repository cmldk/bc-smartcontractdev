## Truffle Suite kullanarak Ropsten Test Network üzerinde ERC20 Token örneği
### Gereksinimler
- **NodeJS v12.16.1 >**

- **Truffle v5.1.61 >**
    > `npm install -g truffle`
    > 
    > `truffle init`

- **HDWalletProvider**
    > `npm install @truffle/hdwallet-provider`

- **MetaMask**

### Başlarken
Oluşturduğumuz örnek token için Openzeppelin tarafından oluşturulan <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.0/contracts/token/ERC20/ERC20.sol" target="_blank">ERC20</a> standart kontrat örneğini kullanıyoruz. Buna ek olarak önceden <a href="https://github.com/trufflesuite/truffle/tree/master/packages/hdwallet-provider" target="_blank">**HDWalletProvider**</a> için gerekli olan bilgileri *secrets.json* dosyası oluşturarak tutabilirsiniz.
  > `{
    "mnemonic": "planet auto sign choice ...",
    "projectId": "305c137050..."
    }`
    
### Truffle Test
> `../bc-smartcontractdev > truffle migrate --network ropsten`

> `truffle(ropsten)> CDToken = await CDToken.deployed()`

> `truffle(ropsten)> CDToken.transfer('address','amount')`

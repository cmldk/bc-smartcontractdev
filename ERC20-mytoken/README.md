- [TR](#truffle-suite-kullanarak-ropsten-test-network-üzerinde-erc20-token-örneği)
- [ENG](#a-decentralized-resource-management-system-proposal-for-disasters-ngo-rmsd)
----------------------------------

## Truffle Suite kullanarak Ropsten Test Network üzerinde ERC20 Token örneği
ERC20 en önemli Ethereum token'larından biri olarak bilinir. Teknik standart olarak ortaya çıkmıştır ve Ethereum'daki bütün akıllı sözleşmeler için token uygulaması olarak kullanılabilir. Oluşturulan token'lar gönderilebilir veya alınabilir. Gerçekleştirdiğimiz örnek token için **OpenZeppelin** tarafından oluşturulan <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.0/contracts/token/ERC20/ERC20.sol" target="_blank">ERC20</a> standart kontrat örneğini kullanıyoruz. 

### Gereksinimler
- **NodeJS v12.16.1 >**

- **Truffle Suite**
    > `npm install -g truffle`

- **HDWalletProvider**
    > `npm install @truffle/hdwallet-provider`

- **MetaMask**
    > MetaMask adresinizi kullanarak <a href="https://faucet.ropsten.be/" target="_blank">bu linkten</a> gerekli olan Test Ether talebinde bulunabilirsiniz. (Gelmesi biraz sürebilir)

- **Infura Hesabı**
    > <a href="https://infura.io/" target="_blank">Infura.io</a> üzerinde oluşturduğunuz hesap ile bir proje kurmanız gerekiyor.
    
### Başlarken
Bu repo kapsamında önceden <a href="https://github.com/trufflesuite/truffle/tree/master/packages/hdwallet-provider" target="_blank">HDWalletProvider</a> için gerekli olan bilgileri *secrets.json* dosyası üzerinde düzenlemeniz gerekiyor. Gerekli olan bilgiler Infura.io üzerinde oluşturduğunuz proje id'niz (projectId) ve MetaMask hesabınızın özel anahtarıdır (mnemonic).
  > `{
    "mnemonic": "spot visa scrap autumn ...",
    "projectId": "6fe77efdff..."
    }`
    
### Truffle Test
Repo kapsamında oluşturduğumuz token'ı gereksinimleri karşıladıktan sonra terminal üzerinde deploy işlemini gerçekleştirebiliriz.
> `../bc-smartcontractdev/ERC20-mytoken > npm install`

> `../bc-smartcontractdev/ERC20-mytoken > truffle migrate --network ropsten`

Ropsten Test Network üzerinde oluşturduğumuz smart contract örneğindeki fonksiyonları çağırıp kullanabiliriz.
> `../bc-smartcontractdev/ERC20-mytoken > truffle console --network ropsten`

> `truffle(ropsten)> CDToken = await CDToken.deployed()`

> `truffle(ropsten)> CDToken.transfer('address','amount')`

*Transaction Hash: <a href="https://ropsten.etherscan.io/tx/0x5e532a0d97354b6b8881cf5d726288c7f428afda6e4ec0ada839eb7d356667df" target="_blank" >0x5e532a0d97354b6b8881cf5d726288c7f428afda6e4ec0ada839eb7d356667df</a>*

----------------------------------

## ERC20 Token Example on Ropsten Test Network using Truffle Suite
For this example, we will use <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.0/contracts/token/ERC20/ERC20.sol" target="_blank">ERC20</a> standard contract that is crated by **OpenZeppelin**. 

### Requirements
- **NodeJS v12.16.1 >**

- **Truffle Suite**
    > `npm install -g truffle`

- **HDWalletProvider**
    > `npm install @truffle/hdwallet-provider`

- **MetaMask**
    > We need a test Ether for the transactions on Testnet. We can use this <a href="https://faucet.ropsten.be/" target="_blank">address</a> to get test Ether.

- **Infura Account**
    > We need a created project on <a href="https://infura.io/" target="_blank">Infura.io</a> to get projectID.
    
### Starting
We have to keep the parameters that are required for <a href="https://github.com/trufflesuite/truffle/tree/master/packages/hdwallet-provider" target="_blank">HDWalletProvider</a> on *secrets.json* file. Params are mnemonic (seed phrase) of your MetaMask account and Infura project ID that was created.
You can also use private key value of your MetaMask account instead of mnemonic.
  > `{
    "mnemonic": "spot visa scrap autumn ...",
    "projectId": "6fe77efdff..."
    }`
    
### Truffle Test
After requirements are done, we can deploy the contract to Testnet using the terminal.
> `../bc-smartcontractdev/ERC20-mytoken > npm install`

> `../bc-smartcontractdev/ERC20-mytoken > truffle migrate --network ropsten`

Now, we can call the contract functions on Ropsten Test Network.
> `../bc-smartcontractdev/ERC20-mytoken > truffle console --network ropsten`

> `truffle(ropsten)> CDToken = await CDToken.deployed()`

> `truffle(ropsten)> CDToken.transfer('address','amount')`

*Transaction Hash: <a href="https://ropsten.etherscan.io/tx/0x5e532a0d97354b6b8881cf5d726288c7f428afda6e4ec0ada839eb7d356667df" target="_blank" >0x5e532a0d97354b6b8881cf5d726288c7f428afda6e4ec0ada839eb7d356667df</a>*

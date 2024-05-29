## iebs_Faillapop_DAO.sol
![image](https://github.com/richpob/AuditoriaProyectoFinal/assets/133718913/ae57bf6b-3222-4023-a2f7-f4cd63636c5f)

## iebs_Faillapop_shop
![image](https://github.com/richpob/AuditoriaProyectoFinal/assets/133718913/5e54b7c1-ebba-434e-acb7-d40d0c5783a3)

## iebs_Faillapop_vault.sol
![image](https://github.com/richpob/AuditoriaProyectoFinal/assets/133718913/d1bb33fb-af51-499a-b842-75c2c365919f)

## VS Code - Foundry
![image](https://github.com/richpob/AuditoriaProyectoFinal/assets/133718913/e1c983de-e758-4676-bf15-fc6133c8542c)


## iebs_Faillapop_vault.sol
### Sūrya's Description Report

 Files Description Table


|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/iebs_Faillapop_vault.sol | 081c4d8f0dd9b6828ecc542e16aacaddb2b2aa05 |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/iebs_Faillapop_DAO.sol | af2584787e3c88df4bd3d4e017628acac370be5b |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/interfaces/IFP_Shop.sol | bb8b71ea767965e256df51aa9320464da3bcd830 |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/interfaces/IFP_NFT.sol | efa8ffd838bc3ff48c407e720c4bba203e1abfe6 |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/iebs_Faillapop_shop.sol | c22c73d4168bf92884448648c5eb266a8edf212e |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/interfaces/IFP_DAO.sol | f4db60ac3af9b714df4baa99062a9792c8751c97 |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/interfaces/IFP_Vault.sol | 5e8655daf750ab07298a2ebb91ceab0a8fb31236 |


 Contracts Description Table


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **FP_Vault** | Implementation | AccessControl |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | doStake | External ❗️ |  💵 |NO❗️ |
| └ | doUnstake | External ❗️ | 🛑  | enoughStaked |
| └ | doLock | External ❗️ | 🛑  | onlyRole enoughStaked |
| └ | doUnlock | External ❗️ | 🛑  | onlyRole |
| └ | doSlash | External ❗️ | 🛑  | onlyRole |
| └ | updateConfig | External ❗️ | 🛑  | onlyRole |
| └ | claimRewards | External ❗️ | 🛑  |NO❗️ |
| └ | distributeSlashing | Internal 🔒 | 🛑  | |
| └ | vaultBalance | Public ❗️ |   |NO❗️ |
| └ | userBalance | Public ❗️ |   |NO❗️ |
| └ | userLockedBalance | Public ❗️ |   |NO❗️ |
||||||
| **FP_DAO** | Implementation |  |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | updateConfig | External ❗️ | 🛑  | isAuthorized |
| └ | castVote | External ❗️ | 🛑  |NO❗️ |
| └ | newDispute | External ❗️ | 🛑  | onlyShop |
| └ | endDispute | External ❗️ | 🛑  |NO❗️ |
| └ | cancelDispute | External ❗️ | 🛑  | onlyShop |
| └ | checkLottery | External ❗️ | 🛑  |NO❗️ |
| └ | lotteryNFT | Internal 🔒 | 🛑  | |
| └ | buyerWins | Internal 🔒 | 🛑  | |
| └ | sellerWins | Internal 🔒 | 🛑  | |
| └ | calcVotingPower | Internal 🔒 | 🛑  | |
| └ | query_dispute | Public ❗️ |   |NO❗️ |
||||||
| **IFP_Shop** | Interface |  |||
| └ | doBuy | External ❗️ |  💵 |NO❗️ |
| └ | disputeSale | External ❗️ | 🛑  |NO❗️ |
| └ | itemReceived | External ❗️ | 🛑  |NO❗️ |
| └ | endDispute | External ❗️ | 🛑  |NO❗️ |
| └ | newSale | External ❗️ | 🛑  |NO❗️ |
| └ | modifySale | External ❗️ | 🛑  |NO❗️ |
| └ | setVacationMode | External ❗️ | 🛑  |NO❗️ |
| └ | disputedSaleReply | External ❗️ | 🛑  |NO❗️ |
| └ | returnItem | External ❗️ | 🛑  |NO❗️ |
| └ | removeMaliciousSale | External ❗️ | 🛑  |NO❗️ |
||||||
| **IFP_NFT** | Interface |  |||
| └ | totalPowersellers | External ❗️ |   |NO❗️ |
| └ | checkPrivilege | External ❗️ |   |NO❗️ |
| └ | mintCoolNFT | External ❗️ | 🛑  |NO❗️ |
||||||
| **FP_Shop** | Implementation | AccessControl |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | doBuy | External ❗️ |  💵 |NO❗️ |
| └ | disputeSale | External ❗️ | 🛑  |NO❗️ |
| └ | itemReceived | External ❗️ | 🛑  |NO❗️ |
| └ | endDispute | External ❗️ | 🛑  |NO❗️ |
| └ | newSale | External ❗️ | 🛑  | notBlacklisted |
| └ | modifySale | External ❗️ | 🛑  |NO❗️ |
| └ | cancelActiveSale | External ❗️ | 🛑  |NO❗️ |
| └ | setVacationMode | External ❗️ | 🛑  |NO❗️ |
| └ | disputedSaleReply | External ❗️ | 🛑  |NO❗️ |
| └ | returnItem | External ❗️ | 🛑  | onlyRole |
| └ | removeMaliciousSale | External ❗️ | 🛑  | onlyRole |
| └ | closeSale | Public ❗️ | 🛑  |NO❗️ |
| └ | blacklist | Internal 🔒 | 🛑  | |
| └ | reimburse | Internal 🔒 | 🛑  | |
| └ | openDispute | Internal 🔒 | 🛑  | |
| └ | closeDispute | Internal 🔒 | 🛑  | |
| └ | query_dispute | Public ❗️ |   |NO❗️ |
| └ | query_sale | Public ❗️ |   |NO❗️ |
||||||
| **IFP_DAO** | Interface |  |||
| └ | updateConfig | External ❗️ | 🛑  |NO❗️ |
| └ | castVote | External ❗️ | 🛑  |NO❗️ |
| └ | newDispute | External ❗️ | 🛑  |NO❗️ |
| └ | endDispute | External ❗️ | 🛑  |NO❗️ |
| └ | cancelDispute | External ❗️ | 🛑  |NO❗️ |
| └ | checkLottery | External ❗️ | 🛑  |NO❗️ |
||||||
| **IFP_Vault** | Interface |  |||
| └ | doStake | External ❗️ |  💵 |NO❗️ |
| └ | doUnstake | External ❗️ | 🛑  |NO❗️ |
| └ | doLock | External ❗️ | 🛑  |NO❗️ |
| └ | doUnlock | External ❗️ | 🛑  |NO❗️ |
| └ | doSlash | External ❗️ | 🛑  |NO❗️ |
| └ | updateConfig | External ❗️ | 🛑  |NO❗️ |
| └ | claimRewards | External ❗️ | 🛑  |NO❗️ |


 Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |

### Slither



## iebs_Faillapop_shop
### Sūrya's Description Report

 Files Description Table


|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/iebs_Faillapop_shop.sol | c22c73d4168bf92884448648c5eb266a8edf212e |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/iebs_Faillapop_DAO.sol | af2584787e3c88df4bd3d4e017628acac370be5b |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/interfaces/IFP_Shop.sol | bb8b71ea767965e256df51aa9320464da3bcd830 |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/interfaces/IFP_NFT.sol | efa8ffd838bc3ff48c407e720c4bba203e1abfe6 |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/interfaces/IFP_DAO.sol | f4db60ac3af9b714df4baa99062a9792c8751c97 |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/interfaces/IFP_Vault.sol | 5e8655daf750ab07298a2ebb91ceab0a8fb31236 |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/iebs_Faillapop_vault.sol | 081c4d8f0dd9b6828ecc542e16aacaddb2b2aa05 |


 Contracts Description Table


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **FP_Shop** | Implementation | AccessControl |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | doBuy | External ❗️ |  💵 |NO❗️ |
| └ | disputeSale | External ❗️ | 🛑  |NO❗️ |
| └ | itemReceived | External ❗️ | 🛑  |NO❗️ |
| └ | endDispute | External ❗️ | 🛑  |NO❗️ |
| └ | newSale | External ❗️ | 🛑  | notBlacklisted |
| └ | modifySale | External ❗️ | 🛑  |NO❗️ |
| └ | cancelActiveSale | External ❗️ | 🛑  |NO❗️ |
| └ | setVacationMode | External ❗️ | 🛑  |NO❗️ |
| └ | disputedSaleReply | External ❗️ | 🛑  |NO❗️ |
| └ | returnItem | External ❗️ | 🛑  | onlyRole |
| └ | removeMaliciousSale | External ❗️ | 🛑  | onlyRole |
| └ | closeSale | Public ❗️ | 🛑  |NO❗️ |
| └ | blacklist | Internal 🔒 | 🛑  | |
| └ | reimburse | Internal 🔒 | 🛑  | |
| └ | openDispute | Internal 🔒 | 🛑  | |
| └ | closeDispute | Internal 🔒 | 🛑  | |
| └ | query_dispute | Public ❗️ |   |NO❗️ |
| └ | query_sale | Public ❗️ |   |NO❗️ |
||||||
| **FP_DAO** | Implementation |  |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | updateConfig | External ❗️ | 🛑  | isAuthorized |
| └ | castVote | External ❗️ | 🛑  |NO❗️ |
| └ | newDispute | External ❗️ | 🛑  | onlyShop |
| └ | endDispute | External ❗️ | 🛑  |NO❗️ |
| └ | cancelDispute | External ❗️ | 🛑  | onlyShop |
| └ | checkLottery | External ❗️ | 🛑  |NO❗️ |
| └ | lotteryNFT | Internal 🔒 | 🛑  | |
| └ | buyerWins | Internal 🔒 | 🛑  | |
| └ | sellerWins | Internal 🔒 | 🛑  | |
| └ | calcVotingPower | Internal 🔒 | 🛑  | |
| └ | query_dispute | Public ❗️ |   |NO❗️ |
||||||
| **IFP_Shop** | Interface |  |||
| └ | doBuy | External ❗️ |  💵 |NO❗️ |
| └ | disputeSale | External ❗️ | 🛑  |NO❗️ |
| └ | itemReceived | External ❗️ | 🛑  |NO❗️ |
| └ | endDispute | External ❗️ | 🛑  |NO❗️ |
| └ | newSale | External ❗️ | 🛑  |NO❗️ |
| └ | modifySale | External ❗️ | 🛑  |NO❗️ |
| └ | setVacationMode | External ❗️ | 🛑  |NO❗️ |
| └ | disputedSaleReply | External ❗️ | 🛑  |NO❗️ |
| └ | returnItem | External ❗️ | 🛑  |NO❗️ |
| └ | removeMaliciousSale | External ❗️ | 🛑  |NO❗️ |
||||||
| **IFP_NFT** | Interface |  |||
| └ | totalPowersellers | External ❗️ |   |NO❗️ |
| └ | checkPrivilege | External ❗️ |   |NO❗️ |
| └ | mintCoolNFT | External ❗️ | 🛑  |NO❗️ |
||||||
| **IFP_DAO** | Interface |  |||
| └ | updateConfig | External ❗️ | 🛑  |NO❗️ |
| └ | castVote | External ❗️ | 🛑  |NO❗️ |
| └ | newDispute | External ❗️ | 🛑  |NO❗️ |
| └ | endDispute | External ❗️ | 🛑  |NO❗️ |
| └ | cancelDispute | External ❗️ | 🛑  |NO❗️ |
| └ | checkLottery | External ❗️ | 🛑  |NO❗️ |
||||||
| **IFP_Vault** | Interface |  |||
| └ | doStake | External ❗️ |  💵 |NO❗️ |
| └ | doUnstake | External ❗️ | 🛑  |NO❗️ |
| └ | doLock | External ❗️ | 🛑  |NO❗️ |
| └ | doUnlock | External ❗️ | 🛑  |NO❗️ |
| └ | doSlash | External ❗️ | 🛑  |NO❗️ |
| └ | updateConfig | External ❗️ | 🛑  |NO❗️ |
| └ | claimRewards | External ❗️ | 🛑  |NO❗️ |
||||||
| **FP_Vault** | Implementation | AccessControl |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | doStake | External ❗️ |  💵 |NO❗️ |
| └ | doUnstake | External ❗️ | 🛑  | enoughStaked |
| └ | doLock | External ❗️ | 🛑  | onlyRole enoughStaked |
| └ | doUnlock | External ❗️ | 🛑  | onlyRole |
| └ | doSlash | External ❗️ | 🛑  | onlyRole |
| └ | updateConfig | External ❗️ | 🛑  | onlyRole |
| └ | claimRewards | External ❗️ | 🛑  |NO❗️ |
| └ | distributeSlashing | Internal 🔒 | 🛑  | |
| └ | vaultBalance | Public ❗️ |   |NO❗️ |
| └ | userBalance | Public ❗️ |   |NO❗️ |
| └ | userLockedBalance | Public ❗️ |   |NO❗️ |


 Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |

### Slither



## iebs_Faillapop_DAO.sol
Sūrya's Description Report

 Files Description Table


|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/iebs_Faillapop_DAO.sol | af2584787e3c88df4bd3d4e017628acac370be5b |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/interfaces/IFP_Shop.sol | bb8b71ea767965e256df51aa9320464da3bcd830 |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/interfaces/IFP_NFT.sol | efa8ffd838bc3ff48c407e720c4bba203e1abfe6 |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/iebs_Faillapop_shop.sol | c22c73d4168bf92884448648c5eb266a8edf212e |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/interfaces/IFP_DAO.sol | f4db60ac3af9b714df4baa99062a9792c8751c97 |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/interfaces/IFP_Vault.sol | 5e8655daf750ab07298a2ebb91ceab0a8fb31236 |
| /home/ubuntu/Documents/GitHub/AuditoriaProyectoFinal/src/iebs_Faillapop_vault.sol | 081c4d8f0dd9b6828ecc542e16aacaddb2b2aa05 |


 Contracts Description Table


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **FP_DAO** | Implementation |  |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | updateConfig | External ❗️ | 🛑  | isAuthorized |
| └ | castVote | External ❗️ | 🛑  |NO❗️ |
| └ | newDispute | External ❗️ | 🛑  | onlyShop |
| └ | endDispute | External ❗️ | 🛑  |NO❗️ |
| └ | cancelDispute | External ❗️ | 🛑  | onlyShop |
| └ | checkLottery | External ❗️ | 🛑  |NO❗️ |
| └ | lotteryNFT | Internal 🔒 | 🛑  | |
| └ | buyerWins | Internal 🔒 | 🛑  | |
| └ | sellerWins | Internal 🔒 | 🛑  | |
| └ | calcVotingPower | Internal 🔒 | 🛑  | |
| └ | query_dispute | Public ❗️ |   |NO❗️ |
||||||
| **IFP_Shop** | Interface |  |||
| └ | doBuy | External ❗️ |  💵 |NO❗️ |
| └ | disputeSale | External ❗️ | 🛑  |NO❗️ |
| └ | itemReceived | External ❗️ | 🛑  |NO❗️ |
| └ | endDispute | External ❗️ | 🛑  |NO❗️ |
| └ | newSale | External ❗️ | 🛑  |NO❗️ |
| └ | modifySale | External ❗️ | 🛑  |NO❗️ |
| └ | setVacationMode | External ❗️ | 🛑  |NO❗️ |
| └ | disputedSaleReply | External ❗️ | 🛑  |NO❗️ |
| └ | returnItem | External ❗️ | 🛑  |NO❗️ |
| └ | removeMaliciousSale | External ❗️ | 🛑  |NO❗️ |
||||||
| **IFP_NFT** | Interface |  |||
| └ | totalPowersellers | External ❗️ |   |NO❗️ |
| └ | checkPrivilege | External ❗️ |   |NO❗️ |
| └ | mintCoolNFT | External ❗️ | 🛑  |NO❗️ |
||||||
| **FP_Shop** | Implementation | AccessControl |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | doBuy | External ❗️ |  💵 |NO❗️ |
| └ | disputeSale | External ❗️ | 🛑  |NO❗️ |
| └ | itemReceived | External ❗️ | 🛑  |NO❗️ |
| └ | endDispute | External ❗️ | 🛑  |NO❗️ |
| └ | newSale | External ❗️ | 🛑  | notBlacklisted |
| └ | modifySale | External ❗️ | 🛑  |NO❗️ |
| └ | cancelActiveSale | External ❗️ | 🛑  |NO❗️ |
| └ | setVacationMode | External ❗️ | 🛑  |NO❗️ |
| └ | disputedSaleReply | External ❗️ | 🛑  |NO❗️ |
| └ | returnItem | External ❗️ | 🛑  | onlyRole |
| └ | removeMaliciousSale | External ❗️ | 🛑  | onlyRole |
| └ | closeSale | Public ❗️ | 🛑  |NO❗️ |
| └ | blacklist | Internal 🔒 | 🛑  | |
| └ | reimburse | Internal 🔒 | 🛑  | |
| └ | openDispute | Internal 🔒 | 🛑  | |
| └ | closeDispute | Internal 🔒 | 🛑  | |
| └ | query_dispute | Public ❗️ |   |NO❗️ |
| └ | query_sale | Public ❗️ |   |NO❗️ |
||||||
| **IFP_DAO** | Interface |  |||
| └ | updateConfig | External ❗️ | 🛑  |NO❗️ |
| └ | castVote | External ❗️ | 🛑  |NO❗️ |
| └ | newDispute | External ❗️ | 🛑  |NO❗️ |
| └ | endDispute | External ❗️ | 🛑  |NO❗️ |
| └ | cancelDispute | External ❗️ | 🛑  |NO❗️ |
| └ | checkLottery | External ❗️ | 🛑  |NO❗️ |
||||||
| **IFP_Vault** | Interface |  |||
| └ | doStake | External ❗️ |  💵 |NO❗️ |
| └ | doUnstake | External ❗️ | 🛑  |NO❗️ |
| └ | doLock | External ❗️ | 🛑  |NO❗️ |
| └ | doUnlock | External ❗️ | 🛑  |NO❗️ |
| └ | doSlash | External ❗️ | 🛑  |NO❗️ |
| └ | updateConfig | External ❗️ | 🛑  |NO❗️ |
| └ | claimRewards | External ❗️ | 🛑  |NO❗️ |
||||||
| **FP_Vault** | Implementation | AccessControl |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | doStake | External ❗️ |  💵 |NO❗️ |
| └ | doUnstake | External ❗️ | 🛑  | enoughStaked |
| └ | doLock | External ❗️ | 🛑  | onlyRole enoughStaked |
| └ | doUnlock | External ❗️ | 🛑  | onlyRole |
| └ | doSlash | External ❗️ | 🛑  | onlyRole |
| └ | updateConfig | External ❗️ | 🛑  | onlyRole |
| └ | claimRewards | External ❗️ | 🛑  |NO❗️ |
| └ | distributeSlashing | Internal 🔒 | 🛑  | |
| └ | vaultBalance | Public ❗️ |   |NO❗️ |
| └ | userBalance | Public ❗️ |   |NO❗️ |
| └ | userLockedBalance | Public ❗️ |   |NO❗️ |


 Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |

## Slither Auditoria

![image](https://github.com/richpob/AuditoriaProyectoFinal/assets/133718913/62dbc862-648b-4279-a210-900d9f300128)


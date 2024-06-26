// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;

/**
 * @title Interface of FaillaPop vault
 *     @author Faillapop team :D 
 *     @notice The contract allows anyone to stake and unstake Ether. When a seller publish a new item
 *     in the shop, the funds are locked during the sale. If the user is considered malicious
 *     by the DAO, the funds are slashed. 
 *     @custom:ctf This contract is part of JC's mock-audit exercise at https://github.com/jcr-security/solidity-security-teaching-resources
 */
interface IFP_Vault {
    ///@notice Stake attached funds in the vault for later locking, the users must do it on their own
    function doStake() external payable;

    ///@notice Unstake unlocked funds from the vault, the user must do it on their own
    ///@param amount The amount of funds to unstake
    function doUnstake(uint256 amount) external;

    /**
     * @notice Lock funds for selling purposes, the funds are locked until the sale is completed
     *     @param user The address of the user that is selling
     *     @param amount The amount of funds to lock
     */
    function doLock(address user, uint256 amount) external;

    ///@notice Unlock funds after the sale is completed
    function doUnlock(address user, uint256 amount) external;

    ///@notice Slash funds if the user is considered malicious by the DAO
    ///@param badUser The address of the malicious user to be slashed
    function doSlash(address badUser) external;

    /**
     * @notice Modify configuration parameters, only the owner can do it
     *     @param newDao The address of the DAO contract
     *     @param newShop The address of the Shop contract
     *     @param newNft The address of the powerseller NFT contract
     */
    function updateConfig(address newDao, address newShop, address newNft) external;

    /**
     * @notice Claim rewards generated by slashing malicious users. 
     *     First checks if the user is elegible through the checkPrivilege function that will revert if not.
     */
    function claimRewards() external;
}

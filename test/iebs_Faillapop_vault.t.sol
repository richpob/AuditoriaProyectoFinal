// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/iebs_Faillapop_vault.sol";
import "../src/interfaces/IFP_DAO.sol";
import "../src/interfaces/IFP_Shop.sol";

contract MockNFT {
    function call(bytes memory) external pure returns (bool, bytes memory) {
        return (true, abi.encode(uint256(10))); // Mocked response for totalPowersellers
    }

    function checkPrivilege(address) external pure returns (bool) {
        return true;
    }
}

contract FP_VaultTest is Test {
    FP_Vault fpVault;
    IFP_DAO daoMock;
    IFP_Shop shopMock;
    MockNFT nftMock;

    address daoAddress = address(daoMock);
    address shopAddress = address(shopMock);
    address nftAddress = address(nftMock);
    address user = address(1);

    function setUp() public {
        nftMock = new MockNFT();
        fpVault = new FP_Vault(address(nftMock), shopAddress, daoAddress);

        vm.deal(user, 100 ether); // Give the user some ether to work with
    }

    function testDoStake() public {
        vm.prank(user);
        fpVault.doStake{value: 10 ether}();
        assertEq(fpVault.userBalance(user), 10 ether);
    }

    function testDoUnstake() public {
        vm.prank(user);
        fpVault.doStake{value: 10 ether}();

        vm.prank(user);
        fpVault.doUnstake(5 ether);
        assertEq(fpVault.userBalance(user), 5 ether);
    }

    function testDoLock() public {
        vm.prank(user);
        fpVault.doStake{value: 10 ether}();

        vm.prank(shopAddress);
        fpVault.doLock(user, 5 ether);
        assertEq(fpVault.userLockedBalance(user), 5 ether);
    }

    function testDoUnlock() public {
        vm.prank(user);
        fpVault.doStake{value: 10 ether}();

        vm.prank(shopAddress);
        fpVault.doLock(user, 5 ether);

        vm.prank(shopAddress);
        fpVault.doUnlock(user, 5 ether);
        assertEq(fpVault.userLockedBalance(user), 0);
    }

    function testDoSlash() public {
        vm.prank(user);
        fpVault.doStake{value: 10 ether}();

        vm.prank(daoAddress);
        fpVault.doSlash(user);
        assertEq(fpVault.userBalance(user), 0);
        assertEq(fpVault.userLockedBalance(user), 0);
    }

    function testUpdateConfig() public {
        address newDao = address(2);
        address newShop = address(3);
        address newNft = address(4);

        vm.prank(daoAddress);
        fpVault.grantRole(fpVault.ADMIN_ROLE(), address(this));

        fpVault.updateConfig(newDao, newShop, newNft);

        assertEq(address(fpVault.daoContract()), newDao);
        assertEq(address(fpVault.shopContract()), newShop);
        assertEq(fpVault.nftContract(), newNft);
    }

    function testClaimRewards() public {
        vm.prank(user);
        fpVault.doStake{value: 10 ether}();

        vm.prank(daoAddress);
        fpVault.doSlash(user);

        vm.prank(user);
        fpVault.claimRewards();

        assertEq(fpVault.rewardsClaimed(user), fpVault.max_claimable_amount());
    }
}

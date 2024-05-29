// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/iebs_Faillapop_DAO.sol";
import "../src/interfaces/IFP_Shop.sol";
import "../src/interfaces/IFP_NFT.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract FP_DAOTest is Test {
    FP_DAO fpDao;
    IFP_Shop shopMock;
    IFP_NFT nftMock;
    IERC20 tokenMock;

    address shopAddress = address(1);
    address nftAddress = address(2);
    address tokenAddress = address(3);
    address user = address(4);

    function setUp() public {
        shopMock = IFP_Shop(shopAddress);
        nftMock = IFP_NFT(nftAddress);
        tokenMock = IERC20(tokenAddress);
        fpDao = new FP_DAO("password", shopAddress, nftAddress, tokenAddress);

        vm.prank(shopAddress);
        fpDao.newDispute(1, "Buyer Reason", "Seller Reason");
    }

    function testUpdateConfig() public {
        vm.prank(shopAddress);
        fpDao.updateConfig("password", "newPassword", address(5), address(6));

        assertEq(fpDao.shop_addr(), address(5));
    }

    function testCastVote() public {
        vm.prank(user);
        tokenMock.transfer(user, 100);
        vm.prank(user);
        fpDao.castVote(0, true);

        (,, uint256 votesFor, uint256 votesAgainst,) = fpDao.query_dispute(0);
        assertEq(votesFor, 100);
        assertEq(votesAgainst, 0);
    }

    function testEndDispute() public {
        vm.prank(user);
        tokenMock.transfer(user, 100);
        vm.prank(user);
        fpDao.castVote(0, true);

        vm.prank(shopAddress);
        fpDao.endDispute(0);

        (uint8 result) = fpDao.disputeResult(0);
        assertEq(result, 1); // 1 means buyer wins
    }

    function testCheckLottery() public {
        vm.prank(user);
        tokenMock.transfer(user, 100);
        vm.prank(user);
        fpDao.castVote(0, true);

        vm.prank(shopAddress);
        fpDao.endDispute(0);

        vm.prank(user);
        fpDao.checkLottery(0);
    }
}

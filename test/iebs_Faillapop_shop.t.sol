// File: test/FP_Shop.t.sol
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/iebs_Faillapop_shop.sol";
import "../src/interfaces/IFP_DAO.sol";
import "../src/interfaces/IFP_Vault.sol";

contract FP_ShopTest is Test {
    FP_Shop fpShop;
    IFP_DAO daoMock;
    IFP_Vault vaultMock;

    address daoAddress = address(1);
    address vaultAddress = address(2);
    address seller = address(3);
    address buyer = address(4);

    function setUp() public {
        daoMock = IFP_DAO(daoAddress);
        vaultMock = IFP_Vault(vaultAddress);
        fpShop = new FP_Shop(daoAddress, vaultAddress);

        vm.prank(daoAddress);
        fpShop.grantRole(fpShop.DAO_ROLE(), daoAddress);

        vm.prank(seller);
        vaultMock.doLock(seller, 1 ether);
    }

    function testCreateSale() public {
        vm.startPrank(seller);
        fpShop.newSale(0, "Test Item", "This is a test item", 1 ether);
        FP_Shop.Sale memory sale = fpShop.query_sale(0);
        assertEq(sale.seller, seller);
        assertEq(sale.title, "Test Item");
        assertEq(sale.price, 1 ether);
        vm.stopPrank();
    }

    function testBuyItem() public {
        vm.startPrank(seller);
        fpShop.newSale(0, "Test Item", "This is a test item", 1 ether);
        vm.stopPrank();

        vm.deal(buyer, 2 ether);
        vm.prank(buyer);
        fpShop.doBuy{value: 1 ether}(0);
        FP_Shop.Sale memory sale = fpShop.query_sale(0);
        assertEq(sale.buyer, buyer);
        assertEq(sale.state, FP_Shop.State.Pending);
    }

    function testDisputeSale() public {
        vm.startPrank(seller);
        fpShop.newSale(0, "Test Item", "This is a test item", 1 ether);
        vm.stopPrank();

        vm.deal(buyer, 2 ether);
        vm.prank(buyer);
        fpShop.doBuy{value: 1 ether}(0);

        vm.prank(buyer);
        fpShop.disputeSale(0, "Item not as described");
        FP_Shop.Sale memory sale = fpShop.query_sale(0);
        assertEq(sale.state, FP_Shop.State.Disputed);
    }

    function testItemReceived() public {
        vm.startPrank(seller);
        fpShop.newSale(0, "Test Item", "This is a test item", 1 ether);
        vm.stopPrank();

        vm.deal(buyer, 2 ether);
        vm.prank(buyer);
        fpShop.doBuy{value: 1 ether}(0);

        vm.prank(buyer);
        fpShop.itemReceived(0);
        FP_Shop.Sale memory sale = fpShop.query_sale(0);
        assertEq(sale.state, FP_Shop.State.Sold);
    }
}

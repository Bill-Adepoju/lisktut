// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.20;

import {Test,console} from "forge-std/Test.sol";
import {NFT} from "../src/NFT.sol";

contract NFTTest is Test {
    NFT public lsk;

    address alice = makeAddr("alice");
    address bob = makeAddr("bob");

    function setUp() public{
        lsk = new NFT();
    }

    function testMintPass() public {
        lsk.mint(alice);
        lsk.mint(bob);
    }

    function testMintFail() public{
        assertEq(alice, bob);
    }
}
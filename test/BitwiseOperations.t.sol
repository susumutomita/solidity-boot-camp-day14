// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {BitwiseOperations} from "../src/BitwiseOperations.sol";

contract CounterTest is Test {
    BitwiseOperations public bitwiseOperations;

    function setUp() public {
        bitwiseOperations = new BitwiseOperations();
    }

    function test_0xde() public view {
        uint256 deValue = 100651486825157721501865874785935801379319359184012953785965706769510029551182;

        uint256 result = bitwiseOperations.checkAndUpdateX(deValue);
        assertEq(result, 1);
    }

    function test_0xbe() public view {
        uint256 beValue = 86177475670493197073919501659849812897660611100807883281033508768520888346190;
        uint256 result = bitwiseOperations.checkAndUpdateX(beValue);
        assertEq(result, 1);
    }
}

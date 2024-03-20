// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {BitwiseOperationsYui} from "../src/BitwiseOperationsYui.sol";

contract BitwiseOperationsYuiTest is Test {
    BitwiseOperationsYui public bitwiseOperationsYui;

    function setUp() public {
        bitwiseOperationsYui = new BitwiseOperationsYui();
    }

    function test_0xde() public {
        // 0xdeで始まる値を設定
        uint256 deValue = 100651486825157721501865874785935801379319359184012953785965706769510029551182;
        uint256 expected = deValue * 4; // 期待する結果は4倍

        uint256 result = bitwiseOperationsYui.checkAndUpdateX(deValue);
        assertEq(
            result,
            expected,
            "The result should be 4 times the input for 0xde"
        );
    }

    function test_0xbe() public {
        // 0xbeで始まる値を設定
        uint256 beValue = 86177475670493197073919501659849812897660611100807883281033508768520888346190;
        uint256 expected = beValue / 4; // 期待する結果は1/4

        uint256 result = bitwiseOperationsYui.checkAndUpdateX(beValue);
        assertEq(
            result,
            expected,
            "The result should be 1/4 of the input for 0xbe"
        );
    }
}

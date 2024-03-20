// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract BitwiseOperations {
    function checkAndUpdateX(uint256 x) external pure returns (uint256) {
        // 最上位のバイトをチェック
        bytes1 highestByte = bytes1(uint8(x >> 248));
        if (highestByte == 0xde) {
            // 0xdeで始まる場合、xを4倍に
            x *= 4;
        } else if (highestByte == 0xbe) {
            // 0xbeで始まる場合、xを4で割る
            x /= 4;
        }
        return x;
    }
}
